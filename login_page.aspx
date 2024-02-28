<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="form-container">
        <div class="form">
            <h3><asp:Label ID="lbl1" runat="server" Text="LOGIN NOW"></asp:Label></h3>
            <br>
            <div class="txt_field">
                
                <asp:TextBox ID="txt1" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf1" runat="server" Display="Dynamic" ControlToValidate="txt1" ForeColor="red" ErrorMessage="please enter username"></asp:RequiredFieldValidator>
                <div class="label">Username</div>
            </div>
            
            <div class="txt_field">
                <asp:TextBox ID="txt2" runat="server" TextMode="Password" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf2" runat="server" Display="Dynamic" ControlToValidate="txt2" ForeColor="red" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
                <div class="label">Password</div>
            </div>
                <asp:Label ID="userid" runat="server" Text=""></asp:Label>
                <asp:Button ID="btn1" runat="server" Text="Login" CssClass="form-btn" OnClick="btn1_Click1" />
            <br />
            <p>don't have an account? <a href="registration_page.aspx">register now</a></p>
        </div>
    </div>
      
</asp:Content>

