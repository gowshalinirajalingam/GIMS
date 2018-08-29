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
using CrystalDecisions.CrystalReports.Engine;


namespace EwingInventory
{
    public partial class ordersReport : Form
    {
        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string invno;
        public ordersReport()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            crystalReportViewer1.Show();
            string from = datefrom.Text;
            string to = dateTo.Text;
            cnn.Open();
            string query = "select * from orders ,oitems where orders.ono = oitems.ono and orders.date BETWEEN '" + from + "' and '" + to + "'";//where orders.date>'" + from + "'; ";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            ordersCrystalReport1.Load("ordersCrystalReport.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            ordersCrystalReport1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = ordersCrystalReport1;
            cnn.Close();
        }
    }
}
