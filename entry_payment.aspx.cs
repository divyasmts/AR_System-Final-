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
    public partial class entry_payment : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString); 
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustCode();
                VesselCode();
            }
        }
        protected void CustCode()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSCustomer", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlCcode.DataSource = ds;

            ddlCcode.DataTextField = "CustCode";
            ddlCcode.DataValueField = "CustCode";
            ddlCcode.DataBind();
            cn.Close();
        }
        protected void VesselCode()
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSVessel", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlVcode.DataSource = ds;
            ddlVcode.DataTextField = "VslCode";
            ddlVcode.DataValueField = "VslCode";
            ddlVcode.DataBind();
            cn.Close();
        }

        protected void ddlCcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSCustomer WHERE CustCode = '" + ddlCcode.SelectedItem.Value + "' ", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                txtCname.Text = ds.Tables[0].Rows[i]["CustName"].ToString();
            }
            cn.Close();
        }
        protected void ddlVcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("SELECT * FROM SMTSVessel WHERE VslCode = '" + ddlVcode.SelectedItem.Value + "' ", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                txtVesselName.Text = ds.Tables[0].Rows[i]["VslName"].ToString();
            }
            cn.Close();
        }
        protected void btnEnter_Click(object sender, EventArgs e)
        {
            Session["Ccode"] = ddlCcode.SelectedItem.Text;
            Session["Cname"] = txtCname.Text;
            Session["Vcode"] = ddlVcode.SelectedItem.Text;
            Session["Vname"] = txtVesselName.Text;
            Response.Redirect("outstanding_invoices.aspx");
        }
    }
}