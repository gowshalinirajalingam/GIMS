namespace EwingInventory
{
    partial class CRForm2
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
            this.button2 = new System.Windows.Forms.Button();
            this.label18 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.dateTo = new System.Windows.Forms.DateTimePicker();
            this.dateFrom = new System.Windows.Forms.DateTimePicker();
            this.crystalReportViewer1 = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.ManufactReport21 = new EwingInventory.ManufactReport2();
            this.SuspendLayout();
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.button2.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.button2.Location = new System.Drawing.Point(627, 14);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(85, 39);
            this.button2.TabIndex = 95;
            this.button2.Text = "Generate";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.Location = new System.Drawing.Point(317, 22);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(26, 19);
            this.label18.TabIndex = 94;
            this.label18.Text = "To";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Cambria", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(36, 20);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(47, 19);
            this.label13.TabIndex = 93;
            this.label13.Text = "From";
            // 
            // dateTo
            // 
            this.dateTo.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTo.Location = new System.Drawing.Point(372, 22);
            this.dateTo.Name = "dateTo";
            this.dateTo.Size = new System.Drawing.Size(200, 20);
            this.dateTo.TabIndex = 92;
            // 
            // dateFrom
            // 
            this.dateFrom.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateFrom.Location = new System.Drawing.Point(100, 20);
            this.dateFrom.Name = "dateFrom";
            this.dateFrom.Size = new System.Drawing.Size(200, 20);
            this.dateFrom.TabIndex = 91;
            // 
            // crystalReportViewer1
            // 
            this.crystalReportViewer1.ActiveViewIndex = 0;
            this.crystalReportViewer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crystalReportViewer1.Cursor = System.Windows.Forms.Cursors.Default;
            this.crystalReportViewer1.Location = new System.Drawing.Point(0, 62);
            this.crystalReportViewer1.Name = "crystalReportViewer1";
            this.crystalReportViewer1.ReportSource = this.ManufactReport21;
            this.crystalReportViewer1.Size = new System.Drawing.Size(821, 420);
            this.crystalReportViewer1.TabIndex = 0;
            this.crystalReportViewer1.Visible = false;
            // 
            // CRForm2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(820, 480);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.dateTo);
            this.Controls.Add(this.dateFrom);
            this.Controls.Add(this.crystalReportViewer1);
            this.Name = "CRForm2";
            this.Text = "CRForm2";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crystalReportViewer1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DateTimePicker dateTo;
        private System.Windows.Forms.DateTimePicker dateFrom;
        private ManufactReport2 ManufactReport21;
    }
}