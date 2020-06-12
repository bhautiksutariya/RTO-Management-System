<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="ApplyDL.aspx.cs" Inherits="ApplyDL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    
    <div>
    <center><h2 class="text-primary">User Details</h2></center>
    <br />
   
        <table class="table table-responsive table-striped">
            <tr>
                <th>
                    First Name:
                </th>
                <td>
                    <asp:Label ID="lbl_fname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>
                    Last Name:
                </th>
                <td>
                    <asp:Label ID="lbl_lname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>
                    Address:
                </th>
                <td>
                    <asp:Label ID="lbl_address" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>
                    Gender:
                </th>
                <td>
                    <asp:Label ID="lbl_gender" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>
                    Date Of Birth:
                </th>
                <td>
                    <asp:Label ID="lbl_dob" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>
                    Age:
                </th>
                <td>
                    <asp:Label ID="lbl_age" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button id="btn_dl" runat="server" Text="Apply For Driving License" 
            CssClass="pull-right btn btn-primary" onclick="btn_dl_Click"/>
    </div>
    
</body>
</html>
</asp:Content>

