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
    public partial class rptfrmStaffDetails : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);

        public rptfrmStaffDetails()
        {
            InitializeComponent();
        }

        private void rptfrmStaffDetails_Load(object sender, EventArgs e)
        {
            string q1 = "SELECT * FROM staff WHERE sId > 0;";

            MySqlDataAdapter da1 = new MySqlDataAdapter(q1, conn);

            DataTable dt1 = new DataTable();

            try
            {
                conn.Open();
                da1.Fill(dt1);

                Reports.cr_StaffDetails cpt = new Reports.cr_StaffDetails();
                cpt.Database.Tables["stf"].SetDataSource(dt1);

                crvStdet.ReportSource = null;
                crvStdet.ReportSource = cpt;


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
