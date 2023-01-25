<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_ManageEmployee.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_ManageEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="bootstrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:Label ID="Label3" runat="server" style="margin-left:300px; color:#FFC107;" Text ="MANAGE EMPLOYEE" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
   

 <div class="container-fluid d-flex justify-content-center">
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                   
                    <div class="row">
                    </div>

                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="searchTxtBox" runat="server" placeholder="Username" ></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-3">
                            <div class="form-group">
                                 <asp:Button ID="empBtnSearch" CssClass="form-control btn btn btn-block btn-info" OnClick="empBtnSearch_Click" runat="server" Text="Search" />
                               
                            </div>
                        </div>  

                        <div class="col-3">
                            <div class="form-group">
                                 <asp:Button ID="empAddd" CssClass="form-control btn btn btn-block btn-warning" OnClick="empBtnAdd_Click" runat="server" Text="Add" />
                               
                            </div>
                        </div>  
                    </div>

                    <div class="row">
                        <div class="col-lg">
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="fnameEmp" runat="server" placeholder="First Name" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg">
                           
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="lnameEmp" runat="server" placeholder="Last Name" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                 
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="contactEmp" runat="server" placeholder="Contact Number" Enabled="False"></asp:TextBox>
                            </div>
                     
                    <div class="col">
                        <hr>
                    </div>

                    <div class="row">

                        <div class="col-lg">
                            <label> Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="passEmp" runat="server" placeholder="Password" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-12 mx-auto">
                            <asp:Button ID="editBtn" class="btn btn-lg btn-block btn-success" OnClick="editBtn_Click" Visible="false" runat="server" Text="Edit" />
                        </div>

                        <div class="col-12">
                            <asp:Button ID="saveBtn" class="btn btn-lg btn-block btn-danger" runat="server" Visible="false" OnClick="saveBtn_Click" Text="Save" />
                             <asp:Button ID="submitBtn" class="btn btn-lg btn-block btn-danger" runat="server" Visible="false" OnClick="submitBtn_Click" Text="Submit" />
                        </div>
                    </div>
                </div>
            </div>

            <br>
        </div>
    </div>


</asp:Content>
