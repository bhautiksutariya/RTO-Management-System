<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="fourvideo.aspx.cs" Inherits="fourvideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
<title>Video</title>
<link rel="Stylesheet" href="css/bootstrap.min.css" />
<style>
video {
    width: 50%;
    height: auto;
    
}
</style>
</head>
<body>
<br />
<br />
<h3 class="text-primary">
Four Wheel Driving License:
</h3>
<div align="center">
   <object class="embed-responsive-item">
     <video autoplay loop controls>
       <source src="pdf/Automated Driving Test Track RTO, Govt. of Gujarat (Full Video - All Steps).mp4" />
     </video>
   </object>
 </div>
</body>
</html>
</asp:Content>

