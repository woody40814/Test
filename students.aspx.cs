using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class students : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string mySqlString, myCondition;
    protected void ShowMemberSQL()
    {
       try { 
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

        mySqlString = "SELECT TOP 50 ";
        mySqlString += " * "; // 全部的欄位
        mySqlString += " FROM " + "tbStudent ";
        myCondition = " [學號] Like '%" + qryStr.Text.Trim() + "%'";
        myCondition += " OR [系級] Like '%" + qryStr.Text.Trim() + "%'";
        myCondition += " OR [姓名] Like '%" + qryStr.Text.Trim() + "%'";
        myCondition += " OR [Email2] Like '%" + qryStr.Text.Trim() + "%'";
        mySqlString += " Where " + myCondition; // 取出全部符合myCondition條件的資料
    
        cn.Open();
        SqlCommand cmd = new SqlCommand(mySqlString, cn);
        cmd.CommandText = mySqlString;

        // Call ExecuteReader to return a DataReader  
        SqlDataReader dr = cmd.ExecuteReader();

        //lbStudents.Text = "<BR />mID   mName   Email  mRemark";
        lbStudents.Text = "<table>  <tr>";
        lbStudents.Text += "<th> ID </th>";
        lbStudents.Text += "<th> 系級 </th>";
        lbStudents.Text += "<th> Name </th>";
        lbStudents.Text += "<th> Email </th>";
        lbStudents.Text += "<th> Email2 </th >";
        lbStudents.Text += "<th> 修改 </th >";
        lbStudents.Text += "<th> 刪除 </th > </tr>";
        string myDelStr = "";
        while (dr.Read())
        {
            lbStudents.Text += "<tr><td>" + dr["學號"] + "</td>";
            lbStudents.Text += "<td>" + dr["系級"] + "</td>";
            lbStudents.Text += "<td>" + dr["姓名"] + "</td>";
            lbStudents.Text += "<td>" + dr["Email"] + "</td>";
            lbStudents.Text += "<td>" + dr["Email2"] + "</td>";
            lbStudents.Text += "<td>" + "<a href=studUpdate.aspx?key=" + dr["學號"] + ">修改</a>" + "</td>";
            myDelStr = "<a href=studDel.aspx?key=" + dr["學號"] + ">刪除</a>";
            lbStudents.Text += "<td>" + myDelStr + "</td> </tr>";
            }
        lbStudents.Text += "</table>";

        //Release resources  
        dr.Close();
        cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<BR />" + mySqlString);
        }
    }
    

    protected void btnQry_Click(object sender, EventArgs e)
    {
        ShowMemberSQL();
    }

    protected void btnADD_Click(object sender, EventArgs e)
    {
        Response.Redirect("studADD.aspx");
    }
}