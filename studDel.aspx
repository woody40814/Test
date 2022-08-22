<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="studDel.aspx.cs" Inherits="studDel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
<h1>刪除學生資料</h1>

    <asp:Label ID="lbData" runat="server" Text="打算刪除的資料"></asp:Label>
    <br />
    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnDel" runat="server" Text="確定刪除" OnClick="btnDel_Click" />
</asp:Content>

