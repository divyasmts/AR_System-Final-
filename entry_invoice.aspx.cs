using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AR_System.ARS.Modules
{
    public partial class entry_invoice : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustCode();
                VesselCode();
                Calendar1.Visible = false;
            }
        }
        protected void CustCode()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSCustomer", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlCustCode.DataSource = ds;

            ddlCustCode.DataTextField = "CustCode";
            ddlCustCode.DataValueField = "CustCode";
            ddlCustCode.DataBind();
            cn.Close();
        }
        protected void VesselCode()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSVessel", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlVesselCode.DataSource = ds;
            ddlVesselCode.DataTextField = "VslCode";
            ddlVesselCode.DataValueField = "VslCode";
            ddlVesselCode.DataBind();
            cn.Close();
        }

        protected void ddlCustCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSCustomer WHERE CustCode = '" + ddlCustCode.SelectedItem.Value + "' ", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                txtCustName.Text = ds.Tables[0].Rows[i]["CustName"].ToString();
            }
            cn.Close();
        }

        protected void ddlVesselCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSVessel WHERE VslCode = '" + ddlVesselCode.SelectedItem.Value + "' ", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                txtVesselName.Text = ds.Tables[0].Rows[i]["VslName"].ToString();
            }
            cn.Close();
        }
        protected void ddlCustName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlVesselName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsWeekend || e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Gray;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Invoice_Entry_Reg(Invoice_No,CustomerCode,CustomerName,VslCode,VslName,Date,Currency,Amount,Term,StaffInCharge) VALUES('" + txtInvoiceNumb.Text + "','" + ddlCustCode.SelectedItem.Text + "','" + txtCustName.Text + "','" + ddlVesselCode.SelectedItem.Text + "','" + txtVesselName.Text + "','" + TextBox1.Text + "','" + ddlCurrency.Text + "','" + txtAmount.Text + "','" + ddlTerm.Text + "','" + txtStaff.Text + "')", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Inserted successfully') </script>");
            cn.Close();
        }

    }
}