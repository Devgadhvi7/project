<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prod_details.aspx.cs" Inherits="prod_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList2" runat="server"  RepeatColumns="1" CellPadding="2" DataKeyField="id" DataSourceID="SqlDataSource1" >
        <ItemTemplate>
           <div class="form-container">
               <div class="prod">
                    <div class="prod-img">
                        <img src="images/<%# Eval("p_image") %>" id="img1" alt="No Image"/>
                    </div>
                    <br />
                   <div class="prod-desc">
<%--                                <asp:Label ID="user_id_lbl" runat="server" Text="abc" Visible="false"></asp:Label>--%>
                                <asp:Label ID="p_namelbl" runat="server" ForeColor="#6289FF" Font-Bold="true" Text='<%# Eval("p_name") %>' Font-Size="Larger" Font-Names="'Arial Rounded MT'" />
                                <br />
                               <b> Quantity : </b>
                                <%--<asp:Label ID="p_qtylbl" runat="server" Text='<%# Eval("p_qty") %>' />--%>
                                <asp:TextBox ID="p_qty" runat="server" Text='<%# Eval("p_qty") %>' min="1" Height="28px" Width="50px" TextMode="Number" ></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <b> Price : </b>
                                ₹<asp:Label ID="p_ratelbl" runat="server" Text='<%# Eval("p_rate") %>' />
                                <br />
                                <b> Details About Item : </b>
                                <br />
                                <asp:Label ID="p_detailslbl" runat="server" Text='<%# Eval("p_details") %>' />
                                <br />
                            
                            <asp:Button ID="cartbtn" runat="server" CssClass="cartbtn" Text="Add To Cart" OnClick="cartbtn_Click" />
                        
                    </div>
                </div>
           </div>
               
        </ItemTemplate>
    </asp:DataList>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-59S3TSB1;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE ([id] = @id)">
    <%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SVET68-PC;Initial Catalog=croma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [product] WHERE ([id] = @id)">--%>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

