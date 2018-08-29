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
    public partial class rptfrm_ManufactItem1 : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);
        string fromdate;
        string todate;
   //     string status2=null;

        public rptfrm_ManufactItem1(string from, string to)
        {
            this.fromdate = from;
            this.todate = to;
   //         string status2 = status;

            InitializeComponent();
        }

        private void rptfrm_ManufactItem1_Load(object sender, EventArgs e)
        {
           // string q = "select * from manufactitem WHERE deliverDate BETWEEN '" + this.fromdate + "' and '" + this.todate + "' AND deliverStatus like '" + this.status2 + "';";
            string q = "select * from manufactitem WHERE deliverDate BETWEEN '" + this.fromdate + "' and '" + this.todate + "' ;";
            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            //da.SelectCommand.Parameters.Add("@sid", MySqlDbType.Int32).Value = Convert.ToInt32(cuid);

            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_ManufactItem1 cpt = new Reports.cr_ManufactItem1();
                cpt.Database.Tables["manufactitem"].SetDataSource(dt);

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
