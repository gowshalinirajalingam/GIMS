namespace EwingInventory
{
    partial class Ageing
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
            this.crystalReportViewer1 = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.CrystalReportAgeing1 = new EwingInventory.CrystalReportAgeing();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxcomrpt = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.CrystalReportAgeing2 = new EwingInventory.CrystalReportAgeing();
            this.SuspendLayout();
            // 
            // crystalReportViewer1
            // 
            this.crystalReportViewer1.ActiveViewIndex = 0;
            this.crystalReportViewer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crystalReportViewer1.Cursor = System.Windows.Forms.Cursors.Default;
            this.crystalReportViewer1.Location = new System.Drawing.Point(12, 41);
            this.crystalReportViewer1.Name = "crystalReportViewer1";
            this.crystalReportViewer1.ReportSource = this.CrystalReportAgeing2;
            this.crystalReportViewer1.Size = new System.Drawing.Size(1077, 627);
            this.crystalReportViewer1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Company name";
            // 
            // textBoxcomrpt
            // 
            this.textBoxcomrpt.Location = new System.Drawing.Point(98, 12);
            this.textBoxcomrpt.Name = "textBoxcomrpt";
            this.textBoxcomrpt.Size = new System.Drawing.Size(100, 20);
            this.textBoxcomrpt.TabIndex = 2;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(204, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Print";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(334, 12);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 4;
            this.button2.Text = "Print All";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Ageing
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1042, 680);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBoxcomrpt);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.crystalReportViewer1);
            this.Name = "Ageing";
            this.Text = "Ageing";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Ageing_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crystalReportViewer1;
        private CrystalReportAgeing CrystalReportAgeing1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxcomrpt;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private CrystalReportAgeing CrystalReportAgeing2;
    }
}