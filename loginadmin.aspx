<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="loginadmin.aspx.cs" Inherits="RetailShopSystem.loginadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .frmc {
              margin-top: 40px;
            margin-bottom: 40px;
            background-image: linear-gradient(#72F2BC, #C1F9E2);

            margin-left: auto;
            margin-right: auto;
            display: table;
            width: 750px;
            padding: 120px;
            color: black;
             border-radius: 20px;
            box-shadow: 25px 25px #f0f0f0;

        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
       <section>
        <div class="frmc">

            <div id="container">

                <fieldset>
                    <legend> Login</legend>
                    <div class="form">

<asp:Label ID="lblemail" runat="server"><span class="fas fa-user"></span> Email</asp:Label>
                        <div class="div_texbox">
    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        SetFocusOnError="true" ErrorMessage="Enter Email" ForeColor="red"
        ControlToValidate="txtemail"></asp:RequiredFieldValidator>
</div>
<asp:Label ID="lblpassword" runat="server">
<span class="fas fa-lock"></span> Password</asp:Label>
<div class="div_texbox">
    <asp:TextBox ID="txtpass" TextMode="Password" runat="server"
        CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        SetFocusOnError="true" ErrorMessage="Enter password" ForeColor="red"
        ControlToValidate="txtpass"></asp:RequiredFieldValidator>
</div>
                        <asp:Button ID="btnLogin" runat="server"  CssClass="btn btn-outline-primary" Text="Log in"  OnClick="btnLoginadmin_Click"/>
                    </div>
                </fieldset>
                <fieldset>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text=""></asp:Label><br />
                    <asp:Button ID="btnRegister" runat="server"
                        PostBackUrl="register" Text="Don’t have an account yet? Join now"
                        CausesValidation="false" CssClass="btn btn-outline-dark" /><br />
                </fieldset>
            </div>

        </div>
    </section> 
</asp:Content>
