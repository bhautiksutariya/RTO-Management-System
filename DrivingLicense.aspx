<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DrivingLicense.aspx.cs" Inherits="DrivingLicense" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appintment Booking</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">



    <div class="col-md-12">
    <h2>Appointment Booking</h2>
    <hr style="Color:#337ab7;"/>
    </div>
    <div class="col-md-12">
        
        
    <center>
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged">
        
        <TodayDayStyle ForeColor="Red" BackColor="Aqua"></TodayDayStyle>
        <DayStyle Font-Bold="True" 
                  HorizontalAlign="Left" 
                  Height="50px" 
                  BorderWidth="1px" 
                  BorderStyle="Solid" 
                  BorderColor="#337ab7" 
                  Width="90px" 
                  VerticalAlign="Top" 
                  BackColor="white"></DayStyle>
        <NextPrevStyle ForeColor="Blue"/>
        <DayHeaderStyle Font-Size="Large" Font-Bold="True" BorderWidth="1px" ForeColor="Brown" BorderStyle="Solid" BorderColor="#337ab7" Width="100px" BackColor="#e5e3e0"></DayHeaderStyle>
        <TitleStyle Font-Size="Large" Font-Bold="True" BorderWidth="1px" BorderStyle="Solid" BorderColor="#337ab7" BackColor="#b5b3b1"></TitleStyle>
        
        
        </asp:Calendar>
        <br /><br /><br /><br />
        <asp:Button ID="btn_submit" runat="server"  Text="Submit" 
            onclick="btn_submit_Click" CssClass="btn btn-primary btn-lg"/>
    </center>
    </div>
    </form>
</body>
</html>
