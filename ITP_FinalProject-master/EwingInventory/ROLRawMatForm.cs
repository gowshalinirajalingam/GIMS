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
    
    public partial class ROLRawMatForm : Form
    {

        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string date1;
        public ROLRawMatForm()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            //date1 = dateTimePicker1.Text;
            //cnn.Open();
            //string query = "select * from jobs where startingDate>'" + date1 + "' ;";
            //MySqlCommand cmd = new MySqlCommand(query, cnn);
            //// MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            //DataSet dat = new DataSet();
            //MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            //cmd1.Fill(dat, "DataTable1");
            //ROLRawMatForm.Load("ROLRawMatForm.rpt");
            ////crystalReportViewer1.Load("CrystalReport3");
            //ROLRawMatForm.SetDataSource(dat);
            //crystalReportViewer1.ReportSource = ROLRawMatForm;
            //cnn.Close();
        }
    }
}
