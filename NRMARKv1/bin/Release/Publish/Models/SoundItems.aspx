<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SoundItems.aspx.cs" Inherits="NRMARKv1.Models.SoundItems" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>NRMARK</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'/>
    <!-- Custom styles for this template -->
    <link href="../css/agency.min.css" rel="stylesheet"/>
</head>
<body id="page-top">
    <form runat="server" id="form1">
        <!-- Navigation -->
        <nav style="background-color:#212529;padding-top:7px;padding-bottom:7px;" id="mainNav">
            <div class="container">
                 <div style="display: inline;position:absolute;direction:rtl;margin-left:67%;margin-top:10px">
                 <a  style="margin-left:4px" href="../Index.aspx">الصفحة الرئيسية</a>
                    <a href="../Models/SoundCat.aspx">معدات الصوت</a>
                </div>
                <a style="display: inline;" class="navbar-brand js-scroll-trigger" href="../Index.aspx">NRMARK<sub style="display: inline; font-size: 12px; color: #f4d56c; margin-left: 5px; font-family: 'Hacen Saudi Arabia'">شركة نبيل عبد القادر رجب وأخوانة المحدودة</sub></a>
               
                <%--                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">اتصل بنا</a>
                        </li>--%>
                <%-- <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio">الأكثر مبيعا</a>
                        </li>--%>
                <%--                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services">المنتجات</a>
                        </li>--%>
                <!--<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">الفريق</a>
            </li>-->
                <%--                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">من نحن</a>
                        </li>--%>
            </div>
        </nav>
        <!-- Header -->
        <header class="masthead">
<%--            <div class="container">
                <div class="intro-text">
                </div>
            </div>--%>
        </header>
        <!-- المنتجات -->
        <section class="bg-light" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">المنتجات</h2>
                        <h3 class="section-subheading text-muted">جميع منتجات معدات الصوت</h3>
                    </div>
                </div>
                <div class="row" id="container_imp_items" runat="server">
                   <%-- <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/01-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 1</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/02-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 2</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/03-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 3</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/04-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 4</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/05-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 5</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/06-thumbnail.jpg" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>فئة 6</h4>
                        </div>
                    </div>--%>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; NRMARK</span>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="#" style="font-family:'Hacen Saudi Arabia';">تمت البرمجة والتصميم بواسطة شركة الأفق الرقمي</a>
                            </li>
                            <!--<li class="list-inline-item">
                                <a href="#">شركة الأفق الرقمي</a>
                            </li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

               <!-- Modal 1 -->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="../img/portfolio/default.gif" alt="" />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>Date: January 2017</li>
                                        <li>Client: Threads</li>
                                        <li>Category: Illustration</li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Modals -->
        <!-- Modal 1 -->
        <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Plugin JavaScript -->
        <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Contact form JavaScript -->
        <script src="../js/jqBootstrapValidation.js"></script>
        <script src="../js/contact_me.js"></script>
        <!-- Custom scripts for this template -->
        <script src="../js/agency.min.js"></script>

    </form>

</body>
</html>
