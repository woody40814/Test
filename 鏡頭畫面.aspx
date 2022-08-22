<%@ Page Title="" Language="C#" MasterPageFile="~/tweda2.master" AutoEventWireup="true" CodeFile="鏡頭畫面.aspx.cs" Inherits="鏡頭畫面" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBodyContents" Runat="Server">

<div class="container mt-5 mb-5">
    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-9">
            <div class="card px-8 py-8">

    <div id="container">
        <video autoplay="true" id="videoElement">            <a href="detaction.h5">detaction.h5</a>
        </video>
    </div>
    <script>
        var video = document.querySelector("#videoElement");

        if (navigator.mediaDevices.getUserMedia) {
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(function (stream) {
                    video.srcObject = stream; 
                })
                .catch(function (err0r) {
                    console.log("Something went wrong!");
                });
        }
    </script>

               
            </div>
        </div>
    </div>
</div>
</asp:Content>

