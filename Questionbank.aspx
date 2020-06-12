<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="Questionbank.aspx.cs" Inherits="Questionbank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
<title>Download Questionbank</title>
<link rel="Stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
<center>
<h2>Learner's Licence Computer Test Question Book</h2>
<hr />
</center>
<br />
<div class="col-md-9 pull-right">
<ul>
<li>
Download Questionbank
</li>
<br />
<ul>
<li><a href="pdf/Question_book_english.pdf" target="_blank" style="text-decoration: none">English</a><br /></li>
<br />
<li><a href="pdf/Question_book_gujarati.pdf" target="_blank" style="text-decoration: none">Gujarati</a><br /></li>
<Br />
<li><a href="pdf/Question_book_hindi.pdf" target="_blank" style="text-decoration: none">Hindi</a><br /></li>
<br />
<li><a href="pdf/traffic_sign.jpg" target="_blank" style="text-decoration: none">Traffic Signal</a><br /></li>
</ul>
</ul>

</div>

</body>
</html>
</asp:Content>

