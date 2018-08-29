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
    public partial class rptfrm_Requests : Form
    {
        public static Homepage home = new Homepage();
        MySqlConnection conn = new MySqlConnection(home.connString);

        bool pending, approved, rejected, loan, hd, dayoff, sadv;

        public rptfrm_Requests(bool p, bool a, bool r, bool l, bool h, bool d,bool s)
        {
            this.pending = p;
            this.approved = a;
            this.rejected = r;
            this.loan = r;
            this.hd = h;
            this.dayoff = d;
            this.sadv = s;

            InitializeComponent();
        }

        private void rptfrm_Requests_Load(object sender, EventArgs e)
        {
            string q = "SELECT * FROM requests WHERE ";

            if (pending)
                q += "status = 'PENDING' OR ";
            if (approved)
                q += "status = 'APPROVED' OR ";
            if (rejected)
                q += "status = 'REJECTED' OR ";

            if (loan)
                q += "type = 'Loan' OR ";
            if (hd)
                q += "type = 'Half Day' OR ";
            if (dayoff)
                q += "type = 'Day Off' OR ";
            if (sadv)
                q += "type = 'Salary Advance'";

            MessageBox.Show(q);

            MySqlDataAdapter da = new MySqlDataAdapter(q, conn);
            DataTable dt = new DataTable();

            try
            {
                conn.Open();
                da.Fill(dt);

                Reports.cr_Reqrpt cpt = new Reports.cr_Reqrpt();
                cpt.Database.Tables["req"].SetDataSource(dt);

                crvReqdet.ReportSource = null;
                crvReqdet.ReportSource = cpt;


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
