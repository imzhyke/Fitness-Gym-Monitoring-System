<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_Setting.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_Setting" %>

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
                                <h4>Employee Details</h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="img/User.png" />

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
                            <label>Admin Username</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="adminUsrLbl" runat="server" placeholder="Username" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg">
                            <label>Admin Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="adminPassLbl" runat="server" placeholder="Password" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-12 mx-auto">
                            <asp:Button ID="editBtn" class="btn btn-lg btn-block btn-success" OnClick="editBtn_Click" runat="server" Text="Edit" />
                        </div>

                        <div class="col-12">
                            <asp:Button ID="saveBtn" class="btn btn-lg btn-block btn-danger" runat="server" OnClick="saveBtn_Click" Text="Save" />
                        </div>
                    </div>
                </div>
            </div>

            <br>
        </div>
    </div>
</asp:Content>
