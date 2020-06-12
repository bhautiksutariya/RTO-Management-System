<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true" CodeFile="Forgetpassword2.aspx.cs" Inherits="Forgetpassword2" %>

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
                        <asp:Label ID="lbl_user" CssClass="cols-sm-2 control-label" runat="server" Text="Enter Code Send To "></asp:Label>:
							
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<asp:TextBox ID="txt_code" CssClass="form-control" runat="server" placeholder="Enter your code"></asp:TextBox>
                                    
								</div>
							</div>
						</div>

						

						<div class="form-group ">
                        
							<asp:Button class="btn btn-primary btn-lg btn-block login-button" 
                                ID="btn_search" runat="server" Text="Submit" onclick="btn_search_Click"/>
                                
                            
						</div>
						
					</form>
				</div>
			</div>
		</div>
        
    
</body>
</html>
</asp:Content>

