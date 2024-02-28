<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="false" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6 col-lg-5 ">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6 col-lg-7">
          <div class="detail-box">
            <div class="heading_container">
              <h2 style="padding-left:65px;">
                About Us
              </h2>
            </div>
              <div class="container">
            <p style="width:700px;padding-left:50px;">
              <asp:label ID="l1" runat="server">Croma is a professional Ecommerce platform. here we will provide you best services.we're dedicated to providing you the best of ecommerce, with focus on dependability and computer shop.</asp:label>
               <br />
                <br />
             <asp:label ID="l2" runat="server">Croma is guided by four principles: customer obsession rather than competitor focus, passion for invention, commitment to operational excellence, and long-term thinking.</asp:label>
                <br />
                <br />
                <asp:Label ID="l3" runat="server">The best people create the best teams. And we make a complete effort to identify the ideal candidates for our inclusive, high-performing teams. Each person has a  Diversity of opinions, styles, and activities is valued, and everyone has a voice. We are all connected and led by our shared values of daring, bias for action, customer-first, integrity, and inclusivity, from category leaders to wishmasters.</asp:Label>
            </p>
            
           </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->
</asp:Content>

