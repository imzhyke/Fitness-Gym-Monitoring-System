<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_Dashboard.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" col-8 " style="margin:auto">
        <div class="row d-flex justify-content-around">
            <div class="col-3 card p-2">
                <p>Employee</p>
                <asp:Label ID="empNumLbl" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>
           
            <div class="col-3 card p-2">
                <p>Membership</p>
                <asp:Label ID="Label1" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>

            <div class="col-3 card p-2">
                <p>Clients</p>
                <asp:Label ID="Label2" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>
        </div>
        <div class="row">

            <div runat="server" id="gridview" class="gridview mx-auto">
                            <asp:GridView ID="gridview_report" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="8" CellSpacing="10" Width="500px" AutoGenerateColumns="False" Font-Size="15px" HorizontalAlign="Center" Font-Bold="True"  >
                                <Columns>
                                    <asp:BoundField DataField="CNAME" HeaderText="CLIENT NAME" ReadOnly="True" SortExpression="CNAME" />
                                    <asp:BoundField DataField="CONTACTNUM" HeaderText="CONTACT NUMBER" SortExpression="CONTACTNUM" />
                                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                                    <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                                    <asp:BoundField DataField="AMT" HeaderText="AMOUNT" SortExpression="AMT" />
                                    <asp:BoundField DataField="TDATE" HeaderText="TRANSACTION DATE" SortExpression="TDATE" />
                
                                </Columns>
                
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" Font-Size="9" />
                                <FooterStyle BackColor="#5D7B9D" Font-Size="9" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Size="9"  Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" Font-Size="9"  ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" Font-Size="9"  ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
  
                            <asp:SqlDataSource ID="dbStudents_Source" runat="server"></asp:SqlDataSource>
                        </div>

        </div>
    </div>
</asp:Content>
