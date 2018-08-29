namespace EwingInventory.ReportForms
{
    partial class rptfrmStaffDetails
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
            this.crvStdet = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.SuspendLayout();
            // 
            // crvStdet
            // 
            this.crvStdet.ActiveViewIndex = -1;
            this.crvStdet.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvStdet.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvStdet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crvStdet.Location = new System.Drawing.Point(0, 0);
            this.crvStdet.Name = "crvStdet";
            this.crvStdet.Size = new System.Drawing.Size(884, 466);
            this.crvStdet.TabIndex = 0;
            // 
            // rptfrmStaffDetails
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(884, 466);
            this.Controls.Add(this.crvStdet);
            this.Name = "rptfrmStaffDetails";
            this.Text = "Staff Details";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.rptfrmStaffDetails_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvStdet;
    }
}