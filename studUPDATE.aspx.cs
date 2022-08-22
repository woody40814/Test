using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class studUPDATE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string studID = Context.Request.QueryString["key"];
            // lbData.Text = "學號:" + studID;
            txtKey.Text = studID;
            txtKey.ReadOnly = true;
            ShowData(studID);
        }
    }
    string mySqlString, myID;
    protected void ShowData(string ID)
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            myID = ID;
            mySqlString = "SELECT  ";
            mySqlString += " * "; // 全部的欄位
            mySqlString += " FROM " + "tbStudent ";
            mySqlString += " Where  [學號] = '" + ID + "'"; // 取出全部符合 Condition條件的資料

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;

            // Call ExecuteReader to return a DataReader  
            SqlDataReader dr = cmd.ExecuteReader();

            //lbData.Text = "<BR />mID   mName   Email  mRemark";


            while (dr.Read())
            {
                txtDC.Text = dr["系級"].ToString();
                txtName.Text = dr["姓名"].ToString();
                txtEmail2.Text = dr["Email2"].ToString();
            }

            //Release resources  
            dr.Close();
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<BR />" + mySqlString);
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            myID = ID;
            mySqlString = "UPDATE  " + "tbStudent ";
            mySqlString += " SET [系級]='" + txtDC.Text + "'";
            mySqlString += ", [姓名]='" + txtName.Text + "'";
            mySqlString += ", Email2='" + txtEmail2.Text + "'";
            mySqlString += " Where  [學號] = '" + txtKey.Text + "'"; // 更新符合 Condition條件的資料

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("students.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<BR />" + mySqlString);
        }
    }
}



