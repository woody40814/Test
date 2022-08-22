<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="註冊.aspx.cs" Inherits="註冊" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">

<div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5"><img src="img/Logo11.jpg" />
                <h1 class="mt-3"><center> 註冊會員</h1>
                <div class="form-input"> <i class="fa fa-envelope"></i> <input type="text" class="form-control" placeholder="Email"> </div>
                <div class="form-input"> <i class="fa fa-user"></i> <input type="text" class="form-control" placeholder="使用者名稱"> </div>
                <div class="form-input"> <i class="fa fa-lock"></i> <input type="password" class="form-control" placeholder="密碼"> </div>
                <div class="form-input"> <i class="fa fa-lock"></i> <input type="password" class="form-control" placeholder="確認密碼"> </div>
                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 已經閱讀<a href="#" class="隱私權.aspx">隱私權政策 </a></label> </div> 
  <asp:Button class="btn btn-primary mt-1 signup"  runat="server" Text="註冊會員" />

                <div class="text-center mt-4"> <span>已經是會員了嗎?直接</span> <a href="登入.aspx" class="">登入</a> </div>
            </div>
        </div>
    </div>
</div>
    </asp:Content>


