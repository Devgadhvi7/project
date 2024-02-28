<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div class="heading_container">
              <h2>
                Give Feedback
              </h2>
            </div>
            <form action="">
              <div>
                <asp:TextBox ID="name_txt" runat="server" placeholder="Full name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rf1" runat="server" ErrorMessage="please enter name" Display="Dynamic" ForeColor="Red" ControlToValidate="name_txt"></asp:RequiredFieldValidator>
              </div>
              <div>
                <asp:TextBox ID="email_txt" runat="server" CssClass="input2"  placeholder="Email" required="email" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev1" runat="server" ErrorMessage="please enter valid email"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email_txt"></asp:RegularExpressionValidator>
              </div>
              <div>
                <asp:TextBox ID="mobile_no_txt" runat="server" CssClass="input2"  placeholder="Phone number" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="mobile_no_txt" ForeColor="red"  ErrorMessage="Please enter mobile number in 10 digit"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              </div>
              <div>
                <asp:TextBox ID="message_txt" runat="server" placeholder="Message" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rf2" runat="server" ErrorMessage="please enter message" ForeColor="Red"  ControlToValidate="message_txt"></asp:RequiredFieldValidator>
              </div>
              <div class="d-flex ">
                <asp:Button ID="send_btn" runat="server" CssClass="send_btn" Text="SEND" OnClick="send_btn_Click" />
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/contact-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

</asp:Content>

