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
    public partial class newinvoice : Form
    {
        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string invno;
        public newinvoice()
        {
            InitializeComponent();
        }
        public newinvoice(string invoiceno)
        {
            InitializeComponent();
            this.invno = invoiceno;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            invno = txtinv.Text;
            cnn.Open();
            string query = "select * from invoice i,deliverydetails d,customer c,orderdetails o,item it where o.invoiceNo=i.invoiceNo and o.itemNo=it.itemCode and d.CID=i.cid and d.showRoomLocation=i.deliveryTo and i.cid=c.cid and i.invoiceNo='" + invno + "' ; ";
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            // MySqlDataReader reader = cmd.ExecuteReader(); // query will be executed and data saved to the db
            DataSet dat = new DataSet();
            MySqlDataAdapter cmd1 = new MySqlDataAdapter(query, cnn);
            cmd1.Fill(dat, "DataTable1");
            CrystalReportcinvoice1.Load("CrystalReportcinvoice.rpt");
            //crystalReportViewer1.Load("CrystalReport3");
            CrystalReportcinvoice1.SetDataSource(dat);
            crystalReportViewer1.ReportSource = CrystalReportcinvoice1;
            cnn.Close();

        }

        private void newinvoice_Load(object sender, EventArgs e)
        {
            txtinv.Text = invno;
        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
