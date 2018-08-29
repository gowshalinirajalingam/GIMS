namespace EwingInventory
{
    partial class CRForm
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
            this.CRViewer1 = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.ManufactReport11 = new EwingInventory.ManufactReport1();
            this.SuspendLayout();
            // 
            // CRViewer1
            // 
            this.CRViewer1.ActiveViewIndex = 0;
            this.CRViewer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.CRViewer1.Cursor = System.Windows.Forms.Cursors.Default;
            this.CRViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CRViewer1.Location = new System.Drawing.Point(0, 0);
            this.CRViewer1.Name = "CRViewer1";
            this.CRViewer1.ReportSource = this.ManufactReport11;
            this.CRViewer1.Size = new System.Drawing.Size(832, 504);
            this.CRViewer1.TabIndex = 0;
            // 
            // CRForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(832, 504);
            this.Controls.Add(this.CRViewer1);
            this.Name = "CRForm";
            this.Text = "CRForm";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer CRViewer1;
        private ManufactReport1 ManufactReport11;
    }
}