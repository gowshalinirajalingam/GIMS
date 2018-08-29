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
    public partial class Ageing : Form
    {
        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string cid1;
        public Ageing()
        {
            InitializeComponent();
        }
        public Ageing(string cid)
        {
            InitializeComponent();
            this.cid1 = cid;

        }
        private bool iscompanyExist(string comname)
        {
            string query = "select * from Ageingrpt where Companyname='" + comname + "' ;";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            MySqlDataReader reader1;
            cnn.Open();
            reader1 = cmd.ExecuteReader();

            if (reader1.HasRows)
            {
                cnn.Close();

                return true;
            }
            else
            {

                cnn.Close();
                return false;
            }


        }
        private void Ageingcalc1()
        {
            string duedate = null;
            string compname = null, outstanding = null;


            //90<
            string query = "select c.address1,sum(p.OutstandingAmt) as outstanding from invoice i,payment p,customer c where p.invoiceNo=i.invoiceNo and i.cid=c.cid and p.OutstandingAmt>0 and i.dueDate<'" + DateTime.Now.ToString("yyyy-MM-dd") + "'   group by c.address1 ;";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            MySqlDataReader reader;
            cnn.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt.Rows)
            {
                Boolean val;
                if (val = iscompanyExist(row["address1"].ToString()) == true)
                {

                    cnn.Open();
                    query = "update Ageingrpt set a90g='" + row["outstanding"].ToString() + "' where Companyname='" + row["address1"].ToString() + "';";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }
                else
                {

                    cnn.Open();
                    query = "insert into Ageingrpt  values('" + row["address1"].ToString() + "',0,0,0,0,'" + row["outstanding"].ToString() + "',0); ";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }

            }


            //current 
            query = "select c.address1,sum(p.OutstandingAmt) as outstanding from invoice i,payment p,customer c where p.invoiceNo=i.invoiceNo and i.cid=c.cid and p.OutstandingAmt>0 and i.dueDate='" + DateTime.Now.ToString("yyyy-MM-dd") + "'   group by c.address1 ;";
            cmd = new MySqlCommand(query, cnn);

            cnn.Open();
            da = new MySqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt1.Rows)
            {
                Boolean val;
                if (val = iscompanyExist(row["address1"].ToString()) == true)
                {
                    cnn.Open();

                    query = "update Ageingrpt set current='" + row["outstanding"].ToString() + "' where Companyname='" + row["address1"].ToString() + "';";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }
                else
                {

                    cnn.Open();

                    query = "insert into Ageingrpt  values('" + row["address1"].ToString() + "','" + row["outstanding"].ToString() + "',0,0,0,0,0); ";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }


            }
            //1-30
            query = "select c.address1,sum(p.OutstandingAmt) as outstanding from invoice i,payment p,customer c where p.invoiceNo=i.invoiceNo and i.cid=c.cid and p.OutstandingAmt>0 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)<=30 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)>=1  group by c.address1 ;";
            cmd = new MySqlCommand(query, cnn);

            cnn.Open();
            da = new MySqlDataAdapter(cmd);
            DataTable dt2 = new DataTable();
            da.Fill(dt2);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt2.Rows)
            {
                Boolean val;
                if (val = iscompanyExist(row["address1"].ToString()) == true)
                {

                    cnn.Open();
                    query = "update Ageingrpt set a1_30='" + row["outstanding"].ToString() + "' where Companyname='" + row["address1"].ToString() + "';";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }
                else
                {
                    cnn.Open();

                    query = "insert into Ageingrpt  values('" + row["address1"].ToString() + "',0,'" + row["outstanding"].ToString() + "',0,0,0,0); ";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }


            }

            //31-60
            query = "select c.address1,sum(p.OutstandingAmt) as outstanding from invoice i,payment p,customer c where p.invoiceNo=i.invoiceNo and i.cid=c.cid and p.OutstandingAmt>0 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)<=60 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)>=31  group by c.address1 ;";
            cmd = new MySqlCommand(query, cnn);

            cnn.Open();
            da = new MySqlDataAdapter(cmd);
            DataTable dt3 = new DataTable();
            da.Fill(dt3);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt3.Rows)
            {
                Boolean val;
                if (val = iscompanyExist(row["address1"].ToString()) == true)
                {

                    cnn.Open();

                    query = "update Ageingrpt set a31_60='" + row["outstanding"].ToString() + "' where Companyname='" + row["address1"].ToString() + "';";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }
                else
                {
                    cnn.Open();

                    query = "insert into Ageingrpt  values('" + row["address1"].ToString() + "',0,0,'" + row["outstanding"].ToString() + "',0,0,0); ";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }


            }

            //61-90
            query = "select c.address1,sum(p.OutstandingAmt) as outstanding from invoice i,payment p,customer c where p.invoiceNo=i.invoiceNo and i.cid=c.cid and p.OutstandingAmt>0 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)<=90 and datediff('" + DateTime.Now.ToString("yyyy-MM-dd") + "',dueDate)>=61  group by c.address1 ;";
            cmd = new MySqlCommand(query, cnn);

            cnn.Open();
            da = new MySqlDataAdapter(cmd);
            DataTable dt4 = new DataTable();
            da.Fill(dt4);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt4.Rows)
            {
                Boolean val;
                if (val = iscompanyExist(row["address1"].ToString()) == true)
                {

                    cnn.Open();

                    query = "update Ageingrpt set a61_90='" + row["outstanding"].ToString() + "' where Companyname='" + row["address1"].ToString() + "';";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }
                else
                {
                    cnn.Open();

                    query = "insert into Ageingrpt  values('" + row["address1"].ToString() + "',0,0,0,'" + row["outstanding"].ToString() + "',0,0); ";
                    cmd = new MySqlCommand(query, cnn);
                    MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                    cnn.Close();
                }


            }

            //total
            query = "select * from Ageingrpt ";
            cmd = new MySqlCommand(query, cnn);

            cnn.Open();
            da = new MySqlDataAdapter(cmd);
            DataTable dt5 = new DataTable();
            da.Fill(dt5);
            da.Dispose();
            cnn.Close();

            foreach (DataRow row in dt5.Rows)
            {
                double total = Convert.ToDouble(row["current"].ToString()) + Convert.ToDouble(row["a1_30"].ToString()) + Convert.ToDouble(row["a31_60"].ToString()) + Convert.ToDouble(row["a61_90"].ToString());
               
                cnn.Open();

                query = "update Ageingrpt set total='" + total.ToString() + "' where Companyname='" + row["Companyname"].ToString() + "';";
                cmd = new MySqlCommand(query, cnn);
                MySqlDataReader reader2 = cmd.ExecuteReader(); // query will be executed and data saved to the db
                cnn.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void Ageing_Load(object sender, EventArgs e)
        {
            Ageingcalc1();

            cnn.Open();
            string query = "select * from Ageingrpt;";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportAgeing1.Load("CrystalReportAgeing.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportAgeing1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportAgeing1;
            cnn.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            string compname = textBoxcomrpt.Text;

            cnn.Open();
            string query = "select * from Ageingrpt where Companyname='"+compname+"';";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportAgeing1.Load("CrystalReportAgeing.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportAgeing1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportAgeing1;
            cnn.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Ageingcalc1();

            cnn.Open();
            string query = "select * from Ageingrpt;";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportAgeing1.Load("CrystalReportAgeing.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportAgeing1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportAgeing1;
            cnn.Close();
        }
    }
}
