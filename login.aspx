<%@ Page Title="Login form" Language="C#" MasterPageFile="~/Sitelogin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RetailShopSystem.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 
         <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    
     font-family: 'Manrope',sans-serif;

}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: #b8b8b8;
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 3px solid;
     border-color:#acacac;
    box-shadow: 0 0 60px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Manrope',sans-serif;
    color: #080710;
    letter-spacing: 0.5px;
    outline: none;
    border: none;

    
}

input.form-control:focus, input.input_text_focus {

    background-color:#d2d2d2;
    
}

form h1{
    font-size: 30px;
    font-weight: 400;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}

button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
  

       <section>
        <div class="frmc">

            <div id="container">

                <fieldset>
                    <h1> Login</h1>
                    <br />
                    <div class="form">
        
                        <br />
<asp:Label ID="lblemail" runat="server"><span class="fas fa-user"></span> Email</asp:Label>
                        <div class="div_texbox">
    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        SetFocusOnError="true" ErrorMessage="Enter Email" ForeColor="red"
        ControlToValidate="txtemail"></asp:RequiredFieldValidator>
</div>
                        <br />
                            
<asp:Label ID="lblpassword" runat="server">
<span class="fas fa-lock"></span> Password</asp:Label>
<div class="div_texbox">
    <asp:TextBox ID="txtpass" TextMode="Password" runat="server"
        CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        SetFocusOnError="true" ErrorMessage="Enter password" ForeColor="red"
        ControlToValidate="txtpass"></asp:RequiredFieldValidator>
</div>
                        <br />
                        <asp:Button ID="btnLogin" runat="server"  CssClass="btn btn-outline-primary" Text="Log in"  OnClick="btnLogin_Click"/>
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
