<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="MailPDF.aspx.cs" Inherits="MailPDF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div class="col-md-12 form-group">
        <center>
            <h1>
                Form of Application for New Learning Licence
                
                
                
            </h1>
            <a href="homepage.aspx" class="pull-right" style="margin-top:-40px">HOME</a>
        </center>
        <br />
                <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ErrorMessage="Please Enter Valid Email"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="None"></asp:RegularExpressionValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txt_email" Display="None"></asp:RequiredFieldValidator>
    <div class="col-md-4">
        <div class="form-group">
            <label for="email" class="ccontrol-label pull-right">
                Your Email :</label>
            
        </div>
    </div>
    <div class="col-md-6 form-group">
        <center>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i>
                </span>
                <asp:TextBox ID="txt_email" CssClass="form-control" runat="server" placeholder="Enter your Email"></asp:TextBox>
            </div>
        </center>
    </div>
    <br />
    <br />
    <div class="col-md-4">
    </div>
    <div class="col-md-6 form-group">
        <center>
            <asp:Button ID="mail" runat="server" CssClass="form-control btn btn-lg btn-primary"
                Text="Mail PDF Letter" onclick="mail_Click" />
        </center>
    </div>
    <br />
    <br />
    <br />
    <div class="col-md-4">
    </div>
    <div class="col-md-6 form-group">
        <center>
            <asp:Button ID="Button1" runat="server" CausesValidation="false" CssClass="form-control btn btn-lg btn-primary"
                Text="Show PDF letter" onclick="Button1_Click"  />
        </center>
    </div>
    </asp:Content>
