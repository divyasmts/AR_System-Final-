using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Configuration;

namespace AR_System.ARS.Modules
{
    public partial class outstanding_invoices : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
            txtCname.Text = Session["Cname"].ToString();
            txtCcode.Text = Session["Ccode"].ToString();
            txtVesselName.Text = Session["Vname"].ToString();
        }

        protected void ddlCname_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCcode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlVesselName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}