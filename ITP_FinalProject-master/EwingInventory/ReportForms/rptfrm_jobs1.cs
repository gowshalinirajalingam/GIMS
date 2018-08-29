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
    public partial class rptfrm_jobs1 : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);
        string fromdate;
        string todate;

        public rptfrm_jobs1(string from, string to)
        {
            this.fromdate = from;
            this.todate = to;

            InitializeComponent();
        }

        private void rptfrm_jobs1_Load(object sender, EventArgs e)
        {
            //string q = "SELECT * FROM manufactraw WHERE sId=@sid ORDER BY date DESC;";
            string q = "select * from jobs WHERE startingDate BETWEEN '"+this.fromdate+"' and '"+this.todate+"';";
            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            //da.SelectCommand.Parameters.Add("@sid", MySqlDbType.Int32).Value = Convert.ToInt32(cuid);

            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_jobs1 cpt = new Reports.cr_jobs1();
                cpt.Database.Tables["jobs"].SetDataSource(dt);

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
