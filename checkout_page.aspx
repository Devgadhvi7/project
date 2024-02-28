<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout_page.aspx.cs" Inherits="checkout_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="checkout_container">
       <div class="row-container">
        <div class="row1">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span><asp:Label ID="name_lbl" runat="server" Text="Full Name"></asp:Label></span>
                    <asp:TextBox ID="name_txt" runat="server" placeholder="Joe mark"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf1" ControlToValidate="name_txt" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the name"></asp:RequiredFieldValidator>
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="email_lbl" runat="server" Text="Email"></asp:Label></span>
                    <asp:TextBox ID="email_txt" runat="server" placeholder="example@example.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reg1" runat="server" ControlToValidate="email_txt" Display="Dynamic"  ForeColor="red" ErrorMessage="please enter email in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="addr_lbl" runat="server" Text="Address"></asp:Label></span>
                    <asp:TextBox ID="addr_txt" runat="server" placeholder="room - street - locality"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf2" ControlToValidate="addr_txt" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the adress"></asp:RequiredFieldValidator>
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="mobile_lbl" runat="server" Text="Mobile"></asp:Label></span>
                    <asp:TextBox ID="mobile_txt" runat="server" placeholder="9876543210"></asp:TextBox>
                <asp:RegularExpressionValidator ID="reg2" runat="server" ControlToValidate="mobile_txt" Display="Dynamic"  ForeColor="red" ErrorMessage="please enter mobile number in 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span><asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label></span>
                        <asp:TextBox ID="state_txt" runat="server" placeholder="gujarat"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf3" ControlToValidate="state_txt" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the state"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputBox">
                        <span><asp:Label ID="code_lbl" runat="server" Text="Zip Code"></asp:Label></span>
                        <asp:TextBox ID="code_txt" runat="server" placeholder="123 456"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf4" ControlToValidate="code_txt" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the zipcode"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="inputBox">
                    
                        <span><asp:Label ID="pay_mtd" runat="server" Text="Payment Mode" ></asp:Label></span>
                    <div class="radio">
                       <asp:RadioButtonList ID="rbl1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Card Payment</asp:ListItem> 
                            <asp:ListItem>Cash on Delivery</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" ID="rf_radio" ControlToValidate="rbl1" Text="Required"></asp:RequiredFieldValidator>
                    </div>
                    </div>

            </div>

            <div class="col">

                <h3 class="title"><asp:Label ID="lbl1" runat="server" Text="Payment"></asp:Label></h3>

                <div class="inputBox">
                    <span><asp:Label ID="lbl2" runat="server" Text="Card Accepted"></asp:Label></span>
                    <%--<img src="images/card_img.png" alt="">--%>
                    <asp:Image ID="img" runat="server" ImageUrl="images/card_img.png" />
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="cardnm_lbl" runat="server" Text="Name on Card"></asp:Label></span>
                    <asp:TextBox ID="card_nm" runat="server" placeholder="Joe mark"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf5" ControlToValidate="card_nm" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the card holdername"></asp:RequiredFieldValidator>
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="cardno_lbl" runat="server" Text="Credit Card Numbers"></asp:Label></span>
                    <asp:TextBox ID="card_no" runat="server" placeholder="1111-2222-3333-4444"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf6" ControlToValidate="card_no" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the cc number"></asp:RequiredFieldValidator>
                </div>
                <div class="inputBox">
                    <span><asp:Label ID="cardmn_lbl" runat="server" Text="Expiry Month"></asp:Label></span>
                    <asp:TextBox ID="card_month" runat="server" placeholder="1" TextMode="Number" max="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rf7" ControlToValidate="card_month" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the expiry month"></asp:RequiredFieldValidator>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span><asp:Label ID="cardyr_lbl" runat="server" Text="Expiry Year"></asp:Label></span>
                        <asp:TextBox ID="card_year" runat="server" placeholder="2025" min="2022" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf8" ControlToValidate="card_year" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the expiry year"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputBox">
                        <span><asp:Label ID="cvv_lbl" runat="server" Text="CVV"></asp:Label></span>
                        <asp:TextBox ID="card_cvv" runat="server" placeholder="123"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rf9" ControlToValidate="card_cvv" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the card cvv number"></asp:RequiredFieldValidator>
                    </div>
                </div>

            </div>
    
        </div>

<%--        <input type="submit" value="proceed to checkout" class="submit-btn">--%>
           <asp:Button ID="proceed" runat="server" Text="proceed to checkout" CssClass="submit-btn" OnClick="proceed_Click" />
      </div>
    </div>
      
    

</asp:Content>

