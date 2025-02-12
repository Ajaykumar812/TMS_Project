﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Admin Login</title>
   <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
<link href="../dist/sweetalert2.css" rel="stylesheet" />
<link href="../dist/sweetalert2.min.css" rel="stylesheet" />
   <script src="../dist/sweetalert2.min.js"></script>
<script src="../dist/sweetalert2.all.js"></script>
<script src="../dist/sweetalert2.all.min.js"></script>
<script src="../dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
              <br />
<div class="container">

    <div class="row">
        <br />
        <br />

        <div class="col-md-4 mx-auto" style="box-shadow:2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
         <br />
            <div class="jumbotron text-center text-white bg-primary" > 
                <h1> Admin Login</h1>
            </div>
            <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="UsernameTxt" ID="RequiredFieldValidator1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="PasswordTxt" placeholder="Enter Password " TextMode="Password"  CssClass="form-control" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" ID="RequiredFieldValidator2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="LoginBtn" OnClick="LoginBtn_click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
            <br />
        </div>

    </div>

</div>
    </form>
        <script src="../assets/vendor/jquery/jquery.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
