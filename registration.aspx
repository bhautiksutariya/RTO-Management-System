<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
    <link rel="Stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
<form runat="server">
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="txt_username" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txt_email" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txt_password" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Confirm Password" ControlToValidate="txt_conform_password" Display="None"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ErrorMessage="Please Enter Valid Email"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="None"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
    ErrorMessage="User name must start with alphabet" 
    ValidationExpression="^[a-zA-Z].*" ControlToValidate="txt_username" Display="None"></asp:RegularExpressionValidator>
<asp:RegularExpressionValidator ID="Regex5" runat="server" ControlToValidate="txt_password"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,15}"
    ErrorMessage="Password must contain: Minimum 6 and Maximum 15 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" Display="None"
 />
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid Conform Password" Display="None" ControlToValidate="txt_conform_password" ControlToCompare="txt_password"></asp:CompareValidator>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    <div class="container" style="width:40%">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Registration</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_username" CssClass="form-control" runat="server" placeholder="Enter your Username"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_email" CssClass="form-control" runat="server" placeholder="Enter your Email"></asp:TextBox>
								</div>
							</div>
						</div>

						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_password" CssClass="form-control" runat="server" 
                                        placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_conform_password" CssClass="form-control" runat="server" 
                                        placeholder="confirm your Password" TextMode="Password"></asp:TextBox>
								</div>
							</div>
						</div>

						<div class="form-group ">
                        
							<asp:Button class="btn btn-primary btn-lg btn-block login-button" 
                                ID="btn_submit" runat="server" Text="Register" onclick="btn_submit_Click" />
                                <br />
                            <asp:Button class="btn btn-success btn-lg btn-block login-button" 
                                ID="btn_signup" runat="server" Text="Login"  
                                CausesValidation="False" onclick="btn_signup_Click" />
                            
						</div>
						
					</form>
				</div>
			</div>
		</div>
        </form>
</body>
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
