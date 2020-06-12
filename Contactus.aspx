<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>

<link rel="Stylesheet" href="css/bootstrap.min.css" />
</head>
<body>

<div class="container">
    <div class="jumbotron jumbotron-sm" style="background-color:Blue;margin-top:2%;color:white;">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h2" style="margin-top:-2%">
                    Regional Transport Office
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="well">
                <h3 style="line-height:20%;"><i class="fa fa-home fa-1x" style="line-height:6%;color:#339966"></i> Address:</h3>               
                <p style="margin-top:6%;line-height:35%">Yogi chowk ,Surat, Gujarat</p>
                <br />
                <br />
                <h3 style="line-height:20%;"><i class="fa fa-envelope fa-1x" style="line-height:6%;color:#339966"></i> E-Mail:</h3>
                <p style="margin-top:6%;line-height:35%">rtoalert23@gmail.com</p>
                <br />
                <br />
                <h3 style="line-height:20%;"><i class="fa fa-user fa-1x" style="line-height:6%;color:#339966"></i> Admin</h3>
                <p style="margin-top:6%;line-height:35%">Bhautik Sutariya</p>
                <p style="margin-top:6%;line-height:35%">Dolar Bhanderi</p>
                
            </div>
        </div>
        <div class="col-sm-6">
            <iframe src="https://www.google.com/maps?q=Yogi Chowk Ground&output=embed" width="565" height="430" frameborder="0" style="border:0" allowfullscreen="true"></iframe>
        </div>
    </div>
</div>
</body>


</html>

       

</asp:Content>

