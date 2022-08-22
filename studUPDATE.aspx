<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="studUPDATE.aspx.cs" Inherits="studUPDATE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
<div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5"><img src="img/Logo11.jpg" />
                <h1 class="mt-3"><center> 修改資料</h1>
                <div class="flex">
  <div>
    <h1>                      </h1>
    <p>                        </p>
    <table class="">   <tr>
<td align="right" style="width: 206px">    <asp:Label ID="Label1" runat="server" Text="系級:"></asp:Label>
    </td><td align="right" style="width: 206px">
    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label2" runat="server" Text="學號:"></asp:Label>
    </td><td align="right" style="width: 206px">
    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label3" runat="server" Text="姓名:"></asp:Label>
    </td><td align="right" style="width: 206px">
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
    </td><td align="right" style="width: 206px">
    <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
    <tr><td style="width: 206px"></td>
    <td>  <asp:Button class="btn btn-primary mt-1 signup"  runat="server" Text="註冊會員" OnClick="btnUpdate_Click" />
    </td></tr>
    </table>
                    </div>
         </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

