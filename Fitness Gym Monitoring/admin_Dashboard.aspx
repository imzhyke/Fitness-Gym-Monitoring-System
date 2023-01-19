<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_Dashboard.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">v

    <link href="bootstrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />

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

<%--            <div runat="server" id="gridview" class="gridview mx-auto">
                <asp:GridView ID="gridview_report" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="8" CellSpacing="10" Width="800px" AutoGenerateColumns="False" Font-Size="15px" HorizontalAlign="Center" Font-Bold="True" OnSelectedIndexChanged="gridview_report_SelectedIndexChanged" AllowPaging="False" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="CNAME" HeaderText="CLIENT NAME" ReadOnly="True" SortExpression="CNAME" />
                                    <asp:BoundField DataField="CONTACTNUM" HeaderText="CONTACT NUMBER" SortExpression="CONTACTNUM" />
                                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                                    <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCT" SortExpression="PRODUCT" />
                                    <asp:BoundField DataField="AMT" HeaderText="AMOUNT" SortExpression="AMT" />
                                    <asp:BoundField DataField="TDATE" Heade``   QrText="TRANSACTION DATE" SortExpression="TDATE" />
                
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
                        </div>--%>
       <div class="col-lg">
           <div class="card p-2">
    <asp:Repeater ID="rptCustomers" runat="server">
        <HeaderTemplate>
            <table id="example" class="table table-striped" cellspacing="" width="100%">
                <thead>
                    <tr>
                        <th>
                            Customer ID
                        </th>
                        <th>
                            Contact Name
                        </th>
                        <th>
                            Contact Title
                        </th>
                    </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="lblFirstname" runat="server" Text='<%# Eval("CNAME") %>' />
                </td>
                <td>
                    <asp:Label ID="lblLastname" runat="server" Text='<%# Eval("product") %>' />
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("amt") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </tbody> </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
<div>
    <script src="datatables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>
   
    <script type="text/javascript">
        //$(function () {
        //    $('#example').DataTable({
        //        responsive: {
        //            details: {
        //                display: $.fn.dataTable.Responsive.display.modal({
        //                    header: function (row) {
        //                        var data = row.data();
        //                        return 'Details for ' + data[0] + ' ' + data[1];
        //                    }
        //                }),
        //                renderer: $.fn.dataTable.Responsive.renderer.tableAll({
        //                    tableClass: 'ui table'
        //                })
        //            }
        //        }
        //    });
        //});
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
</div>
            </div>    
        </div>
    </div>
</asp:Content>
