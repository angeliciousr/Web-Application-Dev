<%@ Page Title="Home" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RetailShopSystem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images\790A9860.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
          <p>Summer Spring Collection 2023</p>
        <h1>Get up to 30% off New Arrivals</h1>
        <button class="btn btn-outline-success" type="submit" >Shop Now</button>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images\790A0229.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h1>Second slide label</h1>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images\790A0209.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h1>Brand clothing</h1>
        <p>Check out newest collection</p>
           <p>Check out newest collection</p>
           <p>Check out newest collection</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div> 

         
         <br />
         <br />
         <h1> What's Trending?</h1>
        <br />
         <br />
    <style>
     .carousel-caption {
    position: absolute; 
    z-index: 1;
    display:table;
    width:20%;
    height:60%;
}

.carousel-caption div {
    display:table-cell;
    vertical-align: middle;
    text-align:center;
}

.d-none d-md-block {
    position: absolute;
    top: 60%; 
    left: 50%;
    transform: translate(-50%, -50%);
}
.btn{
    background-color: #4e825f;
    color: black;
}
 
        article {
  --img-scale: 1.001;
  --title-color: black;
  --link-icon-translate: -20px;
  --link-icon-opacity: 0;
  position: relative;
  border-radius: 16px;
  box-shadow: none;
  background: #fff;
  transform-origin: center;
  transition: all 0.4s ease-in-out;
  overflow: hidden;
}

article a::after {
  position: absolute;
  inset-block: 0;
  inset-inline: 0;
  cursor: pointer;
  content: "";
}

/* basic article elements styling */
article h2 {
  margin: 0 0 18px 0;
  font-family: 'Manrope', sans-serif;
  font-size: 1.9rem;
  letter-spacing: 0.06em;
  color: var(--title-color);
  transition: color 0.3s ease-out;
}

figure {
  margin: 0;
  padding: 0;
  aspect-ratio: 16 / 9;
  overflow: hidden;
}

article img {
  max-width: 100%;
  transform-origin: center;
  transform: scale(var(--img-scale));
  transition: transform 0.4s ease-in-out;
}

.article-body {
  padding: 24px;
}

article a {
  display: inline-flex;
  align-items: center;
  text-decoration: none;
  color: #28666e;
}

article a:focus {
  outline: 1px dotted #28666e;
}

article a .icon {
  min-width: 24px;
  width: 24px;
  height: 24px;
  margin-left: 5px;
  transform: translateX(var(--link-icon-translate));
  opacity: var(--link-icon-opacity);
  transition: all 0.3s;
}

/* using the has() relational pseudo selector to update our custom properties */
article:has(:hover, :focus) {
  --img-scale: 1.1;
  --title-color: #28666e;
  --link-icon-translate: 0;
  --link-icon-opacity: 1;
  box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
}


/************************ 
Generic layout (demo looks)
**************************/

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  margin: 0;
 
  font-family: 'Manrope', sans-serif;
  font-size: 1.2rem;
  line-height: 1.6rem;
  background-image: linear-gradient(45deg, #D5C7BC);
  min-height: 50vh;
}

.articles {
  display: grid;
  max-width: 1200px;
  margin-inline: auto;
  padding-inline: 24px;
  grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
  gap: 24px;
}

@media screen and (max-width: 960px) {
  article {
    container: card/inline-size;
  }
  .article-body p {
    display: none;
  }
}

@container card (min-width: 380px) {
  .article-wrapper {
    display: grid;
    grid-template-columns: 100px 1fr;
    gap: 16px;
  }
  
  .article-body {
    padding-left: 0;
  }
  figure {
    width: 100%;
    height: 100%;
    overflow: hidden;
  }
  figure img {
    height: 100%;
    aspect-ratio: 1;
    object-fit: cover;
  }
}

        .sr-only:not(:focus):not(:active) {
            clip: rect(0 0 0 0);
            clip-path: inset(50%);
            height: 1px;
            overflow: hidden;
            position: absolute;
            white-space: nowrap;
            width: 1px;
        }

        .video{

      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 70vh;

        }
        video {
            position:relative;
  height: 80%;
  width: 80%;
}
        h3{
            text-align:center;
        }

        
        .counter-section i { display:block; margin:0 0 10px}
