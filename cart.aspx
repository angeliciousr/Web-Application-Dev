<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="RetailShopSystem.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
  font-family: 'Manrope', sans-serif;
  background:#eee;
}

.size span {
  font-size: 11px;
}

.color span {
  font-size: 11px;
}

.product-deta {
  margin-right: 70px;
}

.gift-card:focus {
  box-shadow: none;
}

.pay-button {
  color: #fff;
}

.pay-button:hover {
  color: #fff;
}

.pay-button:focus {
  color: #fff;
  box-shadow: none;
}

.text-grey {
  color: #a39f9f;
}

.qty i {
  font-size: 11px;
}
    </style>
    <div class="container mt-5 mb-5">
            <div class="d-flex justify-content-center row">
                <div class="col-md-8">
                    <div class="p-2">
                        <h4>Shopping cart</h4>
                        <div class="d-flex flex-row align-items-center pull-right"><span class="mr-1">Sort by:</span><span class="mr-1 font-weight-bold">Price</span><i class="fa fa-angle-down"></i></div>
                    </div>
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                        <div class="mr-1"><img class="rounded" src="https://i.imgur.com/XiFJkhI.jpg" width="70"></div>
                        <div class="d-flex flex-column align-items-center product-details"><span class="font-weight-bold">Basic T-shirt</span>
                            <div class="d-flex flex-row product-desc">
                                <div class="size mr-1"><span class="text-grey">Size:</span><span class="font-weight-bold">&nbsp;M</span></div>
                                <div class="color"><span class="text-grey">Color:</span><span class="font-weight-bold">&nbsp;Grey</span></div>
                            </div>
                        </div>
                        <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                            <h5 class="text-grey mt-1 mr-1 ml-1">2</h5><i class="fa fa-plus text-success"></i></div>
                        <div>
                            <h5 class="text-grey">$20.00</h5>
                        </div>
                        <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                    </div>
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                        <div class="mr-1"><img class="rounded" src="https://i.imgur.com/XiFJkhI.jpg" width="70"></div>
                        <div class="d-flex flex-column align-items-center product-details"><span class="font-weight-bold">Basic T-shirt</span>
                            <div class="d-flex flex-row product-desc">
                                <div class="size mr-1"><span class="text-grey">Size:</span><span class="font-weight-bold">&nbsp;M</span></div>
                                <div class="color"><span class="text-grey">Color:</span><span class="font-weight-bold">&nbsp;Grey</span></div>
                            </div>
                        </div>
                        <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                            <h5 class="text-grey mt-1 mr-1 ml-1">2</h5><i class="fa fa-plus text-success"></i></div>
                        <div>
                            <h5 class="text-grey">$20.00</h5>
                        </div>
                        <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                    </div>
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                        <div class="mr-1"><img class="rounded" src="https://i.imgur.com/XiFJkhI.jpg" width="70"></div>
                        <div class="d-flex flex-column align-items-center product-details"><span class="font-weight-bold">Basic T-shirt</span>
                            <div class="d-flex flex-row product-desc">
                                <div class="size mr-1"><span class="text-grey">Size:</span><span class="font-weight-bold">&nbsp;M</span></div>
                                <div class="color"><span class="text-grey">Color:</span><span class="font-weight-bold">&nbsp;Grey</span></div>
                            </div>
                        </div>
                        <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                            <h5 class="text-grey mt-1 mr-1 ml-1">2</h5><i class="fa fa-plus text-success"></i></div>
                        <div>
                            <h5 class="text-grey">$20.00</h5>
                        </div>
                        <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                    </div>
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                        <div class="mr-1"><img class="rounded" src="https://i.imgur.com/XiFJkhI.jpg" width="70"></div>
                        <div class="d-flex flex-column align-items-center product-details"><span class="font-weight-bold">Basic T-shirt</span>
                            <div class="d-flex flex-row product-desc">
                                <div class="size mr-1"><span class="text-grey">Size:</span><span class="font-weight-bold">&nbsp;M</span></div>
                              
                                <div class="color"><span class="text-grey">Color:</span><span class="font-weight-bold">&nbsp;Grey</span></div>
                            </div>
                        </div>
                        <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                            <h5 class="text-grey mt-1 mr-1 ml-1">2</h5><i class="fa fa-plus text-success"></i></div>
                        <div>
                            <h5 class="text-grey">$20.00</h5>
                        </div>
                        <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                    </div>
                    <input type="checkbox" id="pickup" name="Pickup" value="Pickup">
                    <label>Pickup</label>
                   <div><label>Place of Pick Up</label></div>
                     <input class="form-control me-2" type="text" placeholder="Place of Pick Up" aria-label="place">
                    <input type="checkbox" id="delivery" name="delivery" value="delivery">
                    <label>Delivery</label> 
                    <div><label>Address</label></div>
                    <input class="form-control me-2" type="text" placeholder="Enter your Address" aria-label="address">

                    <a href="payment.aspx">
                    <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded"><button class="btn btn-warning btn-block btn-lg ml-2 pay-button" type="button">Proceed to Pay</button></div>
                   </a>
                        <div></div>
                </div>
            </div>
        </div>
</asp:Content>
