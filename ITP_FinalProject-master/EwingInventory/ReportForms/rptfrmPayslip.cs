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
    public partial class rptfrmPayslip : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);
        string month;

        public rptfrmPayslip(string mo)
        {
            this.month = mo;
            InitializeComponent();
        }

        private void rptfrmPayslip_Load(object sender, EventArgs e)
        {
            string q1 = "SELECT s.sId 'sId', s.month 'month', s.bSal 'bSal', s.incentive 'incentive', s.epf 'epf', s.etf 'etf', s.sAdv 'sAdv',s.loan 'loan',s.nopay 'nopay', "+
                "s.allowance 'allowance', s.comm 'comm', s.gross 'gross', CONCAT(st.fName,' ', st.lname) 'name', d.name 'desig' FROM salary s, staff st, designation d WHERE s.sId = st.sId AND st.desig = d.id AND month = '"+this.month+"'";

            MySqlDataAdapter da1 = new MySqlDataAdapter(q1, conn);

            DataTable dt1 = new DataTable();

            try
            {
                conn.Open();
                da1.Fill(dt1);

                Reports.cr_payslip cpt = new Reports.cr_payslip();
                cpt.Database.Tables["salary"].SetDataSource(dt1);

                crvpayslip.ReportSource = null;
                crvpayslip.ReportSource = cpt;


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
