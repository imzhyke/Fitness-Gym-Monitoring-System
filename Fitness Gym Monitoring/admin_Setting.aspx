<%@ Page Title="" Language="C#" MasterPageFile="~/Multi.Master" AutoEventWireup="true" CodeBehind="admin_Setting.aspx.cs" Inherits="Fitness_Gym_Monitoring.admin_Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="col-4">
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
                            <img width="100px"src="img/User.png" />
                        
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
                        <label>Username</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="usrname" runat="server" placeholder="Member ID"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                   </div>
                   <div class="row">
                       <div class="col-lg">
                           <label>Last Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="lname" runat="server" placeholder="Last Name" Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>
            
                    <div class="row">
                       <div class="col-lg">
                           <label>First Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="fname" runat="server" placeholder="First Name" Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>

                    <div class="row">
                       <div class="col-lg">
                           <label>Password</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="pass" runat="server" placeholder="Password"  Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                 
                 
                  <div class="row">
                     <div class="col-6 mx-auto">
                        <asp:Button ID="editBtn" class="btn btn-lg btn-block btn-success" runat="server" OnClick="EditBtn_Click" Text="Edit"/>
                       
                     </div>

                      <div class="col-6 mx-auto">
                         <asp:Button ID="saveBtn" class="btn btn-lg btn-block btn-danger" runat="server"  OnClick="SaveBtn_Click" Text="Save"/>
                        <asp:Button ID="delBtn" class="btn btn-lg btn-block btn-danger tex" runat="server" OnClick="DelBtn_Click" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
          
            <br>
         </div>
</asp:Content>
