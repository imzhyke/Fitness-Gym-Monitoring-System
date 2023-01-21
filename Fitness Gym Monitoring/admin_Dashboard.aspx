<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_Dashboard.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="bootstrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label3" runat="server" Style="margin-left: 300px; color: #FFC107;" Text="DASHBOARD" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

    <div class="pl-5 col-8 " style="margin: auto">

        <div class="row d-flex justify-content-around">
            <div class="col-3 card p-2">
                <p>Employee</p>
                <asp:Label ID="empDisplayTotal" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>

            <div class="col-3 card p-2">
                <p>Membership</p>
                <asp:Label ID="memDisplayTotal" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>

            <div class="col-3 card p-2">
                <p>Clients</p>
                <asp:Label ID="clietntsDisplayTotal" CssClass="m-auto" runat="server" Text="3" Font-Size="30px" Font-Bold="True"></asp:Label>
            </div>
        </div>


        <div class="row">

            <div class="col-lg">
                <div class="card p-2 my-2">
                    <asp:Repeater ID="rptCustomers" runat="server">
                        <HeaderTemplate>
                            <table id="example" class="table table-striped" cellspacing="" width="100%">
                                <thead>
                                    <tr>
                                       <th>
                            Employee
                        </th>
                        <th>
                            Username
                        </th>
                        <th>
                            Contact Details
                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <%-- <td>
                    <asp:Label ID="lblFirstname" runat="server" Text='<%# Eval("CUST_FNAME") %>  ' />
                    <asp:Label ID="lblLastname" runat="server" Text='<%# Eval("CUST_LNAME") %>  ' />
                </td>
                <td>    
                    <asp:Label ID="lblStart" runat="server" Text='<%# Eval("SESS_START") %>' />
                    <asp:Label ID="lblEnd" runat="server" Text='<%# Eval("SESS_END") %>' />
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("SESS_DATE") %>' />
                </td>--%>

                                <td>
                                    <asp:Label ID="lblFirstname" runat="server" Text='<%# Eval("EMP_FNAME") %>  ' />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("EMP_LNAME") %>  ' />
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("EMP_USRNAME") %>' />
                                </td>

                                <td>
                                    <asp:Label ID="lblLastname" runat="server" Text='<%# Eval("EMP_CONTACT") %>' />
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

                        $(document).ready(function () {
                            $('#example').DataTable();
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
