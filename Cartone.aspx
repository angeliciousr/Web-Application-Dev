<%@ Page Title="Black mini Skirt" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Cartone.aspx.cs" Inherits="RetailShopSystem.Cartone" %>
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
    <img src="Images/skirt.jpg" />
 
  <div class="product">
    <h1>Black Mini Skirt</h1>
      <br />
    <h2>Rs3559.90</h2>
    <p class="desc">Our Straight Black Leather Skirt is a timeless piece that belongs in every wardrobe. Made from high-quality leather, this skirt features a classic straight silhouette that flatters any body type. The waistband sits comfortably at the natural waist, and the above-knee-length hemline adds a touch of flirtiness. Pair it with a blouse and heels for a chic and polished look or dress it down with a t-shirt and sneakers for a more casual outfit.</p>
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
