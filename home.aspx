<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="false" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

  <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Smart Gadgets
                    </h1>
                    <p>
croma is a very popular company for buying the smart gadgets like home appliances, smart watches, laptops, headphones.                       </p>
                    <div class="btn-box">
                      <a href="feedback.aspx" class="btn1">
                        Contact Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/Home_img2.png" alt=""/>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Smart Watches
                    </h1>
                    <p>
                      Aenean scelerisque felis ut orci condimentum laoreet. Integer nisi nisl, convallis et augue sit amet, lobortis semper quam.
                    </p>
                    <div class="btn-box">
                      <a href="home.aspx" class="btn1">
                        Contact Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt=""/>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Smart Gadgets
                    </h1>
                    <p>
                      croma is a very popular company for buying the smart gadgets like home appliances, smart watches, laptops, headphones.   
                    </p>
                    <div class="btn-box">
                      <a href="home.aspx" class="btn1">
                        Contact Us
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt=""/>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <ol class="carousel-indicators">
          <!--<li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
          <li data-target="#customCarousel1" data-slide-to="1"></li>
          <li data-target="#customCarousel1" data-slide-to="2"></li>-->
        </ol>
      </div>

    </section>
    <!-- end slider section -->
  

  <!-- shop section -->

  <section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Latest Products
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6 ">
          <div class="box">
            <a href="headphone.aspx">
              <div class="img-box">
                <img src="images/Boat_Headphone-2.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  HeadPhone
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹1200
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  Featured
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="smartwatch.aspx">
              <div class="img-box">
                <img src="images/Amazfit_Smartwatch.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Smartwatch
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹5998
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="laptop.aspx">
              <div class="img-box">
                <img src="images/HP_Laptop.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Laptop
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹54990
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="headphone.aspx">
              <div class="img-box">
                <img src="images/OneOdio_Headphone.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  HeadPhone
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹2199
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="wifi_camera.aspx">
              <div class="img-box">
                <img src="images/Cpplus_Camera.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Wifi-Camera
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹1699
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6  col-xl-3">
          <div class="box">
            <a href="earbud.aspx">
              <div class="img-box">
                <img src="images/Truke_Earbuds.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Earbud
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹1499
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="smartwatch.aspx">
              <div class="img-box">
                <img src="images/Firebott_Smartwatch.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Smartwatch
                </h6>
                <h6>
                  Price:
                  <span>
                    ₹1999
                  </span>
                </h6>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
      </div>
      <div class="btn-box">
        <a href="">
          View All
        </a>
      </div>
    </div>
  </section>

  <!-- end shop section -->

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
              <h2 style="margin-left:60px;">
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
            <a href="about.aspx" style="margin-left:50px;">
                Read More
            </a>
           </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- feature section -->

  <section class="feature_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Features Of Our Watches
        </h2>
        <p>
          Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
      </div>
      <div class="row">
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="images/f1.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Fitness Tracking
              </h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit,
              </p>
              <a href="">
                <span>
                  Read More
                </span>
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="images/f2.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Alerts & Notifications
              </h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit,
              </p>
              <a href="">
                <span>
                  Read More
                </span>
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="images/f3.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Messages
              </h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit,
              </p>
              <a href="">
                <span>
                  Read More
                </span>
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="images/f4.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Bluetooth
              </h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit,
              </p>
              <a href="">
                <span>
                  Read More
                </span>
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="btn-box">
        <a href="">
          View More
        </a>
      </div>
    </div>
  </section>

  <!-- end feature section -->

  <!-- contact section -->

  <!--<section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div class="heading_container">
              <h2>
                Contact Us
              </h2>
            </div>
            <form action="">
              <div>
                <asp:TextBox ID="name_txt" runat="server" placeholder="Full name"></asp:TextBox>
              </div>
              <div>
                <asp:TextBox ID="email_txt" runat="server" CssClass="input2"  placeholder="Email" required="email" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev1" runat="server" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email_txt"></asp:RegularExpressionValidator>
              </div>
              <div>
                <asp:TextBox ID="mobile_no_txt" runat="server" CssClass="input2"  placeholder="Phone number" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="mobile_no_txt" ForeColor="red" ErrorMessage="Please enter mobile number in 10 digit"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              </div>
              <div>
                <asp:TextBox ID="message_txt" runat="server" placeholder="Message" ></asp:TextBox>
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
  </section>-->

  <!-- end contact section -->

  
</asp:Content>

