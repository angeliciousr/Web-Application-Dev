<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RetailShopSystem.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Register Today</h3>
                        <br />
                        <p>Fill in the data below.</p>
                        <form class="requires-validation" novalidate>

                            <div class="col-md-12">
   
                                <asp:TextBox ID="firstname" runat="server" type="text" name="name"  Class="form-control" placeholder="First name" required>
                            </asp:TextBox>
                                </div>
                             <div class="col-md-12">
                                <asp:TextBox ID="lastname" runat="server" type="text" name="name"  Class="form-control" placeholder="Last name" required>
                            </asp:TextBox>
                            </div>

                            <div class="col-md-12">
                                 <asp:TextBox ID="email" runat="server" type="text" name="name"  Class="form-control" placeholder="Email Address" required>
                            </asp:TextBox>
                            </div>



                           <div class="col-md-12">
                              <asp:TextBox ID="password" runat="server" type="password" name="name"  Class="form-control" placeholder="Password" required>
                            </asp:TextBox>
                           </div>

                            <div class="col-md-12">
                              <asp:TextBox ID="cpassword" runat="server" type="password" name="name"  Class="form-control" placeholder="Confirm Password" required>
                            </asp:TextBox>
                           </div>
                            <div class="col-md-12">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                           </div>

                         

                        <%--<div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">I confirm that all data are correct</label>
                         <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
                        </div>--%>
                  

                            <div class="form-button mt-3">

                                <asp:Button runat="server" Text="Register" ID="register" class="btn btn-primary" OnClick="register_Click" />
                               <%-- <button id="register" type="submit" class="btn btn-primary" onclick="register_Click">Register</button>--%>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');

*, body {
    font-family: 'Manrope', sans-serif;
   
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    -moz-osx-font-smoothing: grayscale;
}

html, body {
    height: 100%;
    
    
}


.form-holder {
      display: flex;
       
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 100vh;
}

.form-holder .form-content {
    position: relative;
    text-align: center;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    align-items: center;
    padding: 60px;
}

.form-content .form-items {
    
    background: #c3e8cf;
    padding: 40px;
    display: inline-block;
    width: 100%;
    min-width: 540px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    text-align: left;
    -webkit-transition: all 0.4s ease;
    transition: all 0.4s ease;
 
  top: 0;
  left: 20px;
  right: 20px;
  bottom: 0;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(0, 0, 0, .4);


}

.form-content h3 {
    color: black;
    text-align: left;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 5px;
}

.form-content h3.form-title {
    margin-bottom: 30px;
}

.form-content p {
    color: black;
    text-align: left;
    font-size: 17px;
    font-weight: 300;
    line-height: 20px;
    margin-bottom: 30px;
}


.form-content label, .was-validated .form-check-input:invalid~.form-check-label, .was-validated .form-check-input:valid~.form-check-label{
    color: black;
}

.form-content input[type=text], .form-content input[type=password], .form-content input[type=email], .form-content select {
    width: 100%;
    padding: 9px 20px;
    text-align: left;
    border: 0;
    outline: 0;
    border-radius: 6px;
    background-color: #fff;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    margin-top: 16px;
}


.btn-primary{
    background-color: #4e825f;
    outline: none;
    border: 0px;
     box-shadow: none;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active{
    background-color: #495056;
    outline: none !important;
    border: none !important;
     box-shadow: none;
}

.form-content textarea {
    position: static !important;
    width: 100%;
    padding: 8px 20px;
    border-radius: 6px;
    text-align: left;
    background-color: #fff;
    border: 0;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    outline: none;
    resize: none;
    height: 120px;
    -webkit-transition: none;
    transition: none;
    margin-bottom: 14px;
}

.form-content textarea:hover, .form-content textarea:focus {
    border: 0;
    background-color: #ebeff8;
    color: #8D8D8D;
}

.mv-up{
    margin-top: -9px !important;
    margin-bottom: 8px !important;
}

.invalid-feedback{
    color: #ff606e;
}

.valid-feedback{
   color: #2acc80;
}</style>

    <script>(function () {
            'use strict'
            const forms = document.querySelectorAll('.requires-validation')
            Array.from(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</asp:Content>
