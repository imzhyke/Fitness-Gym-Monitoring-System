<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_createEmployee.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_createEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid d-flex justify-content-center">
        <div class="col-6">
            <div class="card">
                <div class="card-body">

                      <div class="row">
                        <div class="col">
                            <center>

                                <img width="100px" src="imgs/Employee.png" />
                            
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Creating Employee's Account</h4>
                            </center>
                        </div>
                    </div>
                  
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg">
                            <label> First Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="adminUsrLbl" runat="server" placeholder="First Name"></asp:TextBox>
                            </div>
                        </div>

                         <div class="col-lg">
                            <label>Last Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="adminPassLbl" runat="server" placeholder="Last Name"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                 

                    <div class="row">
                        <div class="col-lg">
                            <label> Contact Number</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Contact Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg">
                            <label> Username</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Username"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-lg">
                            <label> Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-12 mx-auto">
                            <asp:Button ID="editBtn" class="btn btn-lg btn-block btn-success" runat="server" Text="Edit" />
                        </div>

                        <div class="col-12">
                            <asp:Button ID="saveBtn" class="btn btn-lg btn-block btn-danger" runat="server" Text="Save" />
                        </div>
                    </div>
                </div>
            </div>

            <br>
        </div>
    </div>
</asp:Content>