.counter-section span.counter { font-size:40px; color:#000; line-height:60px; display:block; font-family: "Oswald",sans-serif; letter-spacing: 2px}
.counter-title{ font-size:12px; letter-spacing:2px; text-transform: uppercase}
.counter-icon {top:25px; position:relative}
.counter-style2 .counter-title {letter-spacing: 0.55px; float: left;}
.counter-style2 span.counter {letter-spacing: 0.55px; float: left; margin-right: 10px;}
.counter-style2 i {float: right; line-height: 26px; margin: 0 10px 0 0}
.counter-subheadline span {float: right;}  

.medium-icon {
    font-size: 40px !important;
    margin-bottom: 15px !important;
} 

.container{
    margin-top:200px;
}


    </style>
  
<section class="articles">
  <article>
    <div class="article-wrapper">
      <figure>
        <img src="Images\pic1.jpeg" alt="" />
      </figure>
      <div class="article-body">
        <h2>New Arrivals</h2>
        <p>
        Your new wardrobe essentials are here in our new arrivals. Check out all new jeans, jackets, shirts and many others! Show off your personality with our latest collection.
        </p>
        <a href="Cardone.aspx" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
  <article>

    <div class="article-wrapper">
      <figure>
        <img src="Images/pic%203.jpg" alt="" />
      </figure>
      <div class="article-body">
        <h2>Vintage Collection</h2>
        <p>
          Sometimes a touch of 'old is gold' is necessary in your style. Browse through our late 80's collection and relive those years through fashion. Nothing beats a good sense of nostalgia when dressing up.
        </p>
        <a href="#" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
  <article>

    <div class="article-wrapper">
      <figure>
        <img src="Images\pic2.jpg"  alt="" />
      </figure>
      <div class="article-body">
        <h2>Jeanious Denim</h2>
        <p>
          
        </p>
        <a href="Jeans.aspxx" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
</section>
    <br />
    
    <br />
    <h3>Our Shop is affiliated with famous model of Victoria's Secret</h3>
    <br />
    <div class="video">
        <video controls autoplay muted>
  <source src=" Images\shopvideo.mp4" type="video/mp4">
</video>    
        </div>


    <section class="wow fadeIn animated" style="visibility: visible; animation-name: fadeIn;">
            <div class="container">
                <div class="row">
                    <!-- counter -->
                    <div class="col-md-3 col-sm-6 bottom-margin text-center counter-section wow fadeInUp sm-margin-bottom-ten animated" data-wow-duration="300ms" style="visibility: visible; animation-duration: 300ms; animation-name: fadeInUp;">
                        <i class="fa fa-globe medium-icon"></i>
                        <span id="anim-number-pizza" class="counter-number"></span>
                        <span class="timer counter alt-font appear" data-to="980" data-speed="7000">2800</span>
                        <p class="counter-title">Clothes Ordered Online</p>
                    </div>
                    <!-- end counter -->
                    <!-- counter -->
                    <div class="col-md-3 col-sm-6 bottom-margin text-center counter-section wow fadeInUp sm-margin-bottom-ten animated" data-wow-duration="600ms" style="visibility: visible; animation-duration: 600ms; animation-name: fadeInUp;">
                        <i class="fa fa-heart medium-icon"></i>
                         <span class="timer counter alt-font appear" data-to="980" data-speed="7000">980</span>
                        <span class="counter-title">Happy Clients</span>
                    </div>
                    <!-- end counter -->
                    <!-- counter -->
                    <div class="col-md-3 col-sm-6 bottom-margin-small text-center counter-section wow fadeInUp xs-margin-bottom-ten animated" data-wow-duration="900ms" style="visibility: visible; animation-duration: 900ms; animation-name: fadeInUp;">
                        <i class="fa fa-shopping-cart medium-icon"></i>
                         <span class="timer counter alt-font appear" data-to="810" data-speed="7000">1020</span>
                        <span class="counter-title">Clothes available</span>
                    </div>
                    <!-- end counter -->
                    <!-- counter -->
                    <div class="col-md-3 col-sm-6 text-center counter-section wow fadeInUp animated" data-wow-duration="1200ms" style="visibility: visible; animation-duration: 1200ms; animation-name: fadeInUp;">
                        <i class="fa fa-user medium-icon"></i>
                         <span class="timer counter alt-font appear" data-to="600" data-speed="7000">700</span>
                        <span class="counter-title">Clients Served</span>
                    </div>
                    <!-- end counter -->
                </div>
            </div>
        </section>
        <br />
    <br />
        <br />
    <br />
    <script>$(document).ready(function () {

            $('.counter').each(function () {
                $(this).prop('Counter', 0).animate({
                    Counter: $(this).text()
                }, {
                    duration: 4000,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
            });

        });  </script>
</asp:Content>
