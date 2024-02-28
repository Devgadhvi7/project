<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration_page.aspx.cs" Inherits="registration_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="regsiterform-container2">
        <div class="form">
            <h3><asp:Label ID="lbl1" runat="server" Text="REGISTER NOW"></asp:Label></h3>
            <br>
            <div class="txt_field">
                <asp:TextBox ID="nm_txt1" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqv2" ControlToValidate="nm_txt1" Display="Dynamic" CssClass="rqv2" runat="server" ForeColor="red" ErrorMessage="Please enter the name"></asp:RequiredFieldValidator>
                 <div class="span"></div>
                <div class="label">Name</div>
            </div>

            <div class="txt_field">
                <asp:TextBox ID="uname_txt2" runat="server" AutoComplete="none" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqv1" ControlToValidate="uname_txt2" runat="server" Display="Dynamic" CssClass="rqv2"  ForeColor="red" ErrorMessage="Please enter the username"></asp:RequiredFieldValidator>
                 <div class="span"></div>
                <div class="label">Username</div>
            </div>
            
            <div class="txt_field">
                <asp:TextBox ID="password_txt3" runat="server" TextMode="Password" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqv3" ControlToValidate="password_txt3" runat="server" Display="Dynamic" CssClass="rqv2" ForeColor="red" ErrorMessage="Please enter the password"></asp:RequiredFieldValidator>
                <div class="span"></div>
                <div class="label">Password</div>
            </div>

            <div class="txt_field">
                <asp:TextBox ID="city_txt4" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqv4" ControlToValidate="city_txt4" runat="server" Display="Dynamic" CssClass="rqv2" ForeColor="red" ErrorMessage="Please enter the city"></asp:RequiredFieldValidator>
                 <div class="span"></div>
                <div class="label">City</div>
            </div>

            <div class="txt_field">
                <asp:TextBox ID="add_txt5" runat="server" Rows="20" cols="28" TextMode="MultiLine"  class="input"></asp:TextBox>
                <!--<textarea id="TextArea1" cols="28" rows="2" class="input"></textarea>-->
                <asp:RequiredFieldValidator ID="rqv5" ControlToValidate="add_txt5" runat="server" Display="Dynamic" CssClass="rqv2" ForeColor="red" ErrorMessage="Please enter the address"></asp:RequiredFieldValidator>
                <div class="span"></div>
                <div class="label">Address</div>
            </div>

            <div class="txt_field">
                <asp:TextBox ID="mobile_txt6" runat="server" TextMode="Number" class="input"></asp:TextBox>
                
                 <div class="span"></div>
                <div class="label">Mobile No.</div>
                <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="mobile_txt6" Display="Dynamic" CssClass="rqv2" ForeColor="red" ErrorMessage="Please enter mobile number in 10 digit"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
            <div class="submit_btn">
            <asp:Button ID="submit_btn" runat="server" CssClass="form-btn" Text="Register Now" OnClick="submit_btn_Click" />
            &nbsp;&nbsp;<input type="reset" name="r1" value="Reset"  class="form-btn" />
            
            <br /><br />
                </div>
        </div>
    </div>

</asp:Content>

