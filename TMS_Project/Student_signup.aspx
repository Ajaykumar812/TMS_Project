<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_signup.aspx.cs" Inherits="TMS_Project.Student_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br /><br />
    <br /><br />

    <div class="container" style="box-shadow:2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow:-2px 2px 29px 1px rgba(0,0,0,0.75);" >
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>
            </div>
  
        </div>
        <div class="row">
            <div class="col-md-4">
                  <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
              
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox"  ID="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
 <br />
                <br />
                <asp:TextBox ID="FatherNameTextBox"  CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox"  ID="RequiredFieldValidator1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
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
          
                <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ControlToValidate="AgeTextBox" SetFocusOnError="true" MinimumValue="5" MaximumValue="60" Type="Integer" ErrorMessage="Age Should be Within 5 to 60" ForeColor="Red"></asp:RangeValidator>
              
                <br />
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ControlToValidate="CountryTextBox"  ID="RequiredFieldValidator5" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                
    <br />
             
            </div>
            <div class="col-md-4">
                 <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="CityTextBox"  ID="RequiredFieldValidator6" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

    <br />
                 <asp:TextBox ID="AddressTextBox"  TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="AddressTextBox"  ID="RequiredFieldValidator7" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

    <br />
                 <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="ClassTextBox"  ID="RequiredFieldValidator8" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>

    <br />
                   

                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>Univeristy</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                     <asp:RequiredFieldValidator InitialValue="Select Going To" ControlToValidate="GoingToDropDownList"  ID="RequiredFieldValidator9" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage=" Going To is Required"></asp:RequiredFieldValidator>
                <br />

                
                 <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox"  ID="RequiredFieldValidator10" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>

    <br />
            </div>
            <div class="col-md-4">
                  <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact No" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="ContactTextBox"  ID="RequiredFieldValidator11" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>

                <br />
                 <asp:DropDownList ID="TuitionTypeDropDownList" CssClass="form-control" runat="server">
     <asp:ListItem>Select Tuition Type</asp:ListItem>
     <asp:ListItem>Online</asp:ListItem>
     <asp:ListItem>Physical</asp:ListItem>
    
  
 </asp:DropDownList>
                  <asp:RequiredFieldValidator InitialValue="Select Tuition Type" ControlToValidate="TuitionTypeDropDownList"  ID="RequiredFieldValidator12" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage=" Tuition Type is Required"></asp:RequiredFieldValidator>
              
                
                
                <br />
                 <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
     <asp:ListItem>Select Tutor Preferred</asp:ListItem>
     <asp:ListItem>Graduate</asp:ListItem>
     <asp:ListItem>Masters</asp:ListItem>
     <asp:ListItem>MPHIL</asp:ListItem>
     <asp:ListItem>PHD</asp:ListItem>
     <asp:ListItem>Other</asp:ListItem>
 </asp:DropDownList>
                   <asp:RequiredFieldValidator InitialValue="Select Tutor Preferred " ControlToValidate="TutorPreferDropDownList"  ID="RequiredFieldValidator13" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage=" Tutor Preferred is Required"></asp:RequiredFieldValidator>
              
                
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
          <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click1" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" />
          <br />
          
      </div>
             
  </div>
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
