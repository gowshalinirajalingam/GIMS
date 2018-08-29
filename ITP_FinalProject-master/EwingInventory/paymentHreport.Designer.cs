namespace EwingInventory
{
    partial class paymentHreport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label18 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.dateTo = new System.Windows.Forms.DateTimePicker();
            this.datefrom = new System.Windows.Forms.DateTimePicker();
            this.button2 = new System.Windows.Forms.Button();
            this.crystalReportViewer1 = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.paymentHCrystalReport11 = new EwingInventory.paymentHCrystalReport1();
            this.AssetReport11 = new EwingInventory.AssetReport1();
            this.SuspendLayout();
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.Location = new System.Drawing.Point(502, 14);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(26, 19);
            this.label18.TabIndex = 25;
            this.label18.Text = "To";
            this.label18.Click += new System.EventHandler(this.label18_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(221, 12);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(47, 19);
            this.label13.TabIndex = 24;
            this.label13.Text = "From";
            this.label13.Click += new System.EventHandler(this.label13_Click);
            // 
            // dateTo
            // 
            this.dateTo.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTo.Location = new System.Drawing.Point(557, 14);
            this.dateTo.Name = "dateTo";
            this.dateTo.Size = new System.Drawing.Size(200, 20);
            this.dateTo.TabIndex = 23;
            this.dateTo.ValueChanged += new System.EventHandler(this.dateTimePicker2_ValueChanged);
            // 
            // datefrom
            // 
            this.datefrom.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.datefrom.Location = new System.Drawing.Point(285, 12);
            this.datefrom.Name = "datefrom";
            this.datefrom.Size = new System.Drawing.Size(200, 20);
            this.datefrom.TabIndex = 22;
            this.datefrom.ValueChanged += new System.EventHandler(this.datefrom_ValueChanged);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.button2.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.button2.Location = new System.Drawing.Point(812, 6);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(85, 39);
            this.button2.TabIndex = 90;
            this.button2.Text = "Enter";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // crystalReportViewer1
            // 
            this.crystalReportViewer1.ActiveViewIndex = 0;
            this.crystalReportViewer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crystalReportViewer1.Cursor = System.Windows.Forms.Cursors.Default;
            this.crystalReportViewer1.Location = new System.Drawing.Point(-1, 57);
            this.crystalReportViewer1.Name = "crystalReportViewer1";
            this.crystalReportViewer1.ReportSource = this.paymentHCrystalReport11;
            this.crystalReportViewer1.Size = new System.Drawing.Size(1085, 610);
            this.crystalReportViewer1.TabIndex = 0;
            this.crystalReportViewer1.Visible = false;
            // 
            // paymentHreport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1084, 664);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.dateTo);
            this.Controls.Add(this.datefrom);
            this.Controls.Add(this.crystalReportViewer1);
            this.Name = "paymentHreport";
            this.Text = "paymentHreport";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crystalReportViewer1;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DateTimePicker dateTo;
        private System.Windows.Forms.DateTimePicker datefrom;
        private System.Windows.Forms.Button button2;
        private paymentHCrystalReport1 paymentHCrystalReport11;
        private AssetReport1 AssetReport11;
    }
}