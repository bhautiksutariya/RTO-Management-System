<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="LearningLicence.aspx.cs" Inherits="LearningLicence" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <hr style="background-color: red" size="3" />
    <html>
    <head>
        <title>Learning License</title>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <link rel="Stylesheet" href="css/bootstrap.min.css" />
    </head>
    <body>
        <asp:ScriptManager ID="smng" runat="server">
        </asp:ScriptManager>
        <div class="row">
            <center>
                <h1>
                    Form of Application for New Learning Licence</h1>
                <br />
            </center>
            <div class="container" style="width: 97%">
                <div class="panel panel-primary">
                    <div class="panel-heading licence1">
                        <span>Applicant Details :</span> <span class="pull-right">Expand/Collapse
                            <asp:Image ID="img_plus1" runat="server" ImageUrl="~/Image for rto/plus.png" CssClass="img_plus1" />
                            <asp:Image ID="img_minus1" runat="server" ImageUrl="~/Image for rto/minus.png" CssClass="hide img_minus1" />
                        </span>
                    </div>
                    <div class="panel-body licence_content1" style="display: none">
                        <div class="contain">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Adcardno" CssClass="colorLL" runat="server" Text="Aadhar Card Number : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_state" CssClass="control-label colorLL" runat="server" Text="Select State : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_select_rto" CssClass="control-label colorLL" runat="server" Text="Select RTO/DTO : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_daeofbirth" CssClass="control-label colorLL" runat="server" Text="Date of Birth : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_ad" CssClass="form-control" runat="server" placeholder="AADHARCARD NUMBER"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="up1" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="drd_state" runat="server" CssClass="form-control dropdown"
                                                AutoPostBack="true" OnSelectedIndexChanged="drd_state_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="up2" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="drd_select_RTO" runat="server" CssClass="form-control dropdown"
                                                AutoPostBack="true">
                                                <asp:ListItem Value="-1" Text="Select RTO"></asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_dob">
                                    </asp:CalendarExtender>
                                    <asp:TextBox ID="txt_dob" runat="server" CssClass="form-control" placeholder="MM/DD/YYYY"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_aplina" CssClass="control-label colorLL" runat="server" Text="APPLICANT NAME : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Lbl_fn" runat="server" CssClass="control-label colorLL" Text="First Name : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_mn" runat="server" CssClass="control-label colorLL" Text="Middle Name : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_ln" runat="server" CssClass="control-label colorLL" Text="Last Name : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_fn" CssClass="form-control" runat="server" placeholder="FIRST NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_mn" CssClass="form-control" runat="server" placeholder="MIDDLE NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_ln" runat="server" CssClass="form-control" placeholder="LAST NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_relation" CssClass="control-label colorLL" runat="server" Text="Relation : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_fnrelation" CssClass="control-label colorLL" runat="server" Text="First Name : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Lbl_mnrelation" CssClass="control-label colorLL" runat="server" Text="Middle Name : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_lnrelation" CssClass="control-label colorLL" runat="server" Text="Last Name : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="uprel" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="drd_relation" CssClass="form-control" runat="server" AutoPostBack="True">
                                                <asp:ListItem Value="-1">Select Relationship</asp:ListItem>
                                                <asp:ListItem Value="0">FATHER</asp:ListItem>
                                                <asp:ListItem Value="1">HUSBUND</asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_fnrelation" CssClass="form-control" runat="server" placeholder="FIRST NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_mnrelation" CssClass="form-control" runat="server" placeholder="MIDDLE NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_lnrelation" CssClass="form-control" runat="server" placeholder="LAST NAME"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_gender" CssClass="control-label colorLL" runat="server" Text="Gender : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_phone" CssClass="control-label colorLL" runat="server" Text="Phone : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_mon" CssClass="control-label colorLL" runat="server" Text="Mobile : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Lbl_age" CssClass="control-label colorLL" runat="server" Text="Age : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="upgen" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="drd_gender" CssClass="form-control" runat="server" AutoPostBack="True">
                                                <asp:ListItem Value="-1">Select Gender</asp:ListItem>
                                                <asp:ListItem Value="0">MALE</asp:ListItem>
                                                <asp:ListItem Value="1">FEMALE</asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_pn" runat="server" CssClass="form-control" placeholder="PHONE NUMBER"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_mobn" runat="server" CssClass="form-control" placeholder="MOBILE NUMBER"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_age" Enabled="false" runat="server" CssClass="form-control" placeholder="AGE"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_pb" runat="server" CssClass="control-label colorLL" Text="Place of Birth : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_cb" runat="server" CssClass="control-label colorLL" Text="Country of Birth : "></asp:Label>
                                    <span style="color: Red;">*</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_csb" runat="server" CssClass="control-label colorLL" Text="Citizenship Status By : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_bg" runat="server" CssClass="control-label colorLL" Text="Blood Group  : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_birthplace" CssClass="form-control " runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="upcountry" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="dr_Countryofbirth" CssClass="form-control" runat="server" AutoPostBack="true">
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="upplace" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="dr_CitizenStatus" CssClass="form-control" runat="server">
                                                <asp:ListItem Selected="True" Value="1">BIRTH</asp:ListItem>
                                                <asp:ListItem Value="2">REGISTRATION</asp:ListItem>
                                                <asp:ListItem Value="3">DESCENT</asp:ListItem>
                                                <asp:ListItem Value="4">NATURALIZATION</asp:ListItem>
                                                <asp:ListItem Value="5">NON INDIAN</asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="dr_bloodgroup" CssClass="form-control" runat="server">
                                                <asp:ListItem Selected="True" Value="1">O+</asp:ListItem>
                                                <asp:ListItem Value="2">O-</asp:ListItem>
                                                <asp:ListItem Value="3">A+</asp:ListItem>
                                                <asp:ListItem Value="4">A-</asp:ListItem>
                                                <asp:ListItem Value="5">B+</asp:ListItem>
                                                <asp:ListItem Value="6">B-</asp:ListItem>
                                                <asp:ListItem Value="7">AB+</asp:ListItem>
                                                <asp:ListItem Value="8">AB-</asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_email" CssClass="control-label colorLL" runat="server" Text="Email Address :  "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_eq" runat="server" CssClass="control-label colorLL" Text="Education Qualification : "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lbl_im" runat="server" CssClass="control-label colorLL" Text=" Identification marks: "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="lllll" runat="server" CssClass="notshow" Text="h"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_em" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:UpdatePanel ID="up123" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="drd_eq" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="Select Education" Value="-1"></asp:ListItem>
                                                <asp:ListItem Text="BSCIT" Value="1" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="MSCIT" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="BCA" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="BBA" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:TextBox ID="txt_marks2" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <asp:Label ID="lbl_poi" runat="server" CssClass="control-label colorLL" Text="If place of birth is out side India, Month & Year when migrated to India "></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Label4" runat="server" Text=" a) Month : " CssClass="control-label colorLL"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:Label ID="Label5" runat="server" Text="b) Year : " CssClass="control-label colorLL"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDown_outside_month" runat="server" CssClass="form-control"
                                        AutoPostBack="true">
                                        <asp:ListItem Text="Select Month" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1">JANUARY</asp:ListItem>
                                        <asp:ListItem Value="2">FRBRUARY</asp:ListItem>
                                        <asp:ListItem Value="3">MARCH</asp:ListItem>
                                        <asp:ListItem Value="4">APRIL</asp:ListItem>
                                        <asp:ListItem Value="5">MAY</asp:ListItem>
                                        <asp:ListItem Value="6">JUNE</asp:ListItem>
                                        <asp:ListItem Value="7">JULY</asp:ListItem>
                                        <asp:ListItem Value="8">AUGUST</asp:ListItem>
                                        <asp:ListItem Value="9">SEPTEMBER</asp:ListItem>
                                        <asp:ListItem Value="10">OCTOBER</asp:ListItem>
                                        <asp:ListItem Value="11">NOVEMBER</asp:ListItem>
                                        <asp:ListItem Value="12">DECEMBER</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDown_outside_year" runat="server" CssClass="form-control"
                                        AutoPostBack="true">
                                        <asp:ListItem Text="Select Year" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1">2015</asp:ListItem>
                                        <asp:ListItem Value="2">2014</asp:ListItem>
                                        <asp:ListItem Value="3">2013</asp:ListItem>
                                        <asp:ListItem Value="4">2012</asp:ListItem>
                                        <asp:ListItem Value="5">2011</asp:ListItem>
                                        <asp:ListItem Value="6">2010</asp:ListItem>
                                        <asp:ListItem Value="7">2009</asp:ListItem>
                                        <asp:ListItem Value="8">2008</asp:ListItem>
                                        <asp:ListItem Value="9">2007</asp:ListItem>
                                        <asp:ListItem Value="10">2006</asp:ListItem>
                                        <asp:ListItem Value="11">2005</asp:ListItem>
                                        <asp:ListItem Value="12">2004</asp:ListItem>
                                        <asp:ListItem Value="13">2003</asp:ListItem>
                                        <asp:ListItem Value="14">2002</asp:ListItem>
                                        <asp:ListItem Value="15">2001</asp:ListItem>
                                        <asp:ListItem Value="16">2000</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="width: 97%">
                <div class="panel panel-primary ">
                    <div class="panel-heading licence2">
                        <span>Address Details :</span> <span class="pull-right">Expand/Collapse
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image for rto/plus.png" CssClass="img_plus2" />
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Image for rto/minus.png" CssClass="hide img_minus2" /></span>
                    </div>
                    <div class="panel-body licence_content2" style="display: none;">
                        <div class="form-group">
                            <div class="col-md-5">
                            </div>
                            <div class="col-md-4">
                                Permanent Address
                            </div>
                            <div class="col-md-3">
                                Present Address
                            </div>
                            <br />
                            <br />
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-4">
                                <asp:Label ID="Label3" runat="server" CssClass="">State : <span style="color:Red;">*</span></asp:Label>
                            </div>
                            <div class="col-md-4 form-group">
                            <asp:UpdatePanel ID="pnadl33" runat="server">
                            <ContentTemplate>
                            <asp:DropDownList ID="ddl_state" AutoPostBack="true" runat="server" CssClass="form-control"
                                    OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                                </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </div>
                            <div class="col-md-4 form-group">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                            <asp:DropDownList ID="ddlc_state" AutoPostBack="true" runat="server" 
                                    CssClass="form-control" 
                                    onselectedindexchanged="ddlc_state_SelectedIndexChanged">
                                </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </div>
                            <br />
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="Label1" runat="server">City : <span style="color:Red;">*</span></asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                            <asp:DropDownList ID="ddl_adcity" runat="server" CssClass="form-control"
                                    onselectedindexchanged="ddl_adcity_SelectedIndexChanged">
                            <asp:ListItem Text="Select City" Value="Select City"></asp:ListItem>
                            </asp:DropDownList>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </div>
                            <div class="col-md-4 form-group">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                            <asp:DropDownList ID="ddl_adcitycopy" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select City" Value="Select City"></asp:ListItem>
                            </asp:DropDownList>
                                
                            </ContentTemplate>
                            </asp:UpdatePanel>
                                
                            </div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server">Flat Number : <span style="color:Red;">*</span></asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_flatno" runat="server" CssClass="form-control" onselectedindexchanged="txt_flatno_TextChanged"
                                    AutoPostBack="false" OnTextChanged="txt_flatno_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_flatnocopy" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="houseno" runat="server">Flat / House Name :</asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_housename" runat="server" CssClass="form-control" onselectedindexchanged="txt_housename_TextChanged"
                                    AutoPostBack="false" OnTextChanged="txt_housename_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_hnamec" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_hno" runat="server" CssClass="">House Number / Plot Number : </asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_hno" runat="server" CssClass="form-control" AutoPostBack="true"
                                    onselectedindexchanged="txt_hno_TextChanged" OnTextChanged="txt_hno_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_hnoc" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_street" runat="server" CssClass="">Street :<span style="color:Red;">*</span></asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_street" runat="server" CssClass="form-control" AutoPostBack="false"
                                    onselectedindexchanged="txt_street_TextChanged" OnTextChanged="txt_street_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_streetc" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_locality" runat="server" CssClass="">Locality :</asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_locality" runat="server" CssClass="form-control" AutoPostBack="false"
                                    onselectedindexchanged="txt_locality_TextChanged" OnTextChanged="txt_locality_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_localityc" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_village" runat="server" CssClass="">Village / Town / City</asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_village" runat="server" CssClass="form-control" AutoPostBack="false"
                                    onselectedindexchanged="txt_village_TextChanged" OnTextChanged="txt_village_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_villagec" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_taluka" runat="server" CssClass="">Taluka / Mandal</asp:Label></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_taluka" runat="server" CssClass="form-control" AutoPostBack="false"
                                    onselectedindexchanged="txt_taluka_TextChanged" OnTextChanged="txt_taluka_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_talukac" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox></div>
                            <br />
                            <br />
                            <div class="col-md-4">
                                <asp:Label ID="lbl_pincode" runat="server" CssClass="">Pincode </asp:Label><span
                                    style="color: Red;">*</span></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_pincode" runat="server" CssClass="form-control" AutoPostBack="false"
                                    onselectedindexchanged="txt_pincode_TextChanged" OnTextChanged="txt_pincode_TextChanged1"></asp:TextBox></div>
                            <div class="col-md-4 form-group">
                                <asp:TextBox ID="txt_c_pincode" runat="server" CssClass="form-control" AutoPostBack="false"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="width: 97%">
                <div class="panel panel-primary ">
                    <div class="panel-heading licence3">
                        <span>Class of vehicles :</span> <span class="pull-right">Expand/Collapse
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image for rto/plus.png" CssClass="img_plus3" />
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/Image for rto/minus.png" CssClass="hide img_minus3" /></span>
                    </div>
                    <div class="panel-body licence_content3" style="display: none;">
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_mc50cc" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_mc55cc" runat="server" CssClass="control-label colorLL" Text="MOTOR CYCLE LESS THAN 50CC(MC50CC)"></asp:Label>
                            </div>
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_mcwog" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_mcwog" runat="server" CssClass="control-label colorLL" Text="MOTOR CYCLE WITHOUT GEAR(NON TRANSPORT)(MCWOG)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_mcwg" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_mcwg" runat="server" CssClass="control-label colorLL" Text="MOTOR CYCLE WITH GEAR(NON TRANSPORT)(MCWG)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_lmv" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_lmv" runat="server" CssClass="control-label colorLL" Text="LMV-NT-CAR(LMV)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_3wnt" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_3wnt" runat="server" CssClass="control-label colorLL" Text="LMV -3 WHEELER NT(3W-NT)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_trctor" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_trctor" runat="server" CssClass="control-label colorLL" Text="LMV-TRACTOR-NT(TRCTOR)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_invcrg" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_invcrg" runat="server" CssClass="control-label colorLL" Text="INVALID CARRIAGE VEHICLE(INVCRG)"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:CheckBox ID="cbx_rdrlr" CssClass="pull-right" runat="server" />
                            </div>
                            <div class="col-md-5">
                                <asp:Label ID="lbl_rdrlr" runat="server" CssClass="control-label colorLL" Text="ROAD ROLLER(RDRLR)"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container" style="width: 97%">
                <div class="panel panel-primary ">
                    <div class="panel-heading licence4">
                        <span>Documents :</span> <span class="pull-right">Expand/Collapse
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image for rto/plus.png" CssClass="img_plus4" />
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Image for rto/minus.png" CssClass="hide img_minus4" /></span>
                    </div>
                    <div class="panel-body licence_content4" style="display: none">
                        <div class="col-md-10">
                            <span class="colorLL">List of Enclosures (</span><span style="color: Red">Applicant
                                should produce the original documents before the Licensing Authority at the office.</span><span
                                    class="colorLL">)</span>
                        </div>
                        <div class="col-md-2">
                            <span style="color: Red">Upload only PNG/JPEG less than 100 KB</span>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-2">
                            <samp class="colorLL pull-right" style="font-size: 17px">
                                Age Proof:</samp>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txt_ageCNo" CssClass="form-control" runat="server" placeholder="LICENCE NUMBER/CERTIFICATE NO"
                                    Width="100%" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txt_ageCName" runat="server" CssClass="form-control" placeholder="ISSUING AUTHORITY"
                                    Width="100%" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control btn btn-primary" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <samp class="colorLL pull-right" style="font-size: 15px">
                                Address Proof:</samp>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txt_addressCno" CssClass="form-control" runat="server" placeholder="LICENCE NUMBER/CERTIFICATE NO"
                                    Width="100%" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:TextBox ID="txt_addressCname" runat="server" CssClass="form-control" placeholder="ISSUING AUTHORITY"
                                    Width="100%" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control btn btn-primary" />
                            </div>
                        </div>
                        <div class="col-md-10">
                            <span class="colorLL">1) I have submitted along with my application for Learner's Licence
                                the written consent of my parent/guardian:-</span>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton1" CssClass="colorLL" GroupName="rbtn_1" runat="server" /><span
                                    class="colorLL">&nbsp; YES</span>
                            </div>
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton2" CssClass="colorLL" GroupName="rbtn_1" runat="server"
                                    Checked="True" /><span class="colorLL">&nbsp; NO</span>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-10">
                            <span class="colorLL">2) I have submitted along with my application for Learner's Licence
                                , I enclosed all the Necessary Enclosures / Certificates:-</span>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton3" CssClass="colorLL" GroupName="rbtn_2" runat="server"
                                    Checked="True" /><span class="colorLL">&nbsp; YES</span>
                            </div>
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton4" CssClass="colorLL" GroupName="rbtn_2" runat="server" /><span
                                    class="colorLL">&nbsp; NO</span>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-10">
                            <span class="colorLL">3) I am exempted from the Medical test under rule 6 of the Central
                                Motor Vehicles Rules, 1989 :-</span>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton5" CssClass="colorLL" GroupName="rbtn_3" runat="server" /><span
                                    class="colorLL">&nbsp; YES</span>
                            </div>
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton6" CssClass="colorLL" GroupName="rbtn_3" runat="server"
                                    Checked="True" /><span class="colorLL">&nbsp; NO</span>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-10">
                            <span class="colorLL">4) I am exempted from preliminary test under rule 11(2) of the
                                Central Motor Vehicles Rules, 1989 :-</span>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton7" CssClass="colorLL" GroupName="rbtn_4" runat="server" /><span
                                    class="colorLL">&nbsp; YES</span>
                            </div>
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton8" CssClass="colorLL" GroupName="rbtn_4" runat="server"
                                    Checked="True" /><span class="colorLL">&nbsp; NO</span>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-10">
                            <span class="colorLL">5) I have been convicted / disqualified / my Licence was cancelled
                                /suspended / my Licence was revoked</span>
                        </div>
                        <div class="form-group">
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton9" CssClass="colorLL" GroupName="rbtn_5" runat="server" /><span
                                    class="colorLL">&nbsp; YES</span>
                            </div>
                            <div class="col-md-1">
                                <asp:RadioButton ID="RadioButton10" CssClass="colorLL" GroupName="rbtn_5" runat="server"
                                    Checked="True" /><span class="colorLL">&nbsp; NO</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Button ID="btn_submitLL" runat="server" CssClass="btn btn-success form-control pull-right"
                        Text="Submit" Width="25%" OnClick="btn_submitLL_Click" />
                </div>
            </div>
            <div class="col-md-6">
                <asp:Button ID="btn_back" runat="server" CssClass="btn btn-warning form-control pull-left"
                    Text="Back" Width="25%" OnClick="btn_back_Click" />
            </div>
        </div>
    </body>
    </html>
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script>

        $(document).ready(function () {


            $("#ContentPlaceHolder1_txt_dob").focusout(function () {
                var dob = $("#ContentPlaceHolder1_txt_dob").val();
                dob = new Date(dob);
                var today = new Date();
                var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
                $("#ContentPlaceHolder1_txt_age").val(age);
            });

            $(".licence1").click(function () {

                var data = $(".licence_content1").attr("style");
                if (data == "") {
                    $(".img_minus1").addClass("hide");
                    $(".img_plus1").removeClass("hide");
                }
                else {
                    $(".img_minus1").removeClass("hide");
                    $(".img_plus1").addClass("hide");
                }

                $(".img_plus2").removeClass("hide");
                $(".img_plus3").removeClass("hide");
                $(".img_plus4").removeClass("hide");
                $(".img_minus2").addClass("hide");
                $(".img_minus3").addClass("hide");
                $(".img_minus4").addClass("hide");

                $(".licence_content1").slideToggle();
                $(".licence_content2").slideUp();
                $(".licence_content3").slideUp();
                $(".licence_content4").slideUp();
                $(".licence_content5").slideUp();



            });
            $(".licence2").click(function () {

                

                var birthplace = $("#ContentPlaceHolder1_txt_birthplace").val();
                var firstname = $("#ContentPlaceHolder1_txt_fn").val();
                var lastname = $("#ContentPlaceHolder1_txt_fnrelation").val();
                var mobile = $("#ContentPlaceHolder1_txt_mobn").val();
                var dob = $("#ContentPlaceHolder1_txt_dob").val();
                var age = $("#ContentPlaceHolder1_txt_age").val();

                var state = $("#ContentPlaceHolder1_drd_state").val();
                var rto = $("#ContentPlaceHolder1_drd_select_RTO").val();
                var relation = $("#ContentPlaceHolder1_drd_relation").val();
                var gender = $("#ContentPlaceHolder1_drd_gender").val();
                var country = $("#ContentPlaceHolder1_dr_Countryofbirth").val();

                if (state == "Select State") {
                    alert("Please Select State");
                    return false;
                }






                if (firstname == "") {
                    alert("Please fill first name");
                    return false;
                }
                if (relation == -1) {
                    alert("Please Select Relationship");
                    return false;
                }
                if (lastname == "") {
                    alert("Please fill relation first name");
                    return false;
                }
                if (gender == -1) {
                    alert("Please Select Gender");
                    return false;
                }
                if (mobile == "") {
                    alert("Please fill mobile number");
                    return false;
                }

                if (ValidateMobile(mobile)) {
                    c = 1;
                }
                else {
                    alert("Please enter 10 digit mobile no");
                    return false;
                }
                if (birthplace == "") {
                    alert("Please fill birth place");
                    return false;
                }
                if (dob == "") {
                    alert("Please fill Date of birth");
                    return false;
                }



                if (age == "") {
                    alert("Please fill age details");
                    return false;
                }
                if (age < 18) {
                    alert("Age must be 18 or below");
                    return false;
                }


                if (country == "Select Country") {
                    alert("Please Select Country");
                    return false;
                }

                if (ValidateDate(dob)) {
                    var a = "1";
                }
                else {
                    alert("Please enter date in given format");
                    return false;
                }

                var data = $(".licence_content2").attr("style");
                if (data == "") {
                    $(".img_minus2").addClass("hide");
                    $(".img_plus2").removeClass("hide");
                }
                else {
                    $(".img_minus2").removeClass("hide");
                    $(".img_plus2").addClass("hide");
                }

                $(".img_plus4").removeClass("hide");
                $(".img_plus3").removeClass("hide");
                $(".img_plus1").removeClass("hide");
                $(".img_minus4").addClass("hide");
                $(".img_minus3").addClass("hide");
                $(".img_minus1").addClass("hide");

                $(".licence_content2").slideToggle();
                $(".licence_content1").slideUp();
                $(".licence_content3").slideUp();
                $(".licence_content4").slideUp();
                $(".licence_content5").slideUp();


            });
            $(".licence3").click(function () {

                var birthplace = $("#ContentPlaceHolder1_txt_birthplace").val();
                var firstname = $("#ContentPlaceHolder1_txt_fn").val();
                var lastname = $("#ContentPlaceHolder1_txt_fnrelation").val();
                var mobile = $("#ContentPlaceHolder1_txt_mobn").val();
                var dob = $("#ContentPlaceHolder1_txt_dob").val();
                var age = $("#ContentPlaceHolder1_txt_age").val();

                var state = $("#ContentPlaceHolder1_drd_state").val();
                var rto = $("#ContentPlaceHolder1_drd_select_RTO").val();
                var relation = $("#ContentPlaceHolder1_drd_relation").val();
                var gender = $("#ContentPlaceHolder1_drd_gender").val();
                var country = $("#ContentPlaceHolder1_dr_Countryofbirth").val();

                var adstate = $("#ContentPlaceHolder1_ddl_state").val();
                var adstatec = $("#ContentPlaceHolder1_ddlc_state").val();
                var adcity = $("#ContentPlaceHolder1_ddl_adcity").val();
                var adcitycopy = $("#ContentPlaceHolder1_ddl_adcitycopy").val();

                

                if (state == "Select State") {
                    alert("Please Select State");
                    return false;
                }






                if (firstname == "") {
                    alert("Please fill first name");
                    return false;
                }
                if (relation == -1) {
                    alert("Please Select Relationship");
                    return false;
                }
                if (lastname == "") {
                    alert("Please fill relation first name");
                    return false;
                }
                if (gender == -1) {
                    alert("Please Select Gender");
                    return false;
                }
                if (mobile == "") {
                    alert("Please fill mobile number");
                    return false;
                }

                if (ValidateMobile(mobile)) {
                    c = 1;
                }
                else {
                    alert("Please enter 10 digit mobile no");
                    return false;
                }
                if (birthplace == "") {
                    alert("Please fill birth place");
                    return false;
                }
                if (dob == "") {
                    alert("Please fill Date of birth");
                    return false;
                }



                if (age == "") {
                    alert("Please fill age details");
                    return false;
                }
                if (age < 18) {
                    alert("Age must be 18 or below");
                    return false;
                }


                if (country == "Select Country") {
                    alert("Please Select Country");
                    return false;
                }

                if (ValidateDate(dob)) {
                    var a = "1";
                }
                else {
                    alert("Please enter date in given format");
                    return false;
                }

                
                var fno = $("#ContentPlaceHolder1_txt_flatno").val();

                var pin = $("#ContentPlaceHolder1_txt_pincode").val();

                var dis1 = $("#ContentPlaceHolder1_txt_discopy").val();
                var fno1 = $("#ContentPlaceHolder1_txt_flatnocopy").val();
                var pin1 = $("#ContentPlaceHolder1_txt_c_pincode").val();
                var street = $("ContentPlaceHolder1_txt_street").val();
                var street1 = $("#ContentPlaceHolder1_txt_streetc").val();

                if (adstate == "Select State") {
                    alert("Please Select State Of Permanent Address");
                    return false;
                }
                if (adstatec == "Select State") {
                    alert("Please Select State Of Present Address");
                    return false;
                }
                if (adcity == "Select City") {
                    alert("Please Select City Of Permanent Address");
                    return false;
                }
                if (adcitycopy == "Select City") {
                    alert("Please Select City Of Present Address");
                    return false;
                }
                if (fno == "") {
                    alert("Please enter Flat Number of Permanent Address");
                    return false;
                }
                if (fno1 == "") {
                    alert("Please enter Flat Number of Present Address");
                    return false;
                }
                if (street == "") {
                    alert("Please enter street name of Permanent Address");
                    return false;
                }
                if (street1 == "") {
                    alert("Please enter street name of Present Address");
                    return false;
                }
                if (pin == "") {
                    alert("Please enter PinCode of Permanent Address");
                    return false;
                }





                if (pin1 == "") {
                    alert("Please enter PinCode of Permanent Address");
                    return false;
                }


                if (ValidatePincode(pin)) {
                    c = 1;
                }
                else {
                    alert("Please valid Pincode");
                    return false;
                }


                var data = $(".licence_content3").attr("style");
                if (data == "") {
                    $(".img_minus3").addClass("hide");
                    $(".img_plus3").removeClass("hide");
                }
                else {
                    $(".img_minus3").removeClass("hide");
                    $(".img_plus3").addClass("hide");
                }

                $(".img_plus2").removeClass("hide");
                $(".img_plus4").removeClass("hide");
                $(".img_plus1").removeClass("hide");
                $(".img_minus2").addClass("hide");
                $(".img_minus4").addClass("hide");
                $(".img_minus1").addClass("hide");

                $(".licence_content3").slideToggle();
                $(".licence_content2").slideUp();
                $(".licence_content1").slideUp();
                $(".licence_content4").slideUp();
                $(".licence_content5").slideUp();
                 

            });
            $(".licence4").click(function () {

                var birthplace = $("#ContentPlaceHolder1_txt_birthplace").val();
                var firstname = $("#ContentPlaceHolder1_txt_fn").val();
                var lastname = $("#ContentPlaceHolder1_txt_fnrelation").val();
                var mobile = $("#ContentPlaceHolder1_txt_mobn").val();
                var dob = $("#ContentPlaceHolder1_txt_dob").val();
                var age = $("#ContentPlaceHolder1_txt_age").val();

                var state = $("#ContentPlaceHolder1_drd_state").val();
                var rto = $("#ContentPlaceHolder1_drd_select_RTO").val();
                var relation = $("#ContentPlaceHolder1_drd_relation").val();
                var gender = $("#ContentPlaceHolder1_drd_gender").val();
                var country = $("#ContentPlaceHolder1_dr_Countryofbirth").val();

                var adstate = $("#ContentPlaceHolder1_ddl_state").val();
                var adstatec = $("#ContentPlaceHolder1_ddlc_state").val();
                var adcity = $("#ContentPlaceHolder1_ddl_adcity").val();
                var adcitycopy = $("#ContentPlaceHolder1_ddl_adcitycopy").val();

                if (state == "Select State") {
                    alert("Please Select State");
                    return false;
                }





                if (firstname == "") {
                    alert("Please fill first name");
                    return false;
                }
                if (relation == -1) {
                    alert("Please Select Relationship");
                    return false;
                }
                if (lastname == "") {
                    alert("Please fill relation first name");
                    return false;
                }
                if (gender == -1) {
                    alert("Please Select Gender");
                    return false;
                }
                if (mobile == "") {
                    alert("Please fill mobile number");
                    return false;
                }

                if (ValidateMobile(mobile)) {
                    c = 1;
                }
                else {
                    alert("Please enter 10 digit mobile no");
                    return false;
                }
                if (birthplace == "") {
                    alert("Please fill birth place");
                    return false;
                }
                if (dob == "") {
                    alert("Please fill Date of birth");
                    return false;
                }



                if (age == "") {
                    alert("Please fill age details");
                    return false;
                }
                if (age < 18) {
                    alert("Age must be 18 or below");
                    return false;
                }


                if (country == "Select Country") {
                    alert("Please Select Country");
                    return false;
                }

                if (ValidateDate(dob)) {
                    var a = "1";
                }
                else {
                    alert("Please enter date in given format");
                    return false;
                }

                
                var fno = $("#ContentPlaceHolder1_txt_flatno").val();

                var pin = $("#ContentPlaceHolder1_txt_pincode").val();

                var dis1 = $("#ContentPlaceHolder1_txt_discopy").val();
                var fno1 = $("#ContentPlaceHolder1_txt_flatnocopy").val();
                var pin1 = $("#ContentPlaceHolder1_txt_c_pincode").val();
                var street = $("ContentPlaceHolder1_txt_street").val();
                var street1 = $("#ContentPlaceHolder1_txt_streetc").val();

                if (adstate == "Select State") {
                    alert("Please Select State Of Permanent Address");
                    return false;
                }
                if (adstatec == "Select State") {
                    alert("Please Select State Of Present Address");
                    return false;
                }
                if (adcity == "Select City") {
                    alert("Please Select City Of Permanent Address");
                    return false;
                }
                if (adcitycopy == "Select City") {
                    alert("Please Select City Of Present Address");
                    return false;
                }
                if (fno == "") {
                    alert("Please enter Flat Number of Permanent Address");
                    return false;
                }
                if (fno1 == "") {
                    alert("Please enter Flat Number of Present Address");
                    return false;
                }
                if (street == "") {
                    alert("Please enter street name of Permanent Address");
                    return false;
                }
                if (street1 == "") {
                    alert("Please enter street name of Present Address");
                    return false;
                }
                if (pin == "") {
                    alert("Please enter PinCode of Permanent Address");
                    return false;
                }


                
                
                
                if (pin1 == "") {
                    alert("Please enter PinCode of Permanent Address");
                    return false;
                }


                if (ValidatePincode(pin)) {
                    c = 1;
                }
                else {
                    alert("Please valid Pincode");
                    return false;
                }

                var data = $(".licence_content4").attr("style");
                if (data == "") {
                    $(".img_minus4").addClass("hide");
                    $(".img_plus4").removeClass("hide");
                }
                else {
                    $(".img_minus4").removeClass("hide");
                    $(".img_plus4").addClass("hide");
                }
                $(".img_plus2").removeClass("hide");
                $(".img_plus3").removeClass("hide");
                $(".img_plus1").removeClass("hide");
                $(".img_minus2").addClass("hide");
                $(".img_minus3").addClass("hide");
                $(".img_minus1").addClass("hide");
                $(".licence_content4").slideToggle();
                $(".licence_content2").slideUp();
                $(".licence_content3").slideUp();
                $(".licence_content1").slideUp();
                $(".licence_content5").slideUp();

            });

            $('#ContentPlaceHolder1_txt_birthplace,#ContentPlaceHolder1_txt_discopy,#ContentPlaceHolder1_txt_fn,#ContentPlaceHolder1_txt_mn,#ContentPlaceHolder1_txt_ln,#ContentPlaceHolder1_txt_fnrelation,#ContentPlaceHolder1_txt_mnrelation,#ContentPlaceHolder1_txt_lnrelation,#ContentPlaceHolder1_txt_em,#ContentPlaceHolder1_txt_dis,#ContentPlaceHolder1_txt_housename,#ContentPlaceHolder1_txt_street,#ContentPlaceHolder1_txt_village,#ContentPlaceHolder1_txt_taluka').keypress(function (event) {
                var key = event.which;

                if ((key >= 65 && key <= 97) || (key >= 97 && key <= 122) || key == 8 || key == 32) {
                    return true;
                }
                else {
                    event.preventDefault();
                }
            });


            $('#ContentPlaceHolder1_txt_marks2,#ContentPlaceHolder1_txt_flatnocopy,#ContentPlaceHolder1_txt_c_pincode,#ContentPlaceHolder1_txt_age,#ContentPlaceHolder1_txt_pn,#ContentPlaceHolder1_txt_ad,#ContentPlaceHolder1_txt_mobn,#ContentPlaceHolder1_txt_flatno,#ContentPlaceHolder1_txt_hno,#ContentPlaceHolder1_txt_pincode').keypress(function (event) {
                var key = event.which;

                if ((key >= 48 && key <= 57) || key == 8) {
                    return true;
                }
                else {
                    event.preventDefault();
                }
            });
            $('#ContentPlaceHolder1_txt_dob').keypress(function (event) {
                var key = event.which;

                if ((key >= 48 && key <= 57) || key == 8 || key == 47) {
                    return true;
                }
                else {
                    event.preventDefault();
                }
            });

        });

        function ValidateDate(dtValue) {
            var dtRegex = new RegExp(/\b\d{1,2}[\/-]\d{1,2}[\/-]\d{4}\b/);
            return dtRegex.test(dtValue);
        }

        function ValidateMobile(dtValue) {
            var dtRegex = new RegExp(/^\d{10}$/);
            return dtRegex.test(dtValue);
        }
        function ValidatePincode(dtValue) {
            var dtRegex = new RegExp(/^[1-9][0-9]{5}$/);
            return dtRegex.test(dtValue);
        }
        

    </script>
</asp:Content>
