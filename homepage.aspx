<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-12" style="width: 100%">
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="pull-right welcome"></asp:Label>
    </div>
    <div class="pull-right" style="position: absolute; width: 100%">
        <span>
            <asp:ImageButton ID="login" runat="server" ImageUrl="~/Image for rto/login-but.png"
                CssClass="buttoninimage btn pull-right" OnClick="login_Click" />
        </span><span>
            <asp:ImageButton ID="logout" runat="server" ImageUrl="~/Image for rto/Logout.png"
                Visible="false" CssClass="buttoninimage btn pull-right resizelogout" OnClick="Logout_click" /></span>
    </div>
    <div class="homepage_mer">
        <marquee id="MyMovingText2" runat="server" direction="left" scrollamount="8" onmouseover="this.stop();"
            onmouseout="this.start();">
           <span>welcome to Road Transport(may i help you )</span> </marquee>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div style="background-color: White; border: 2px solid #008ae6; height: 501px;" class="col-md-4">
                <center style="background-color: #e6f5ff" class="table_rto_home">
                    Road Transport(Licence)Services</center>
                <br />
                <ul style="font-size: 16px;">
                    <li>Apply for online form</li>
                    <ul>
                        <br />
                        <li><a href="LearningLicence.aspx" style="text-decoration: none;">Application for New
                            Learning Licenses </a></li>
                        <li><a href="ApplyDL.aspx" style="text-decoration: none;">Application for New Driving
                            Licenses</a></li>
                    </ul>
                    <br />
                    <li>Download Forms</li>
                    <ul>
                        <li><a href="pdf/Undertaking_LL.pdf" style="text-decoration: none;">Undertaking LL</a></li>
                        <li><a href="pdf/Undertaking_DL.pdf" style="text-decoration: none;">Undertaking DL</a></li>
                    </ul>
                    <br />
                    <li><a href="UserStatus.aspx" style="text-decoration: none;">Check Learning License
                        Status</a></li>
                    <br />
                    <li><a href="showDLDetails.aspx" style="text-decoration: none;">Check Driving License
                        Status</a></li>
                </ul>
                <br />
            </div>
            <div style="background-color: White; height: 501px; overflow: hidden; border: 2px solid #008ae6;"
                class="table_rto_home col-md-4">
                <center style="background-color: #e6f5ff;">
                    Information / Notification</center>
                <marquee id="MyMovingText" runat="server" direction="up" class="mar_text" scrollamount="3">
           <b>
                      Road Transport and Vahan are the two flagship applications of MoRTH. 
                      These applications are brought under Mission Mode Project by NeGP
                      which are Driven by Ministry of Road Transport & Highways (MoRTH).
            <br />
            <br />
            Road Transport & Vahan are designed, developed, implemented and supported by NIC. 
            These applications are implemented across 1000+ RTOs of the country. 
            The Driving Licence data is consolidated at State and National level 
            through periodic replication process.
            <br />
            <br />
            RTO-on-Web facilitates public to submit applications for LL & DL 
            related transactions thru this mode. The application data is in turn transferred to
            the remote RTO/DTOs of the states for further processing of the request
             (submitted thru ONLINE) at the local RTO/DTO Office.
              <br />
              <br />
            Services like E-payment GW, CSC , SSDG and Service partners are also being provided.</b>
            </marquee>
            </div>
            <div style="background-color: White; height: 501px; border: 2px solid #008ae6;" class="col-md-4">
                <center style="background-color: #e6f5ff;" class="table_rto_home">
                    National Register(DL) Queries</center>
                    <br />
                <ul>
                    <li><a href="RtoDetails.aspx" style="text-decoration: none;">Search RTO</a></li>
                    <br />
                    <li><a href="Video.aspx" style="text-decoration: none;">Driving License Video</a></li>
                    <br />
                    <li><a href="Questionbank.aspx" style="text-decoration: none;">LL Question Bank</a></li>
                    <br />
                    <li><a href="FAQ.aspx" style="text-decoration: none;">FAQ</a></li>
                    <br />
                    <li><a href="Contactus.aspx" style="text-decoration: none;">Contact Us</a></li>
                    <br />
                </ul>
                
            </div>
        </div>
    </div>
</asp:Content>
