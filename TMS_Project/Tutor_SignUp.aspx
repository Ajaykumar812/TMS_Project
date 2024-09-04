<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_SignUp.aspx.cs" Inherits="TMS_Project.Tutor_SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container" style="box-shadow:2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);" >
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center"> Tutor SignUp</h1>
            </div>
  
        </div>
        <div class="row">
            <div class="col-md-4">
                  <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
              
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox"  ID="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
 <br />
               
             
                 <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox"  ID="RequiredFieldValidator2" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>

    <br />

                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                                             <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList"  ID="RequiredFieldValidator3" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>

                <br />

             <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox"  ID="RequiredFieldValidator4" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>--%>
                <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ControlToValidate="AgeTextBox" SetFocusOnError="true" MinimumValue="20" MaximumValue="80" Type="Integer" ErrorMessage="Age Should be Within 20 to 80" ForeColor="Red"></asp:RangeValidator>
                
                <br />
                 <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ControlToValidate="EmailTextBox"  ID="RequiredFieldValidator1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ID="RegularExpressionValidator2" runat="server" SetFocusOnError="true" ErrorMessage="Invalid Email "></asp:RegularExpressionValidator>
               

                <br />
                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Status</asp:ListItem>
    <asp:ListItem>Single</asp:ListItem>
    <asp:ListItem>Married</asp:ListItem>
    <asp:ListItem>Engaged</asp:ListItem>
    <asp:ListItem>Divorced</asp:ListItem>
    <asp:ListItem>Seperated</asp:ListItem>
    <asp:ListItem>other</asp:ListItem>
</asp:DropDownList>
                             <asp:RequiredFieldValidator InitialValue="Select Status" ControlToValidate="MaritalStatusDropDownList"  ID="RequiredFieldValidator17" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Status is Required"></asp:RequiredFieldValidator>

<br />
          
   
            </div>
            <div class="col-md-4">
                      <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="CountryTextBox"  ID="RequiredFieldValidator5" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
                 <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="CityTextBox"  ID="RequiredFieldValidator6" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

    <br />
                 <asp:TextBox ID="AddressTextBox"  TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="AddressTextBox"  ID="RequiredFieldValidator7" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

    <br />                <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Qualification</asp:ListItem>
    <asp:ListItem>Graduation</asp:ListItem>
    <asp:ListItem>Masters</asp:ListItem>
    <asp:ListItem>Mphil</asp:ListItem>
    <asp:ListItem>PHD</asp:ListItem>
  
    <asp:ListItem>other</asp:ListItem>
</asp:DropDownList>
                             <asp:RequiredFieldValidator InitialValue="Select Qualification " ControlToValidate="QualificationDropDownList"  ID="RequiredFieldValidator8" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>

<br />
                       

                
                     
                
               
            </div>
            <div class="col-md-4">
                             <asp:TextBox ID="DegreeTextBox"   CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox"  ID="RequiredFieldValidator9" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>

<br />      
       
                                 <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Experience</asp:ListItem>
    <asp:ListItem>1 year</asp:ListItem>
    <asp:ListItem>2 years</asp:ListItem>
    <asp:ListItem>3 years</asp:ListItem>
    <asp:ListItem>4 years</asp:ListItem>
    <asp:ListItem>5+ years</asp:ListItem>
    <asp:ListItem>6+ years</asp:ListItem>
    <asp:ListItem>8+ years</asp:ListItem>
    <asp:ListItem>10+ years</asp:ListItem>
  
    <asp:ListItem>other</asp:ListItem>
</asp:DropDownList>
                             <asp:RequiredFieldValidator InitialValue="Select Experience " ControlToValidate="ExperienceDropDownList"  ID="RequiredFieldValidator18" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>

<br />

                  <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact No" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="ContactTextBox"  ID="RequiredFieldValidator11" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>

                <br />
                
                  <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox"  ID="RequiredFieldValidator14" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>

                <br />
               <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox"  ID="RequiredFieldValidator15" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  runat="server" ErrorMessage="Plese Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
 <br />
 <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
   <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox"  ID="RequiredFieldValidator16" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>

 <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>

<br />

            </div>
        </div>
          <div class="row">
      <div class="col-md-6 mx-auto" >
        <asp:Button ID="TutorSignUpButton" OnClick="TutorSignUpButton_Click" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
<br />
      </div>
  </div>
        <br />
                <div class="row">
            <div class="col-md-6 mx-auto text-center">
                      <a href="Student_Signup.aspx" class="btn btn-success"> SignUp As Student</a>
<a href="Tutor_Signup.aspx" class="btn btn-info"> SignUp As Tutor</a>
                </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>
