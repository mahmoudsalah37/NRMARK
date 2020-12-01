<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminChangeData.aspx.cs" Inherits="NRMARKv1.Models.AdminChangeData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>NRMARK</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="../css/agency.min.css" rel="stylesheet" />

</head>
<body>
    <form runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" >
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="../index.html">NRMARK<sub style="font-size:12px;color:#f4d56c;margin-left:5px; font-family:'Hacen Saudi Arabia'">شركة نبيل عبد القادر وأخوانة</sub></a>

                <div class="collapse navbar-collapse" id="navbarResponsive">

                </div>
            </div>
        </nav>
        <!-- Header -->
        <header class="masthead">
            <div class="container">
                <div class="intro-text">
                </div>
            </div>
        </header>
        <!-- المنتجات -->
        <section class="bg-light" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">صفحة التعديل</h2>
                        <h3 class="section-subheading text-muted">التعديل علي المنتجات و الأصناف</h3>
                    </div>
                </div>
                <div class="row" id="container_imp_items" runat="server">
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a id="catEditLink" class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/catIcon.png" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>الفئات</h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a id="itemEditLink" runat="server" class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="../img/portfolio/itemIcon.png" alt=""/>
                        </a>
                        <div class="portfolio-caption">
                            <h4>المنتجات</h4>
                        </div>
                    </div>
<%--                    <div class="col-md-4 col-sm-6 portfolio-item">
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
                                    <h2 class="text-uppercase">الفئات</h2>
                                    <asp:RadioButtonList   ID="RadioButtonList2" runat="server" AutoPostBack="true"  RepeatDirection="Horizontal" style="margin:auto;margin-bottom:10px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                                        <asp:ListItem Selected="True" Value="add">إضافة</asp:ListItem>
                                        <asp:ListItem Value="edit">تعديل</asp:ListItem>
                                        <asp:ListItem Value="delete">حذف</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:Label ID="Label4" runat="server" Text="النوع" style=" margin-left:-40px; margin-right:10px;"></asp:Label>
                                    <asp:DropDownList runat="server" ID="DropDownListCat" AutoPostBack="true" OnSelectedIndexChanged="DropDownListCat_SelectedIndexChanged">
                                        <asp:ListItem Value="0" Selected="True">معدات الصوت</asp:ListItem>
                                        <asp:ListItem Value="1" Selected="False">أدوات النظافة</asp:ListItem>
                                    </asp:DropDownList><hr />
                                    <asp:Label ID="Label1" Visible="false"  runat="server" Text="اسم الفئة" style="margin-right:10px"></asp:Label><asp:DropDownList ID="DropDownList2" Visible="false"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList><hr /><asp:Label ID="Label13" runat="server" Text="اسم الفئة" style="margin-right:10px"></asp:Label><input id="namecat" title="name" runat="server"   type="text" /><hr />
                                    <asp:Image ID="Image2" runat="server" Height="80px" Width="80px" ImageUrl="~/img/NoImage.png" Visible="False" /><asp:Label ID="Label2" runat="server" Text="الصورة" style="margin-right:10px"></asp:Label><asp:FileUpload ID="imgCat" runat="server"  style="margin-right:-140px"/><hr />
                                    <asp:Label ID="Label3" runat="server" Text="وصف قصير" style="margin-right:10px"></asp:Label><input id="titleCat" runat="server" type="text" /><hr />
                                    <asp:button ID="addCat" runat="server" text="إضافة" OnClick="Button2_Click" /><hr />
                                    <asp:Label ID="Label12" style="color:red" runat="server" Text=""></asp:Label>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 2 -->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
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
                                    <h2 class="text-uppercase">المنتجات</h2>
                                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" style="margin:auto;margin-bottom:10px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                        <asp:ListItem  Selected="True" Value="add">إضافة</asp:ListItem>
                                        <asp:ListItem Value="edit">تعديل</asp:ListItem>
                                        <asp:ListItem Value="delete">حذف</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:Label ID="Label5" runat="server" Text="النوع" style=" margin-left:-40px; margin-right:10px;"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ><asp:ListItem Text="معدات الصوت" Value="0"></asp:ListItem><asp:ListItem Text="أدوات النظافة" Value="1" ></asp:ListItem></asp:DropDownList><hr />
                                    <asp:Label ID="Label9" runat="server" Text="الفئة" style=" margin-left:-40px; margin-right:10px;"></asp:Label>
                                    <asp:DropDownList id="selectCatItem" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectCatItem_SelectedIndexChanged">
                                    </asp:DropDownList><hr />
                                    <asp:Label ID="Label6" Visible="false" runat="server" Text="اسم المنتج" style="margin-right:10px"></asp:Label><asp:DropDownList ID="DropDownList3" Visible="false" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList><hr /><asp:Label ID="Label14" runat="server" Text="اسم المنتج" style="margin-right:10px"></asp:Label><input id="nameItem" title="name" runat="server"  type="text" /><hr />
                                    <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" ImageUrl="~/img/NoImage.png" Visible="False" /><asp:Label ID="Label7" runat="server" Text="الصورة" style="margin-right:10px"></asp:Label><asp:FileUpload ID="imgItem" runat="server" style="margin-right:-140px"/><hr />
                                    <asp:Label ID="Label8" runat="server" Text="وصف قصير" style="margin-right:10px"></asp:Label><input id="titleItem" runat="server" type="text" /><hr />
                                    <asp:Label ID="Label10" runat="server" Text="وصف طويل" style="margin-right:10px"></asp:Label><input id="descriptionItem" runat="server" type="text" /><hr />
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="وضع في الصفحة الرئيسية" Visible="False" />      <hr />                              
                                    <asp:button ID="Button1" runat="server" text="إضافة" class="btn btn-primary" OnClick="Button1_Click" /><hr />
                                    <asp:Label ID="Label11" style="color:red" runat="server" Text=""></asp:Label>
                                        <%--<i class="fas fa-times"></i>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

        <script type="text/javascript">
            function openModal() {
                $('#portfolioModal2').modal('show');
            }
            function openModal2() {
                $('#portfolioModal1').modal('show');
            }
        </script>
    </form>
</body>
</html>
