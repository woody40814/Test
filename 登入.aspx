<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="登入.aspx.cs" Inherits="試註冊" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
<div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5"><img src="img/Logo11.jpg" />
                <h2 class="mt-3"><center> <br> 登入會員開始保障獨居老人安全</h2>
                <div class="form-input"> <i class="fa fa-user"></i> <input type="text" class="form-control" placeholder="使用者名稱"> </div>
                <div class="form-input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" placeholder="密碼"> </div>
                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked">記住密碼</label> </div> <button class="btn btn-primary mt-4 signup">登入</button>
            </div>
        </div>
    </div>
</div>
</asp:Content>

