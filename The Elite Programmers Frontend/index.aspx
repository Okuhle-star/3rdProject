 <%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="The_Elite_Programmers_Frontend.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center justify-content-center">
        <div class="container" data-aos="fade-up">

            <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
                <div class="col-xl-6 col-lg-8">
                    <h1>Crime-Buster</h1>
                    <h2>The smart way to combat crime.</h2>
                </div>
            </div>

            <div runat="server" id="userContent">
                <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">

                    <!-- ======= User Section ======= -->
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-bar-chart-box-line"></i>
                            <h3><a href="addAlert.aspx">Add Alert</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-bar-chart-box-line"></i>
                            <h3><a href="stats.aspx">View Crime Stats</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="ri-calendar-todo-line"></i>
                            <h3><a href="dailyUpdates.aspx">Daily Updates</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="bi bi-exclamation-triangle"></i>
                            <h3><a href="Hotspot.aspx">View Crime Hotspots</a></h3>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="bi bi-card-heading"></i>
                            <h3><a href="suspiciousVehicle.aspx">View Suspicious Vehicle</a></h3>
                        </div>
                    </div>

                    <!-- ======= Patroller Section ======= -->

                    <div class="col-xl-2 col-md-4">
                        <div class="icon-box">
                            <i class="bi bi-card-list"></i>
                            <h3><a href="UserEmergencies.aspx">View Emergency Requests</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero -->

    <main id="main">
        <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row">
                    <div class="section-title">
                        <h2>Getting </h2>
                        <p>TO KNOW US</p>
                    </div>

                    <div class="card bg-dark text-white">
                        <img src="https://tse4.mm.bing.net/th?id=OIP.Ri8JL4afWA1vAzSANn4pEQHaEK&amp;pid=Api&amp;P=0&amp;w=287&amp;h=162" style="max-height: 200px;" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">"At the end of the day, the goals are simple : SAFETY and SECURITY"</h5>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <p class="card-text">Security is <i style="color: Blue;">ALWAYS EXCESSIVE</i> UNTIL IT'S NOT ENOUGH.</p>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="360">
                            <div class="card" style="width: 18rem;">
                                <img src="https://tse2.mm.bing.net/th?id=OIP.HgHODVxORtV7yx7pLOxuKQHaDd&pid=Api&P=0&w=324&h=152" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h3 class="card-title"><a href="">Our Values</a></h3>
                                    <p class="card-text">The CPF family lives and breathes a set of core values that represent how we think and how we operate on a daily basis.</p>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="600">
                            <div class="card" style="width: 18rem;">
                                <img src="https://tse3.mm.bing.net/th?id=OIP.JN2EOEbenu0zJ5qrw84k0AHaC6&pid=Api&P=0&w=429&h=169" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h3 class="card-title"><a href="OurJourney.aspx">our journey</a></h3>
                                    <p class="card-text">Follow our exciting journey from humble beginnings to where we are today and where we are heading…</p>

                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                            <div class="card" style="width: 18rem;">
                                <img src="https://tse1.mm.bing.net/th?id=OIP.F3wqo0o5ghRkoI8Qjld9PwHaDt&pid=Api&P=0&w=358&h=180" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h4 class="card-title"><a href="dailyUpdates.aspx">Company News</a></h4>
                                    <p class="card-text">Keep up to date on the latest happenings & developments in the world of CyberWatch</p>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                            <div class="card" style="width: 18rem;">
                                <img src="https://tse1.mm.bing.net/th?id=OIP.5cnE3HKKmKmIz-JY1hQw-wHaD8&pid=Api&P=0&w=283&h=151" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h4 class="card-title"><a href="">Our Environment</a></h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>
        <!-- End About Section -->

        <!-- ======= Cta Section ======= -->
        <section id="cta" class="cta">
            <div class="container" data-aos="zoom-in">

                <div class="text-center">
                    <h3>Call To Action</h3>
                    <p>Security is not a product, but a process. Join us to make the process faster.</p>
                    <a class="cta-btn" href="#">Call To Action</a>
                </div>

            </div>
        </section>
        <!-- End Cta Section -->

        <!-- ======= Counts Section ======= -->
        <section id="counts" class="counts">
            <div class="container" data-aos="fade-up">

                <div class="row no-gutters">
                    <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start" data-aos="fade-right" data-aos-delay="100"></div>
                    <div class="col-xl-7 ps-0 ps-lg-5 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
                        <div class="content d-flex flex-column justify-content-center">
                            <h3>Crime-Buster Stats</h3>
                            <p>
                                Reports on all the Sectors combine showing the stats
                            </p>
                            <div class="row">
                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="bi bi-people-fill"></i>
                                        <span runat="server" id="nUsers" data-purecounter-start="0" data-purecounter-duration="2" class="purecounter"></span>
                                        <p><strong>Number of Users</strong></p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="bi bi-journal-richtext"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="0" data-purecounter-duration="2" class="purecounter"></span>
                                        <p><strong>Number of User Emergencies solved</strong></p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="bi bi-journal-richtext"></i>
                                        <span data-purecounter-start="0" data-purecounter-duration="2" class="purecounter" runat="server" id="nAlerts"></span>
                                        <p><strong>Number of solved Alerts</strong></p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="bi bi-clock"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="4" class="purecounter"></span>
                                        <p><strong>Number of Sectors</strong> </p>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <!-- End .content-->
                    </div>
                </div>

            </div>
        </section>
        <!-- End Counts Section -->

        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials">
            <div class="container" data-aos="zoom-in">

                <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                <h3>Tankiso Mokoena</h3>
                                <h4>Team Leader</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    The community's responsibility is your responsibility. Take action to make your community safe.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>


                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/team/team-4.jpeg" class="testimonial-img" alt="">
                                <h3>Okuhle  Mtototywa</h3>
                                <h4>Designer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    If anything can go wrong, It will go wrong ~Murphy.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/team/team-3.jpeg" class="testimonial-img" alt="">
                                <h3>Vusimuzi Masilela</h3>
                                <h4>Full stack developer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                   “A good act does not wash out the bad, nor a bad act the good. Each should have its own reward.”
                                          ― George R.R. Martin, A Clash of Kings
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                        <!-- End testimonial item -->


                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/team/team-2.jpeg" class="testimonial-img" alt="">
                                <h3>Gracious Mulaudzi</h3>
                                <h4>Full Stack Developer/Engineer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    “Behind every successful fortune there is a crime.”
                                           ― Mario Puzo, The Godfather
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                        <!-- End testimonial item -->
                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </section>
        <!-- End Testimonials Section -->

        <!-- ======= Team Section ======= -->
        <section id="team" class="team">
        </section>
        <!-- End Team Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Contact</h2>
                    <p>Contact Us</p>
                </div>

                <div>
                    <iframe style="border: 0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37142.829951158215!2d28.00170379945351!3d-26.19240262219169!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e950b95efab59f1%3A0x3d9ee40e6cfbca2c!2sUniversity%20of%20Johannesburg%20Student%20Center%20-%20Auckland%20Park%20Campus!5e0!3m2!1sen!2sza!4v1625339609634!5m2!1sen!2sza" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
                </div>

                <div class="row mt-5">

                    <div class="col-lg-12">
                        <div class="info">
                            <div class="address">
                                <i class="bi bi-geo-alt"></i>
                                <h4>Location:</h4>
                                <p>Cnr Kingsway & University Roads, Auckland Park, Johannesburg, 2092</p>
                            </div>

                            <div class="email">
                                <i class="bi bi-envelope"></i>
                                <h4>Email:</h4>
                                <p>cyberwatch88@gmail.com</p>
                            </div>

                            <div class="phone">
                                <i class="bi bi-phone"></i>
                                <h4>Call:</h4>
                                <p>+27 11 559 4555</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Contact Section -->

    </main>
    <!-- End #main -->

</asp:Content>
