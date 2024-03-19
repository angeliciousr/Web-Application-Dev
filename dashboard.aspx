<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="RetailShopSystem.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /* feature start */
        .cv-feature-two {
            padding-top: 112px;
        }

        .cv-feature, .cv-feature-two {
            padding-bottom: 41px;
        }

        .cv-feature-box {
            display: flex;
            border: 1px solid #d4f0ff;
            padding: 20px 17px 13px 12px;
            border-radius: 10px;
            margin: 0 10px 30px;
        }

        .cv-feature-img svg {
            width: 30px;
            height: 30px;
            fill: #3cbcff;
        }

        .cv-feature-img {
            width: 60px;
            height: 60px;
            margin-left: -45px;
            border: 1px solid #d4f0ff;
            padding: 10px;
            background: #fff;
            border-radius: 100%;
            line-height: 35px;
            text-align: center;
            transition: 0.3s;
        }

        .cv-feature-box:hover .cv-feature-img {
            transform: translateY(-5px);
        }

        .cv-feature-text {
            padding-left: 24px;
        }

            .cv-feature-text h3 {
                font-size: 20px;
                margin-bottom: 5px;
                font-weight: 600;
            }

            .cv-feature-text p {
                margin: 0;
                font-size: 15px;
            }
        /* feature end */

        /*  start b*/


        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        }

        .main-container {
            padding: 30px;
        }

        /* HEADING */

        .heading {
            text-align: center;
        }

        .heading__title {
            font-weight: 600;
        }

        .heading__credits {
            margin: 10px 0px;
            color: #888888;
            font-size: 25px;
            transition: all 0.5s;
        }

        .heading__link {
            text-decoration: none;
        }

        .heading__credits .heading__link {
            color: inherit;
        }

        /* CARDS */

        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .card {
            margin: 20px;
            padding: 20px;
            width: 300px;
            min-height: 50px;
            display: grid;
            grid-template-rows: 20px 50px 1fr 50px;
            border-radius: 10px;
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.25);
            transition: all 0.2s;
        }

            .card:hover {
                box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.4);
                transform: scale(1.01);
            }

        .card__link,
        .card__exit,
        .card__icon {
            position: relative;
            text-decoration: none;
            color: rgba(255, 255, 255, 0.9);
        }

            .card__link::after {
                position: absolute;
                top: 25px;
                left: 0;
                content: "";
                width: 0%;
                height: 3px;
                background-color: rgba(255, 255, 255, 0.6);
                transition: all 0.5s;
            }

            .card__link:hover::after {
                width: 100%;
            }

        .card__exit {
            grid-row: 1/2;
            justify-self: end;
        }

        .card__icon {
            grid-row: 2/3;
            font-size: 30px;
        }

        .card__title {
            grid-row: 3/4;
            font-weight: 400;
            color: #ffffff;
        }

        .card__apply {
            grid-row: 4/5;
            align-self: center;
        }

        /* CARD BACKGROUNDS */


        .card-4 {
            background: radial-gradient(#60efbc, #58d5c9);
        }


        /* RESPONSIVE */

        @media (max-width: 1600px) {
            .cards {
                justify-content: center;
            }
        }


        /*end b*/
        .cv-feature-box1 {
            display: flex;
            border: 1px solid #d4f0ff;
            padding: 20px 17px 13px 12px;
            border-radius: 10px;
            margin: 0 10px 30px;
            background: radial-gradient(#cef2e5, #a2f5da);
        }
        



h1,
h2,
h3,
h4,
h5,
h6 {
    font-family: "Raleway", sans-serif;
}

.navbar {
    padding: 0;
}

    .navbar ul {
        margin: 0;
        padding: 0;
        display: flex;
        list-style: none;
        align-items: center;
    }

    .navbar > ul > li {
        position: relative;
        white-space: nowrap;
        margin: 0 12px;
    }

    .navbar a,
    .navbar a:focus {
        display: flex;
        align-items: center;
      
        white-space: nowrap;
        transition: 0.3s;
        position: relative;
    }

        .navbar a i,
        .navbar a:focus i {
            font-size: 12px;
            line-height: 0;
            margin-left: 5px;
        }

    .navbar > ul > li > a:before {
        content: "";
        position: absolute;
        width: 100%;
        height: 2px;
        bottom: -2px;
        left: 0;
        background-color: #009961;
        visibility: hidden;
        width: 0px;
        transition: all 0.3s ease-in-out 0s;
    }

    .navbar a:hover:before,
    .navbar li:hover > a:before,
    .navbar .active:before {
        visibility: visible;
        width: 100%;
    }

    .navbar a:hover,
    .navbar .active,
    .navbar .active:focus,
    .navbar li:hover > a {
        color: #00cc81;
    }


#footer {
    background: #0f0f0f;
    color: #fff;
    font-size: 14px;
    text-align: center;
    padding: 30px 0;
}

#footer h3 {
    font-size: 36px;
    font-weight: 700;
    color: #fff;
    position: relative;
    font-family: "Poppins", sans-serif;
    padding: 0;
    margin: 0 0 15px 0;
}

