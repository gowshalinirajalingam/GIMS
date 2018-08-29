using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EwingInventory
{
    public partial class customerlist : Form
    {
        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public customerlist()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
        }

        private void customerlist_Load(object sender, EventArgs e)
        {
            cnn.Open();
            string query = "select * from customer";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportcustomer1.Load("CrystalReportcustomer.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportcustomer1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportcustomer1;
            cnn.Close();
        }
    }
}
