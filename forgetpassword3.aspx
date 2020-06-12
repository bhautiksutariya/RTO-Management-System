<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="forgetpassword3.aspx.cs" Inherits="forgetpassword3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
    <link rel="Stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
<asp:RegularExpressionValidator ID="Regex5" runat="server" ControlToValidate="txt_pass"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,15}"
    ErrorMessage="Password must contain: Minimum 6 and Maximum 15 characters at least 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" Display="None"
 />
    <asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txt_pass" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Confirm Password" ControlToValidate="txt_cpass" Display="None"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Confirm Password" Display="None" ControlToValidate="txt_pass" ControlToCompare="txt_cpass"></asp:CompareValidator>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    <div class="container" style="width:40%">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Forget Password</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
                        <asp:Label ID="lbl_user" CssClass="cols-sm-2 control-label" runat="server" Text="">New Password</asp:Label>:
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_pass" CssClass="form-control" runat="server" 
                                        placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                                    
								</div>
							</div>
						</div>

                        <div class="form-group">
                        <asp:Label ID="Label1" CssClass="cols-sm-2 control-label" runat="server" Text="">Confirm Password</asp:Label>:
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_cpass" CssClass="form-control" runat="server" 
                                        placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
                                    
								</div>
							</div>
						</div>
						

						<div class="form-group ">
                        
							<asp:Button class="btn btn-primary btn-lg btn-block login-button" 
                                ID="btn_update" runat="server" Text="Update" onclick="btn_update_Click"/>
                                
                            
						</div>
						
					</form>
				</div>
			</div>
		</div>
        
    
</body>
</html>
</asp:Content>

