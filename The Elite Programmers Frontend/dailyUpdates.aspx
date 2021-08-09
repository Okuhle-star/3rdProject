<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" Async="true" AutoEventWireup="true" CodeBehind="dailyUpdates.aspx.cs" Inherits="The_Elite_Programmers_Frontend.dailyUpdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .testimonial-item {
            text-align: center;
            position: relative;
        }

        .header {
            background: #ffffff;
        }

        h2 {
            text-align: center;
        }

        .infoSection {
            background: #ffffff;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" data-aos="fade-up">
        <div class="row">
            <div class="col">
                <!-- Ads Banner -->
                <div class="testimonials-slider swiper-container ">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/banner/banner-1.jpg" class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/banner/banner-2.jpg" class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/banner/banner-3.jpg" class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/banner/banner-4.jpg" class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/banner/banner-5.jpg" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2" style="background: #f8f8f8;">
                <!-- Side Navigation -->
                <div>
                    <h5 style="float: left;">Patrollers On Duty</h5>
                </div>

            </div>
            <div class="col-md-8 infoSection">
                <!-- Main Content -->
                <h2 style="background: #dedede;">Today News! <span style="float: right; font-size: 15px" id="currentDate" runat="server"></span></h2>
                <div runat="server" id="mainContent">
                </div>
            </div>
            <div class="col-md-2" style="background: #f8f8f8;">
                <!-- Useful Links -->
                <div>
                    <h5 style="">Important Notices</h5>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
