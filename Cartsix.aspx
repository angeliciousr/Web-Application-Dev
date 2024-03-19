<%@ Page Title="Green Polka dot dress" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Cartsix.aspx.cs" Inherits="RetailShopSystem.Cartsix" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        @import url('https://fonts.googleapis.com/css?family=Lato:400,700');

        body{
            font-family:'Manrope', sans-serif;
        }
.container {
  position: relative;
  margin: auto;
  color: #4E4E4E;
  box-shadow: 5px 5px 15px rgba(#BA7E7E, .5);
  border-radius: 10px;
}


img {
  width: 390px;
  margin-top: 47px;
  left: 30%;
}



.product {
  position: absolute;
  width: 30%;
  height: 100%;
  top: 10%;
  left: 45%;
}



button {
  background: #E0C9CB;
  padding: 10px;
  display: inline-block;
  outline: 0;
  border: 0;
  margin: -1px;
  border-radius: 2px;
  text-transform: uppercase;
  letter-spacing: 1px;
  color: white;
  cursor: pointer;
  &:hover {
    background: #BA7E7E;
    transition: all .4s ease-in-out;
  }
}
.button {
  background: #E0C9CB;
  padding: 10px;
  display: inline-block;
  outline: 0;
  border: 0;
  margin: -1px;
  border-radius: 2px;
  text-transform: uppercase;
  letter-spacing: 1px;
  color: white;
  cursor: pointer;
  &:hover {
    background: #BA7E7E;
    transition: all .4s ease-in-out;
  }
}
.add {
  width: 67%;
}

.like {
  width: 22%;
}





.focus{
  background: #BA7E7E;
  color:#F5F5F5;
}



    </style>

        <div class="container">
  <div class="images">
    <img src="Images/green dress.png" />
 
  <div class="product">
    <h1>Green Polka dot dress</h1>
      <br />
    <h2>Rs1555.45</h2>
    <p class="desc">This Très Chic  dress is perfect for your next occasion. Made from a soft woven fabric, this light mini dress features alower v-neckline and bold hem details. Complete it with sandals and a bag for a look you can wear in summer.</p>
    <div class="buttons">
      <button class="add">Add to Cart</button>
      <button class="like"><span>♥</span></button>
    </div>
  </div>
            </div>
            <br />
            <br />
            <a href="women.aspx" class="button">Back</a>
</div>
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <script>
        $(".size").on('click', function () {
            $(this).toggleClass('focus').siblings().removeClass('focus');
        })
    </script>
</asp:Content>
