<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="showDLDetails.aspx.cs" Inherits="showDLDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
<title>User Status</title>

</head>
<body>
<center><h2>Driving License Details</h2></center>
<hr />
<table class="table table-striped table-responsive">
<tr>

<th>
Learning Licease No:
</th>
<td>
<asp:Label ID="lbl_no" runat="server"></asp:Label>
</td>

</tr>
<tr>
<th>Appointment Date:</th>
<td><asp:Label ID="lbl_date" runat="server"></asp:Label></td>

</tr>

<tr>
<th>License Status:</th>
<td><asp:Label ID="lbl_status" runat="server"></asp:Label></td>

</tr>





</table>

</body>

</html>
</asp:Content>

