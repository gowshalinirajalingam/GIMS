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
    public partial class CRForm : Form
    {

        MySqlConnection cnn = new MySqlConnection("Server=localhost;Database=inventory;Uid=root;Pwd=;");
        public string invno;
        public CRForm()
        {
            InitializeComponent();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            
        }
    }
}
