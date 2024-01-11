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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void lbstore_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                    int i= lbstore.SelectedIndex; 
                    if (i==0)
                         {
                          img.ImageUrl="~/pics/Cappuccino_at.jpg"; 
                          img.AlternateText="Cappuccino";
                          }
                     else if (i == 1)
                          {
                            img.ImageUrl="~/pics/icedcoffee.jfif"; 
                            img.AlternateText="icedcoffee";
                           }
                     else if (i == 2)
                          {
                            img.ImageUrl="~/pics/cold brew.jfif"; 
                            img.AlternateText="cold brew";
                          }
                      else
                          {
                            img.ImageUrl="~/pics/Bill's_Turkish_coffee.jpg"; 
                            img.AlternateText="turkish_coffee";
                           }
                        }

        protected void btnfind_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into custinfo(item,cname,phone)values(@custid,@cname,@phone)", con);
            cmd.Parameters.AddWithValue("@custid", lbstore.SelectedItem.Text); 
            cmd.Parameters.AddWithValue("@cname",txtname.Text); 
            cmd.Parameters.AddWithValue("@phone", txtnum.Text); 
                 cmd.ExecuteNonQuery();
                 Label1.Text = "Inserted Sucessfully!!"; 
              con.Close();
              
             int i= lbstore.SelectedIndex;
             if (i > -1)
             {
                 txtcost.Text = "You Have Choosen " + " " + lbstore.SelectedItem.Value + " " + " And It Cost is Rs.";
                 if (i == 0)
                     txtcost.Text += "50";
                 else if (i == 1)
                     txtcost.Text += "40";
                 else if (i == 2)
                     txtcost.Text += "60";
                 else if (i == 3)
                     txtcost.Text += "100";
                 else
                     txtcost.Text = "0";
             }
          }

          
        }
    

        }
    
