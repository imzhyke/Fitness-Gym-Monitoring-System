<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Fitness_Gym_Monitoring.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container mt-5">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card cardsss">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img height="150px" src="imgs/UserLogInIcon.jpg" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col mt-2">
                        <center>
                           <h4>LOG IN</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>

                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        
                        <div class="form-group">

                            <asp:Button ID="logInBtn" class="btn btn-warning rounded-pill btn-block btn-lg" runat="server" Text="LOG IN" /> 
                            
                        </div>
                     </div>
                  </div>
               </div>
            </div>
     
         </div>
      </div>
   </div>

</asp:Content>
