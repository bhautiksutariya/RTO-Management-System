<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <head>
        <link rel="Stylesheet" href="css/bootstrap.min.css" />
    </head>
    <body>
        <div class="col-md-12" style="text-align: center; font-weight: bolder; color: blue">
            <h2>
                Information / Help</h2>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="col-md-6">
            <table class="table-responsive" style="border: none">
                <tr>
                    <td>
                        <ul>
                            <li><a href="pdf/howtoll.pdf" target="_blank" style="text-decoration: none">How do I
                                get my Learning Licence</a></li>
                            <li><a href="pdf/howtodl.pdf" target="_blank" style="text-decoration: none">How do I
                                get my Driving Licence</a></li>
                            <li><a href="pdf/dlcoa.pdf" target="_blank" style="text-decoration: none">How shall
                                I get my address changed in the Licence</a></li>
                            <li><a href="pdf/dupdl.pdf" target="_blank  " style="text-decoration: none">How to get
                                a duplicate for my Licence</a></li>
                            <li><a href="pdf/howtoidp.pdf" target="_blank" style="text-decoration: none">How to
                                obtain an International Driving Permit</a></li>
                            <li><a href="pdf/Aedl.pdf" target="_blank" style="text-decoration: none">How to add
                                another Class to my Driving Licence</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-6">
            <table class="table-responsive">
                <tr>
                    <td>
                        <ul>
                            <li style="text-decoration: none; color: #399bbe;">Download Forms</li>
                            <ul>
                                <li><a href="pdf/formone.pdf" target="_blank" style="text-decoration: none">Form 1 &amp;
                                    1A (Medical)</a></li>
                                <li><a href="pdf/formtwo.pdf" target="_blank" style="text-decoration: none">Form 2 (New
                                    LL)</a></li>
                                <li><a href="pdf/New DL.pdf" target="_blank" style="text-decoration: none">Form 4 (New
                                    DL)</a></li>
                                <li><a href="pdf/formeight.pdf" target="_blank" style="text-decoration: none">Form 8
                                    (Add Cov to DL)</a></li>
                                <li><a href="pdf/formnine.pdf" target="_blank" style="text-decoration: none">Form 9
                                    (Renew DL)</a></li>
                                <li><a href="pdf/idpform4A.pdf" target="_blank" style="text-decoration: none">Form 4A
                                    (New IDP)</a></li>
                            </ul>
                        </ul>
                    </td>
                </tr>
            </table>
    </body>
    </html>
</asp:Content>
