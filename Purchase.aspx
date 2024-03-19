<%@ Page Title="Purchase History" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="RetailShopSystem.Purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="center">
        <h1>Download completed exercises: </h1>

        <br />
        <br />
        <div class="content">

            <asp:Repeater
                ID="rptdoc"
                runat="server">
                <ItemTemplate>
                    <div class="doc">

                        <%-- add a hyperlink control with databinding 
expression to display the file name in the Text Property and 
the path in the Navigateurl property 
Add a label control to display the name of the user who has 
uploaded the file --%>
                        <b>
                            <asp:HyperLink ID="HyperLink1" ToolTip="download kid's materials"
                                Text='<%# Eval("file_name") %>'
                                NavigateUrl='<%# Eval("f_path") %>'
                                runat="server" ForeColor="Blue"></asp:HyperLink>
                        </b>
                        <br />
                        Uploaded by
                   
                        <i>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("First Name") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("last Name") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Products") %>'></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </i>
                        <br />
                       
                     
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
	
</asp:Content>
