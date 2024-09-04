<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="TMS_Project.Tutor_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <br />
        <br />
        <br />
        <br />
    <div class="container">
    
    <div class="row">
        <br />
        <br />

        <div class="col-md-4 mx-auto" style="box-shadow:2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);">
            <br />
            <div class="jumbotron text-center text-white bg-primary" > 
                <h1> Tutor Login</h1>
            </div>
            <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="UsernameTxt" ID="RequiredFieldValidator1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="PasswordTxt" placeholder="Enter Password " TextMode="Password"  CssClass="form-control" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" ID="RequiredFieldValidator2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            <br/>
            <asp:Button ID="Tutor_LoginBtn" OnClick="Tutor_LoginBtn_Click"  runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
     
            <div class="text-center">
                  <a href="Student_Login.aspx" >Login As Student</a>
            </div>
                 <br/>
        </div>

    </div>

</div>
</asp:Content>
