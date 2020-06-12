<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="UserStatus.aspx.cs" Inherits="UserStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>
<title>User Status</title>

</head>
<body>
<center><h2>Learning License Details</h2></center>
<hr />
<table class="table table-striped table-responsive">
<tr>

<th>
First Name:
</th>
<td>
<asp:Label ID="lbl_fname" runat="server"></asp:Label>
</td>

</tr>
<tr>
<th>Last Name:</th>
<td><asp:Label ID="lbl_lname" runat="server"></asp:Label></td>

</tr>

<tr>
<th>Address:</th>
<td><asp:Label ID="lbl_address" runat="server"></asp:Label></td>

</tr>

<tr>
<th>Gender:</th>
<td><asp:Label ID="lbl_gender" runat="server"></asp:Label></td>

</tr>

<tr>
<th>License Status:</th>
<td><asp:Label ID="lbl_status" runat="server"></asp:Label></td>

</tr>





</table>

</body>

</html>
</asp:Content>

