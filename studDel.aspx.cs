using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studDel : System.Web.UI.Page
{
    string studID;
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
            lbData.Text = "<table>  <tr>";
            lbData.Text += "<th> 欄位名稱 </th>";
            lbData.Text += "<th> 內容 </th>";
            lbData.Text += "</tr>";

            while (dr.Read())
            {
                lbData.Text += "<tr><td>學號:</td><td>" + dr["學號"] + "</td></tr>";
                lbData.Text += "<tr><td>系級:</td><td>" + dr["系級"] + "</td></tr>";
                lbData.Text += "<tr><td>姓名:</td><td>" + dr["姓名"] + "</td></tr>";
                lbData.Text += "<tr><td>Email2:</td><td>" + dr["Email2"] + "</td></tr>";

            }
            lbData.Text += "</table>";

            //Release resources  
            dr.Close();
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<BR />" + mySqlString);
        }

    }


    protected void btnDel_Click(object sender, EventArgs e)
    {
        // 刪除
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            
            mySqlString = "DELETE  FROM " + "tbStudent ";
            mySqlString += " Where  [學號] = '" + txtKey.Text.Trim() + "'"; 
            // 刪除符合 Condition條件的資料
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