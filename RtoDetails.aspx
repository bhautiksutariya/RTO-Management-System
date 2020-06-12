<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.master" AutoEventWireup="true"
    CodeFile="RtoDetails.aspx.cs" Inherits="RtoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h2>
            RTO DETAILS</h2>
        <hr />
        <br />
        

        


        <asp:DropDownList ID="ddl_state" runat="server" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged"
            CssClass="dropdown selectcity" AutoPostBack="true">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="ddl_city" runat="server" CssClass="dropdown selectcity" AutoPostBack="true">
            <asp:ListItem Text="Select City"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary btn-md selectcity"
            Text="Submit" />
        <br />
        <br />
        <center>
        <div class="row">
            <div class="center-block ">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="10" ForeColor="#333333"
                        GridLines="None" CellSpacing="2" Height="30px" Width="800px">
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
                    </asp:GridView>
                </div>
            </div>
        </div>
    </center>
    </center>
</asp:Content>
