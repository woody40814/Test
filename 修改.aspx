<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="修改.aspx.cs" Inherits="修改" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">
    <div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            <div class="card px-5 py-5"><img src="img/Logo1.jpg" />
                <h1 class="mt-3"><center> 修改密碼</h1>
                <div class="form-input"> <i class="fa fa-envelope"></i> <input type="text" class="form-control" placeholder="Email"> </div>
                <div class="form-input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" placeholder="修改後密碼"> </div>
                <div class="form-input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" placeholder="確認密碼"> </div>
                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 已經閱讀<a href="#" class="隱私權.aspx">隱私權政策 </a></label> </div> 
                <a href="#" type="button" data-bs-toggle="modal" data-bs-target="#loginModal" class="btn btn-primary mt-4 signup">修改密碼</a>
                <div class="text-center mt-4"> <span>想到密碼了嗎?直接</span> <a href="登入.aspx" class="">登入</a> </div>
                </div>
            </div>
        </div>



                 <!-- 跳出視窗內容 -->

    <div class="modal fade" id="loginModal">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="container">
<div class="row justify-content-center align-self-center">
  <div class="col-4"><h6>確定要修改密碼嗎?</h6></div>
</div>
      <div style="border:5px;width:500px;height:100px;text-align:right"class="modal-body ;">

                    <!-- 登入表單 -->

                        
                        <!-- 送出按鈕 -->
                        <button class="btn btn-primary mt-4 signup">取消修改</button>        
                        <button class="btn btn-primary mt-4 signup">確認修改</button>  
                          </div>

            </div>
        </div>
    </div>
</div>

</asp:Content>

