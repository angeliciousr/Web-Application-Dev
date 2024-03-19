<%@ Page Title="White mini dress" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Carteight.aspx.cs" Inherits="RetailShopSystem.Carteight" %>
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
    <img src="Images/fashion.jpg" />
 
  <div class="product">
    <h1>White mini dress</h1>
      <br />
    <h2>Rs3000.45</h2>
    <p class="desc">White Mini dress which is 100% cotton and a perfectly well textured material. This dress features fixed puffy sleeves, square neckline and invisible zip fastening at back. Ruching at waist with a corset-like lace at the front for hour glass effect.</p>
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
