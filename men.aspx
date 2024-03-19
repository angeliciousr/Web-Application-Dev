<%@ Page Title="Men's Clothes" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="men.aspx.cs" Inherits="RetailShopSystem.men" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section-products">
		<div class="container">
				<div class="row justify-content-center text-center">
						<div class="col-md-8 col-lg-6">
								<div class="header">
										<h2>Men's Clothes</h2>
								</div>
						</div>
				</div>
				<div class="row">
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-1" class="single-product">
										<div class="part-1"> 
										</div>
										<div class="part-2">
												<h3 class="product-title">Black mini Skirt</h3>
											
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-2" class="single-product">
										<div class="part-1">
										<span class="discount">15% off</span>
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
												
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-3" class="single-product">
										<div class="part-1">
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
												

										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-4" class="single-product">
										<div class="part-1">
												<span class="new">new</span>
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
												
										</div>
								</div>
						</div>
					</div>
			<br />
			<br />
			<br />
						<!-- Single Product -->
					<div class="row">
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-5" class="single-product">
										<div class="part-1">
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
											
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-6" class="single-product">
										<div class="part-1">
												<span class="discount">15% off</span>
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
											
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-7" class="single-product">
										<div class="part-1">
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
											
												
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-8" class="single-product">
										<div class="part-1">
												<span class="new">new</span>
												
										</div>
										<div class="part-2">
												<h3 class="product-title">Here Product Title</h3>
												
										</div>
								</div>
						</div>
				</div>
		
			</div>
</section>

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');

body {
    font-family: 'Manrope', sans-serif;
    color: #444444;
}
h3{
text-align:center;
}
a,
a:hover {
    text-decoration: none;
    color: inherit;
}

.section-products {
    padding: 80px 0 54px;
}

.section-products .header {
    margin-bottom: 50px;
}

.section-products .header h3 {
    font-size: 1rem;
    color: #fe302f;
    font-weight: 500;
	
}

.section-products .header h2 {
    font-size: 2.2rem;
    font-weight: 400;
    color: #444444; 
}

.section-products .single-product {
    margin-bottom: 26px;
}

.section-products .single-product .part-1 {
    position: relative;
    height: 290px;
    max-height: 290px;
    margin-bottom: 20px;
    overflow: hidden;
}

.section-products .single-product .part-1::before {
		position: absolute;
		content: "";
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		z-index: -1;
		transition: all 0.3s;
}


.section-products #product-1 .part-1::before {
    background: url("Images/Dickies jacket.jpg") no-repeat center;
    background-size: cover;
		transition: all 0.3s;
}

.section-products #product-2 .part-1::before {
    background: url("Images/Landing Leathers.jpg") no-repeat center;
    background-size: cover;
}

.section-products #product-3 .part-1::before {
    background: url("Images/greenshirt.jpg") no-repeat center;
    background-size: cover;
}

.section-products #product-4 .part-1::before {
    background: url("Images/jacket jean.png") no-repeat center;
    background-size: cover;
}
.section-products #product-5 .part-1::before {
    background: url("Images/black pants.jpg") no-repeat center;
    background-size: cover;
}
.section-products #product-6 .part-1::before {
    background: url("Images/classypants.jpg") no-repeat center;
    background-size: cover;
}
.section-products #product-7 .part-1::before {
    background: url("Images/widelegpants.jpg") no-repeat center;
    background-size: cover;
}
.section-products #product-8 .part-1::before {
    background: url("Images/Casual Shirt.jpg") no-repeat center;
    background-size: cover;
}


.section-products .single-product .part-1 .discount,
.section-products .single-product .part-1 .new {
    position: absolute;
    top: 15px;
    left: 20px;
    color: #ffffff;
    background-color: #fe302f;
    padding: 2px 8px;
    text-transform: uppercase;
    font-size: 0.85rem;
}

.section-products .single-product .part-1 .new {
    left: 0;
    background-color: #444444;
}

.section-products .single-product .part-1 ul {
    position: absolute;
    bottom: -41px;
    left: 20px;
    margin: 0;
    padding: 0;
    list-style: none;
    opacity: 0;
    transition: bottom 0.5s, opacity 0.5s;
}

.section-products .single-product:hover .part-1 ul {
    bottom: 30px;
    opacity: 1;
}

.section-products .single-product .part-1 ul li {
    display: inline-block;
    margin-right: 4px;
}

.section-products .single-product .part-1 ul li a {
    display: inline-block;
    width: 40px;
    height: 40px;
    line-height: 40px;
    background-color: #ffffff;
    color: #444444;
    text-align: center;
    box-shadow: 0 2px 20px rgb(50 50 50 / 10%);
    transition: color 0.2s;
}

.section-products .single-product .part-1 ul li a:hover {
    color: #fe302f;
}

.section-products .single-product .part-2 .product-title {
    font-size: 1rem;
}

.section-products .single-product .part-2 h4 {
    display: inline-block;
    font-size: 1rem;
}

.section-products .single-product .part-2 .product-old-price {
    position: relative;
    padding: 0 7px;
    margin-right: 2px;
    opacity: 0.6;
}

.section-products .single-product .part-2 .product-old-price::after {
    position: absolute;
    content: "";
    top: 50%;
    left: 0;
    width: 100%;
    height: 1px;
    background-color: #444444;
    transform: translateY(-50%);
}
    </style>
</asp:Content>
