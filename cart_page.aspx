<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart_page.aspx.cs" Inherits="cart_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-container2">
    <div class="gd1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" OnRowDataBound="GridView1_RowDataBound" BorderColor="Gray" CellPadding="6"  OnRowUpdating="GridView1_RowUpdating"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"  OnRowDeleting="GridView1_RowDeleting" >  
                <FooterStyle BackColor="" Font-Bold="true" ForeColor="#3b4a6b" />
                <RowStyle BackColor="#f7f6f3" ForeColor="#333333" />


                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#e2ded6" Font-Bold="true" ForeColor="#333333" />
                <HeaderStyle BackColor="#3b4a6b" HorizontalAlign="Center" Font-Bold="true" ForeColor="White" />    
        <Columns>
                    <asp:TemplateField HeaderText="Product Id" SortExpression="id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>  
                    </ItemTemplate>  
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Image" >
                            <ItemTemplate>
                                <img src="images/<%# Eval("p_img") %>" id="img1" alt="no image" width="50px" height="50px"/>
                                
                            </ItemTemplate>
                            
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <asp:Label ID="p_name_lbl" runat="server" Text='<%# Eval("p_name") %>' ></asp:Label>
                                </ItemTemplate>
                                
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Qty">
                                <ItemTemplate>
                                    <asp:Label ID="p_qty_lbl" runat="server" TextMode="Number" Width="50px"  Text='<%# Eval("p_qty") %>'></asp:Label>
<%--                                    <asp:Button ID="update" runat="server" Text="update" BorderStyle="Groove" BackColor="lightblue" OnClick="update_Click" />--%>
                                </ItemTemplate>
                               <EditItemTemplate>
                                   <asp:TextBox ID="p_qty_txt" runat="server" TextMode="Number" min="1" Width="50px" Text='<%# Eval("p_qty") %>'></asp:TextBox>
                               </EditItemTemplate>
                                
                                <ItemStyle HorizontalAlign="Center" />
                                
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Rate">
                                <ItemTemplate>
                                    <asp:Label ID="p_rate_lbl" runat="server" Text='<%# Eval("p_rate") %>' ></asp:Label>
                                </ItemTemplate>
                                
                                <ItemStyle HorizontalAlign="Center" />
                                
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Subtotal">
                                <ItemTemplate>
                                    <asp:Label ID="subtotal_lbl" runat="server" Text="" ></asp:Label>
                                </ItemTemplate>
                                
                                <ItemStyle HorizontalAlign="Center" />
                                
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action" HeaderStyle-Width="150px">  
                    <ItemTemplate>  
                            <asp:Button ID="btn_edit" runat="server" Text="Edit" CssClass="edit-btn" CommandName="Edit" />
                            <asp:Button ID="btn_delete" runat="server" Text="Remove" CssClass="delete-btn" CommandName="Delete" />  
                    </ItemTemplate>  
                     <EditItemTemplate>  
                        <asp:Button ID="btn_update" runat="server" Text="Update" CssClass="edit-btn" CommandName="Update"/>  
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="delete-btn" CommandName="Cancel"/>  
                    </EditItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
           </asp:GridView>
        <div class="btn_class">
        <asp:Button ID="rmvall" runat="server" CssClass="delall" Text="Remove All" OnClick="rmvall_Click" />
        <asp:Button ID="ckoutbtn" runat="server" CssClass="ckoutbtn" Text="Checkout" OnClick="ckoutbtn_Click" />
       </div>
        </div>
</asp:Content>

