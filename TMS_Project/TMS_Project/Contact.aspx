﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <script type="text/javascript">
     function SuccessContact() {
         Swal.fire(
             'Success',
             'Form has been Submitted Successfully',
             'success'
         )
     }
 </script>

         <!-- ======= Contact Section ======= -->
    <br />
    <br />
    <br />
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="Default.aspx">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Our Address</h3>
                  <p>India, Uttar Pradesh, Siddharthnagar</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Us</h3>
                  <p>ajaykumar737905@gmail.com<br>ak74579747@gmail.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-phone-call"></i>
                  <h3>Call Us</h3>
                  <p>+91 7318104815<br>+91 7457974759</p>
                </div>
              </div>
            </div>
             
          </div>

          <div class="col-lg-6">
            <%--<form action="forms/contact.php" method="post" role="form" class="php-email-form">--%>
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                    <asp:TextBox ID="NameTextBox" class="form-control" placeholder="Your Name" runat="server" OnTextChanged="NameTextBox_TextChanged"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ControlToValidate="NameTextBox" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>--%>

                   <asp:RequiredFieldValidator ControlToValidate="NameTextBox"  ForeColor="Red" ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Name is  Required"></asp:RequiredFieldValidator>
                   
                    <%--<div class="validate"></div>--%>
                </div>
                <div class="col-md-6 form-group">
                  <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                 <asp:TextBox ID="EmailTextBox" class="form-control"   placeholder="Your Email" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ControlToValidate="EmailTextBox"  ForeColor="Red" ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Email is  Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ID="RegularExpressionValidator1" runat="server" SetFocusOnError="true" ErrorMessage="Invalid Email "></asp:RegularExpressionValidator>
                    <%--<div class="validate"></div>--%>
                </div>
              </div>
              <div class="form-group">
                <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
               <%--<asp:TextBox ID="SubjectTextBox" class="form-control"   placeholder="Subject" runat="server"></asp:TextBox>--%>
                 <asp:DropDownList ID="SubjectDropDownList" class="form-control"   runat="server" OnSelectedIndexChanged="SubjectDropDownList_SelectedIndexChanged">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Suggestion</asp:ListItem>
                     <asp:ListItem>Feedback</asp:ListItem>
                     <asp:ListItem>Complain</asp:ListItem>
                 </asp:DropDownList>
                   <asp:RequiredFieldValidator InitialValue="Select" ControlToValidate="SubjectDropDownList"  ForeColor="Red" ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Subject is  Required"></asp:RequiredFieldValidator>
                
                  <%--<div class="validate"></div>--%>
              </div>
              <div class="form-group">
                <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
                 <asp:TextBox ID="MessageTextBox" TextMode="MultiLine"  class="form-control" Columns="50" Rows="5"  placeholder="Message" runat="server"></asp:TextBox>
              <%--<asp:RequiredFieldValidator InitialValue="Select"   ControlToValidate="MessageTextBox" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Message is  Required"></asp:RequiredFieldValidator>--%>
                  <asp:RequiredFieldValidator ControlToValidate="MessageTextBox"  ForeColor="Red" ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Message is  Required"></asp:RequiredFieldValidator>
                
                   
                  <%--<div class="validate"></div>--%>
              </div>
             <%-- <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>--%>
              <%--<div class="text-center"><button type="submit">Send Message</button></div>--%>   
                <asp:Button CssClass="btn btn-info" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <%--</form>--%>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
      <div class="container-fluid p-0">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.2219901290355!2d-74.00369368400567!3d40.71312937933185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a23e28c1191%3A0x49f75d3281df052a!2s150%20Park%20Row%2C%20New%20York%2C%20NY%2010007%2C%20USA!5e0!3m2!1sen!2sbg!4v1579767901424!5m2!1sen!2sbg" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
      </div>
    </section><!-- End Map Section -->
</asp:Content>
