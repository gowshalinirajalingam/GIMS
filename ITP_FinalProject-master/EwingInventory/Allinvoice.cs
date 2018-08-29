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
   
    public partial class Allinvoice : Form
    {
        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string cid;
        public string createdDate;
        public Allinvoice()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            cid = txtcidrpt.Text;
            cnn.Open();
            string query = "select * from invoice i,customer c,payment p where i.invoiceNo=p.invoiceNo and i.cid=c.cid and c.cid='" + cid + "' ; ";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportallinvoice1.Load("CrystalReportallinvoice.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportallinvoice1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportallinvoice1;
            cnn.Close();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            createdDate = createddatepick.Text;
            cnn.Open();
            string query = "select * from invoice i,customer c,payment p where i.invoiceNo=p.invoiceNo and i.cid=c.cid and i.createdDate='" + createdDate + "' ; ";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportallinvoice1.Load("CrystalReportallinvoice.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportallinvoice1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportallinvoice1;
            cnn.Close();

        }

        private void Allinvoice_Load(object sender, EventArgs e)
        {
            cnn.Open();
            string query = "select * from invoice i,customer c,payment p where i.invoiceNo=p.invoiceNo and i.cid=c.cid  ; ";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportallinvoice1.Load("CrystalReportallinvoice.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportallinvoice1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportallinvoice1;
            cnn.Close();
        }
    }
}
