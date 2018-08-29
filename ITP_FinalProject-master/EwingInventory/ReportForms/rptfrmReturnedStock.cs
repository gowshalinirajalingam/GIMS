using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace EwingInventory.ReportForms
{
    public partial class rptfrmReturnedStock : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);

        public rptfrmReturnedStock()
        {
            InitializeComponent();
        }

        private void rptfrmReturnedStock_Load(object sender, EventArgs e)
        {
            string q = "SELECT * FROM returnstock;";
            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_retstocks cpt = new Reports.cr_retstocks();
                cpt.Database.Tables["retStock"].SetDataSource(dt);

                crystalReportViewer1.ReportSource = null;
                crystalReportViewer1.ReportSource = cpt;


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
