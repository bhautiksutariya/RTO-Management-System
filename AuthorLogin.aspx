<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="AuthorLogin.aspx.cs" Inherits="AuthorLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserName"  Display="None" ControlToValidate="txt_username"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" Display="None" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false"  runat="server" />
        <div class="container" style="width:30%; height: 407px;">
            <div class="row main">
                <div class="panel-heading">
                    <div class="panel-title text-center">
                        <h1 class="title">
                            Login to Your Account</h1>
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
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_password" CssClass="form-control" runat="server" 
                                        placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
								</div>
							</div>
						</div>

                        <div class="form-group ">
                        <asp:HyperLink ID="link1" runat="server" NavigateUrl="~/forgetpassword1.aspx">Forget Password ?</asp:HyperLink>
							<asp:Button class="btn btn-primary btn-lg btn-block login-button" 
                                ID="btn_submit" runat="server" Text="Login" onclick="btn_submit_Click" />
                                <br />
                                <asp:Button class="btn btn-success btn-lg btn-block login-button" 
                                ID="btn_signup" runat="server" Text="Sign up" onclick="btn_signup_Click" 
                                CausesValidation="False" />
						</div>
                        
                    </form>
                </div>
            </div>
                           
        </div>
        
    </div>
</asp:Content>
