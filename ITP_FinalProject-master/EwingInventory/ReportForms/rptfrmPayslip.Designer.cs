namespace EwingInventory.ReportForms
{
    partial class rptfrmPayslip
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
            this.crvpayslip = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.SuspendLayout();
            // 
            // crvpayslip
            // 
            this.crvpayslip.ActiveViewIndex = -1;
            this.crvpayslip.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvpayslip.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvpayslip.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crvpayslip.Location = new System.Drawing.Point(0, 0);
            this.crvpayslip.Name = "crvpayslip";
            this.crvpayslip.Size = new System.Drawing.Size(1078, 496);
            this.crvpayslip.TabIndex = 0;
            // 
            // rptfrmPayslip
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1078, 496);
            this.Controls.Add(this.crvpayslip);
            this.Name = "rptfrmPayslip";
            this.Text = "PaySlip";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.rptfrmPayslip_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvpayslip;
    }
}