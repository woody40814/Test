<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="studADD.aspx.cs" Inherits="studADD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
<div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5"><img src="img/Logo11.jpg" />
                <h1 class="mt-3"><center> 註冊會員</h1>
                <div class="flex">
  <div>

    <table class="">
    <tr>
    <td align="right" style="width: 206px">
    <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
    </td><td style="width: 255px">
    <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right" style="width: 206px">
    <asp:Label ID="Label2" runat="server" Text="姓名:"></asp:Label>
    </td><td >
    <div class="form-input"> <i class="fa fa-user"></i> 
    <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox></div>
    </td></tr>
    <tr><td align="right" style="width: 206px">
    <asp:Label ID="Label3" runat="server" Text="密碼:"></asp:Label>
    </td><td style="width: 255px" >
    <asp:TextBox type="password" ID="txtNum" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right" style="width: 206px">
    <asp:Label ID="Label1" runat="server" Text="地址:"></asp:Label>
    </td><td style="width: 255px">
    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td style="width: 206px"></td>
    
        </table>      
 <asp:Button class="btn btn-primary mt-1 signup"  runat="server" Text="註冊會員" OnClick="Unnamed1_Click" style="margin-left: 6" Width="454px" />

                    <div class="text-center mt-4"> <span>已經是會員了嗎?直接</span> <a href="登入.aspx" class="">登入</a> </div>


                </div>
            </div>
        </div>
    </div>
  </div>
    </div>
   
</asp:Content>