#footer p {
    font-size: 15;
    font-style: italic;
    padding: 0;
    margin: 0 0 40px 0;
}

#footer .social-links {
    margin: 0 0 40px 0;
}

    #footer .social-links a {
        font-size: 18px;
        display: inline-block;
        background: #009961;
        color: #fff;
        line-height: 1;
        padding: 8px 0;
        margin-right: 4px;
        border-radius: 50%;
        text-align: center;
        width: 36px;
        height: 36px;
        transition: 0.3s;
    }

        #footer .social-links a:hover {
            background: #00b371;
            color: #fff;
            text-decoration: none;
        }

#footer .copyright {
    margin: 0 0 5px 0;
}

#footer .credits {
    font-size: 13px;
}

    #footer .credits a {
        color: #00b371;
        transition: 0.3s;
    }

        #footer .credits a:hover {
            color: #009961;
        }

/* feature start */
.cv-feature-two {
    padding-top: 112px;
}

.cv-feature, .cv-feature-two {
    padding-bottom: 41px;
}

.cv-feature-box {
    display: flex;
    border: 1px solid #d4f0ff;
    padding: 20px 17px 13px 12px;
    border-radius: 10px;
    margin: 0 10px 30px;
}

.cv-feature-img svg {
    width: 30px;
    height: 30px;
    fill: #3cbcff;
}

.cv-feature-img {
    width: 60px;
    height: 60px;
    margin-left: -45px;
    border: 1px solid #d4f0ff;
    padding: 10px;
    background: #fff;
    border-radius: 100%;
    line-height: 35px;
    text-align: center;
    transition: 0.3s;
}

.cv-feature-box:hover .cv-feature-img {
    transform: translateY(-5px);
}

.cv-feature-text {
    padding-left: 24px;
}

    .cv-feature-text h3 {
        font-size: 20px;
        margin-bottom: 5px;
        font-weight: 600;
    }

    .cv-feature-text p {
        margin: 0;
        font-size: 15px;
    }
/* feature end */


  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h2>ADMIN DASHBOARD
    </h2>

    <div class="main-container">

        <div class="cards">
            <div class="card card-4">
                <div class="card__icon"><i class="fas fa-bolt"></i></div>

                <h2 class="card__title">Customers</h2>
                <p class="card__apply">
                    <asp:HyperLink ID="vc" runat="server" CssClass="large stretched-link " ></asp:HyperLink>
                </p>
            </div>
            <div class="card card-4">
                <div class="card__icon"><i class="fas fa-bolt"></i></div>

                <h2 class="card__title">Purchases </h2>
                <p class="card__apply">
                   <asp:HyperLink ID="pc" runat="server" CssClass="large stretched-link " ></asp:HyperLink>
                </p>
            </div>
            <div class="card card-4">
                <div class="card__icon"><i class="fas fa-bolt"></i></div>

                <h2 class="card__title">STUDY MATERIAL</h2>
                <p class="card__apply">
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="large stretched-link " ></asp:HyperLink>
                </p>
            </div>


        </div>
    </div>
    
</asp:Content>
