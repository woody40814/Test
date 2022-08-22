<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
   <h1>
    <asp:Label ID="progName1" runat="server" Text="維護學生會員資料"></asp:Label>
   </h1>
    <asp:Button ID="btnADD" runat="server" Text="新增資料" OnClick="btnADD_Click" />
    <br />
    <asp:TextBox ID="qryStr" runat="server"></asp:TextBox>
    <asp:Button ID="btnQry" runat="server" Text="查詢" OnClick="btnQry_Click" />
    <asp:Label ID="lbStudents" runat="server" Text="Label"></asp:Label>
</asp:Content>

