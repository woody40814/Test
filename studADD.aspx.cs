using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class studADD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string mySqlString;

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
         try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            mySqlString = "INSERT INTO tbStudent ([學號],[系級],[姓名],[Email2]) values( ";
            mySqlString += "'" + txtNum.Text + "','" + txtDC.Text + "','" + txtName.Text + "','" + txtEmail2.Text + "')";
            // Response.Write(mySqlString);

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("students.aspx");
        }
        catch (Exception ex)
        { Response.Write(ex.Message + "<BR />" + mySqlString); }
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
}
