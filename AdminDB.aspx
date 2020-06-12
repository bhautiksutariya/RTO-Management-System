<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDB.aspx.cs" Inherits="AdminDB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" href="css/bootstrap.min.css" />
    <link rel="Stylesheet" href="font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
  <h3>Welcome Admin,</h3>
  <div>
    <asp:LinkButton CssClass="pull-right" ID="logout" runat="server" Text="Logout" 
          onclick="logout_Click"/>
    </div>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#ll">Learning License</a></li>
    <li><a data-toggle="tab" href="#dl">Driving 
        
        License</a></li>
  </ul>

  <div class="tab-content">
    <div id="ll" class="tab-pane fade in active">
      
      <br />
      <br />
      <br />
      
      <asp:ScriptManager ID="mng1" runat="server"></asp:ScriptManager>
      
      <asp:TextBox ID="srch_ll" runat="server" CssClass="srch" placeholder="Enter First Name"></asp:TextBox>
      <asp:Button ID="btn_ll" runat="server" Text="Search" CssClass="btn btn-primary" onclick="btn_ll_Click" />
      
      
      
      
      <br />
      <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="5" 
            Width="100%" onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />



            <Columns>

            <asp:TemplateField HeaderText="LL.NO" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_lid" runat="server" Text='<%# Eval("lid") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_lid" runat="server" Text='<%# Eval("lid") %>' Enabled="false"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="FName" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_fname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_fname" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="LName" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_lname" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_lname" runat="server" Text='<%# Eval("lname") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Address" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_address" runat="server" Text='<%# Eval("paddress") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_address" runat="server" Text='<%# Eval("paddress") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="DOB" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_dob" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_dob" runat="server" Text='<%# Eval("DOB") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Appointment Date" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_adate" runat="server" Text='<%# Eval("appointment_date") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_adate" runat="server" Text='<%# Eval("appointment_date") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Status" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_status" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <%--<asp:TextBox ID="txt_status" runat="server" Text='<%# Eval("status") %>'></asp:TextBox>--%>
                    <asp:DropDownList ID="ddl_status" runat="server">
                    <asp:ListItem Text="Pendding" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="pass" Value="1"></asp:ListItem>
                    <asp:ListItem Text="fail" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>
           

            <asp:TemplateField HeaderText="Operation" ControlStyle-ForeColor="ActiveCaptionText" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:LinkButton ID="l1" runat="server" CommandName="edit" Text="Edit"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="l2" runat="server" CommandName="update" Text="Update"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
            
            
            
            </Columns>


        </asp:GridView>
        
    </div>
    <div id="dl" class="tab-pane fade">
      

      <br />
      <br />
      <br />
      
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
      <asp:TextBox ID="srch_dl" runat="server" CssClass="srch" placeholder="Enter Learning License NO"></asp:TextBox>
      <asp:Button ID="btn_dl" runat="server" Text="Search" CssClass="btn btn-primary" onclick="btn_dl_Click" />
      </ContentTemplate>
      
      </asp:UpdatePanel>
      
      <br />
      <br />
      
      <asp:UpdatePanel ID="pnl2" runat="server">
      <ContentTemplate>
      
      <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="100%" AutoGenerateColumns="false"
            onrowcancelingedit="GridView2_RowCancelingEdit" 
            onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
            onrowupdating="GridView2_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />


            <Columns>

            <asp:TemplateField HeaderText="DL.NO" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_did1" runat="server" Text='<%# Eval("did") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_did1" runat="server" Text='<%# Eval("did") %>' Enabled="false"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="LL.NO" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_lid1" runat="server" Text='<%# Eval("lid") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_lid1" runat="server" Text='<%# Eval("lid") %>' Enabled="false"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            
            <asp:TemplateField HeaderText="Appointment Date" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_adate1" runat="server" Text='<%# Eval("appointment_date") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_adate1" runat="server" Text='<%# Eval("appointment_date") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Status" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:Label ID="lbl_status1" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <%--<asp:TextBox ID="txt_status" runat="server" Text='<%# Eval("status") %>'></asp:TextBox>--%>
                    <asp:DropDownList ID="ddl_status1" runat="server">
                    <asp:ListItem Text="Pendding" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="pass" Value="1"></asp:ListItem>
                    <asp:ListItem Text="fail" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>
           

            <asp:TemplateField HeaderText="Operation" ControlStyle-ForeColor="ActiveCaptionText" ControlStyle-CssClass="gridpat">
                <ItemTemplate>
                    <asp:LinkButton ID="l1" runat="server" CommandName="edit" Text="Edit"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="delete" Text="Delete" ></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="l2" runat="server" CommandName="update" Text="Update"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
            
            
            
            </Columns>


        </asp:GridView>
      
      </ContentTemplate>
      
      
      </asp:UpdatePanel>
      
        
    </div>
    
  </div>
</div>
    </div>
    
    </form>
</body>
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
