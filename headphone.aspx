<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="headphone.aspx.cs" Inherits="headhpone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="form-container">
        
    <asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" CellPadding="2" >
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
                    
                        <a href="prod_details.aspx?id=<%# Eval("id") %>" class="viewbtn"> View More </a>
                    
                </div>
                </div>
                <br />
               
        </ItemTemplate>
    </asp:DataList>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=desktop-9cf7rlj;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE category_name = 'Headphone'"></asp:SqlDataSource>--%>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SVET73-PC;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE category_name = 'Headphone'"></asp:SqlDataSource>--%>
        </div>

</asp:Content>

