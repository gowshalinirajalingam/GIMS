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

    public partial class rptfrm_empass : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);
        public rptfrm_empass()
        {
            InitializeComponent();
        }

        private void rptfrm_empass_Load(object sender, EventArgs e)
        {
            string q = "select * from manemp;";
            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            //da.SelectCommand.Parameters.Add("@sid", MySqlDbType.Int32).Value = Convert.ToInt32(cuid);

            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_empass cpt = new Reports.cr_empass();
                cpt.Database.Tables["manemp"].SetDataSource(dt);

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
