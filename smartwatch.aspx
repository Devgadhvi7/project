<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="true" AutoEventWireup="true" CodeFile="smartwatch.aspx.cs" Inherits="samrtwatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="form-container">
        
    <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" CellPadding="2"  >
        <ItemTemplate>
            <div class="wrapper">
               <div class="prodcard">
                    
                    <img src="images/<%# Eval("p_image") %>" id="img1" alt="no image" width="200px" height="200px"/>
               
                    <br />
                    <br />
                    <div class="p">
                        Product Name:
                        <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                        <br />
                        Product Rate:
                        ₹<asp:Label ID="p_rateLabel" runat="server" Text='<%# Eval("p_rate") %>' />
                        <br />
                        <br />
                    </div>
                    <%--<asp:Button ID="btn1" runat="server" CssClass="viewbtn" CommandArgument='<%# Eval("id") %>' CommandName="viewmore" Text="View More" OnClick="btn1_Click" />--%>
                     <a href="prod_details.aspx?id=<%# Eval("id") %>" class="viewbtn"> View More </a>
                    
                </div>
                </div>
                <br />
               
        </ItemTemplate>
    </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-59S3TSB1;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE ([id] = @id)"></asp:SqlDataSource>
 <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SVET73-PC;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE category_name = 'SmartWatch'"></asp:SqlDataSource>--%>
        </div>

</asp:Content>

