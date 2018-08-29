namespace EwingInventory.ReportForms
{
    partial class rptfrm_Requests
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
            this.crvReqdet = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.SuspendLayout();
            // 
            // crvReqdet
            // 
            this.crvReqdet.ActiveViewIndex = -1;
            this.crvReqdet.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvReqdet.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvReqdet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crvReqdet.Location = new System.Drawing.Point(0, 0);
            this.crvReqdet.Name = "crvReqdet";
            this.crvReqdet.Size = new System.Drawing.Size(827, 442);
            this.crvReqdet.TabIndex = 0;
            // 
            // rptfrm_Requests
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(827, 442);
            this.Controls.Add(this.crvReqdet);
            this.Name = "rptfrm_Requests";
            this.Text = "Request Details";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.rptfrm_Requests_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvReqdet;
    }
}