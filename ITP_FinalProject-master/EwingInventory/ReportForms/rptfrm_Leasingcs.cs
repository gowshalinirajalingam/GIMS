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
    public partial class rptfrm_Leasingcs : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);

        string to;
        public rptfrm_Leasingcs(string todate)
        {
            this.to = todate;
            InitializeComponent();
        }

        private void rptfrm_Leasingcs_Load(object sender, EventArgs e)
        {
            //string q = "SELECT * FROM manufactraw WHERE sId=@sid ORDER BY date DESC;";
            string q = "select * from leasing_details WHERE EndDate < '"+this.to+"';";
            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            //da.SelectCommand.Parameters.Add("@sid", MySqlDbType.Int32).Value = Convert.ToInt32(cuid);

            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_leasing1 cpt = new Reports.cr_leasing1();
                cpt.Database.Tables["leasing"].SetDataSource(dt);

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
