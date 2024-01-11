using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class show_custinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd=new SqlCommand("select * from userinfo where username=@username and password=@password",con);
            cmd.Parameters.AddWithValue("@username", txtnme.Text); 
            cmd.Parameters.AddWithValue("@password", txtpass.Text); 
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
            Response.Redirect("customer_table.aspx");
                }
            else
            {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javaScript'>alert('Inavalid username and password')</script>");
                }
        con.Close();
    }
    }

        }
    
