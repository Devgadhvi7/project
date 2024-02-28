<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thanks_card.aspx.cs" EnableEventValidation="false" Inherits="thanks_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
    <div class="form-container">
    <form id="form1" runat="server">
        
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" DataKeyField="userid">
            <ItemTemplate>
                <div class='order-message-container'>
                     <div class='message-container'>
                     <h3><i class="fa fa-check" aria-hidden="true"></i> Thank you for shopping!</h3>
                     <div class='order-detail'>
                         <span><asp:Label ID="prd" runat="server" Text='<%# Eval("total_prod") %>'></asp:Label></span>
                         <span class='total'> Total : <asp:Label ID="total_lbl" runat="server" Text='<%# Eval("total") %>'></asp:Label> /-  </span>
                     </div>
                     <div class='customer-details'>
                          <p> Your Name : <span><asp:Label ID="nm" runat="server" Text='<%# Eval("name") %>'></asp:Label></span> </p>
                          <p> Your Number : <span><asp:Label ID="no" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label></span> </p>
                          <p> Your Email : <span><asp:Label ID="email" runat="server" Text='<%# Eval("email") %>'></asp:Label></span> </p>
                          <p> Your Address : <span><asp:Label ID="addr" runat="server" Text='<%# Eval("address") %>'></asp:Label>,<asp:Label ID="state" runat="server" Text='<%# Eval("state") %>'></asp:Label>-<asp:Label ID="code" runat="server" Text='<%# Eval("zipcode") %>'></asp:Label></span> </p>
                          <p> Your Payment Mode : <span><asp:Label ID="pay" runat="server" Text='<%# Eval("payment_mode") %>'></asp:Label></span> </p>
                          <p style="text-align:center;">(*your payment is done*)</p>
                     </div>
                     <asp:Button ID="btn" runat="server" CssClass="done-btn" Text="Done" OnClick="btn_Click" />
                    </div>
                 </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        
    </form>
   </div>
</body>
</html>
