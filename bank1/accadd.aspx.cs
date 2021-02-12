using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace bank1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonadd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Alexey\sigma\bank1\bank1\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Accounts(APSing,CurrencyISOCode,IBAN,Description,AccounttypeId,DateOpen,AccountStateId,ResponsibleUser,OperDate,AccRestOpen,AccRestNow,AccDebit,AccCredit) values (@APSing,@CurrencyISOCode,@IBAN,@Description,@AccounttypeId,@DateOpen,@AccountStateId,@ResponsibleUser,@OperDate,@AccRestOpen,@AccRestNow,@AccDebit,@AccCredit)", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("APSing",TextBox1.Text);
            cmd.Parameters.AddWithValue("CurrencyISOCode",TextBox2.Text);
            cmd.Parameters.AddWithValue("IBAN",TextBox3.Text);
            cmd.Parameters.AddWithValue("Description",TextBox4.Text);
            cmd.Parameters.AddWithValue("AccounttypeId",TextBox5.Text);
            cmd.Parameters.AddWithValue("DateOpen",DateTime.Now);
            cmd.Parameters.AddWithValue("AccountStateId",TextBox6.Text);
            cmd.Parameters.AddWithValue("ResponsibleUser",TextBox7.Text);
            cmd.Parameters.AddWithValue("OperDate",DateTime.Now);
            cmd.Parameters.AddWithValue("AccRestOpen",0);
            cmd.Parameters.AddWithValue("AccRestNow",0);
            cmd.Parameters.AddWithValue("AccDebit",0);
            cmd.Parameters.AddWithValue("AccCredit",0);
            con.Open();
           
                Label2.Visible = true;
                Label2.Text = "Succeed";
                Label2.ForeColor = System.Drawing.Color.Green;
            
            con.Close();
            Response.Redirect("Accounts.aspx");
        }
    }
}