<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NRMARKv1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>NRMARK</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet" />

</head>
<body id="page-top">
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="../Index.aspx">NRMARK<sub style="font-size: 12px; color: #f4d56c; margin-left: 5px; font-family: 'Hacen Saudi Arabia'">شركة نبيل عبد القادر رجب وإخوانه المحدودة</sub></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">اتصل بنا</a>
                        </li>
                        <%-- <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio">الأكثر مبيعا</a>
                        </li>--%>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services">المنتجات</a>
                        </li>
                        <!--<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">الفريق</a>
            </li>-->
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">الفروع</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="../We.aspx">من نحن</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="../Index.aspx">الصفحة الرئيسية</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header -->
        <header class="masthead">
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">شركة نبيل عبد القادر رجب و إخوانه المحدودة</div>
                    <div class="intro-heading text-uppercase">مرحبا بك في موقعنا</div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">منتجاتنا</a>
                </div>
            </div>
        </header>

        <!-- المنتجات -->
        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">المنتجات</h2>
                        <h3 class="section-subheading text-muted">أنواع المنتجات التي لدينا</h3>
                    </div>
                </div>
                <div class="row text-center">
                    <%--                    <div class="col-md-4 col-type" onclick="goToSound()">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">معدات الصوت</h4>
                        <p class="text-muted">لدينا أفضل معدات الصوت في الشرق الأوسط</p>
                    </div>--%>
                    <div class="col-md-4 col-type" onclick="goToElectronic()">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">أدوات النظافة</h4>
                        <p class="text-muted">لدينا أفضل أدوات النظافة في الشرق الأوسط</p>
                    </div>
                    <div class="col-md-4 col-type" onclick="goToSound()">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="service-heading">معدات الصوت</h4>
                        <p class="text-muted">لدينا أفضل أدوات النظافة في الشرق الأوسط</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- الأكثر مبيعا -->
        <%--   <section class="bg-light" id="portfolio">
            <div class="container" >
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">الأكثر مبيعا</h2>
                        <h3 class="section-subheading text-muted">أهم المنتجات والأكثر مبيعا لدينا</h3>
                    </div>
                </div>
                <div class="row" id="container_imp_items" runat="server">--%>
        <%-- <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/01-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 1</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>
                    <%--<div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/02-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 2</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/03-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 3</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/04-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 4</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/05-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 5</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content">
                                    <i class="fas fa-plus fa-3x"></i>
                                </div>
                            </div>
                            <img class="img-fluid" src="img/portfolio/06-thumbnail.jpg" alt="" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>منتج 6</h4>
                            <p class="text-muted">المواصفات</p>
                        </div>
                    </div>--%>
        <%--             </div>
            </div>
        </section>--%>
        <!-- من نحن -->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">فروعنا</h2>
                        <h3 class="section-subheading text-muted">نحن شركة نمتلك أفضل المنتجات الصوتية والأجهزة الكهربائية في الشرق الأوسط</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="timeline">
                            <%-- <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width:178px; height:160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                     
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body show-hide-text">
                                        <a  id="show-more" class="show-less" href="#show-less">عرض أقل</a>
  <a  id="show-less" class="show-more" href="#show-more">عرض المزيد</a>
                                        <p class="text-muted">نحن شركة نبيل عبدالقادر رجب وإخوانه المحدودة نستورد وندير أعمال كل من منتجات أنظمة مكبرات الصوت ومستلزماتها ومعدات وادوات النظافة  منذ أكثر من عقدين من الزمن. نحن نستورد المنتجات المذكورة من بلدان مختلفة من جميع أنحاء العالم مثل الولايات المتحدة الأمريكية ، المملكة المتحدة ، اليابان ، ألمانيا ، إيطاليا ، إسبانيا ، كوريا ، الصين ، الهند  ... إلخ. يتم استيراد جميع السلع  تحت علامتنا التجارية الخاصة "NRMARK". ايضا لدينا أنواع وأنماط مختلفة من المنتجات وفقا لمتطلبات عملائنا. ومع ازدياد تقدم العالم وتزايد التكنولوجيا ، لدينا الحل الأمثل لجميع متطلبات عملائنا بغرض أن نقدم لهم أفضل ما لدينا
                                            لدينا منتجات عالميه بأفضل جودة لنظام الصوت مثل مكبرات الصوت (امبلفاير)بقدرات وقوة واط متعددة ، وخالطات صوت( مكسرات) متعددة القوة والقدرات ، وسماعات داخليه متعددة الانظمة والقوة بنقاء وجودة عاليه ،ايضا مكبرات الصوت الخارجية( هورنات) بأحجام وقدرات متعددة ، والمايكروفونات الحساسه والعادية السلكية واللاسلكية. وتتضمن المجموعة ملحقات واكسسوارات صوتية مثل اعمدة(استاند) وجلاسات مايكرفون واستاندات وقواعد جدارية للسماعات , وكيبلات للسماعات الداخلية والخارجية وموصلات المايكات بمقاسات معينه ,وموصلات رابطة بين الاجهزة والاخرى....الخ
                                            وايضا لدينا قسم معدات النظافة وملحقاتها وتشمل فئات تنظيف الأرضيات والسجاد بأنواعه مثل مكائن التنظيف الجافه(اتربه) ايضا الجاف والرطب(اتربة وسوائل)بقدرة مواطير شفط قوية وعاليه الجودة ومضمونه وباحجام تانكي استل استيل متعددة الاحجام والموديلات ايطالية الصنع، ايضا لدينا مكائن الشفط الواقفة(المنتصبه) الخاصة لشفط الاتربة من السجاد بفرشة الروله مع ماطور شفط للمساجد وقاعات الافراح والمساحات الكبيرة
                                            ولدينا مكائن تنظيف وتلميع الأرضيات وغسيل السجاد الامريكية والانجليزية الصنع الفائقة الجودة وللاعمال الشاقة المستخدمة في المساجد وقاعات الافراح والمستشفيات والمراكز التجارية والصناعية..الخ . كما أننا نبيع ملحقات تلك المكائن مثل فرشة السجاد وفرش تنظيف الأرضيات الناعمة والخشنه وحامل اللباد , وكرتون اللباد الابيض والاسود الخاص لنظافة الارضيات , ولدينا مماسح الغبار ومماسح ازالة السوائل من الارضيات ومماسح تنظيف الزجاج والنوافذ وملحقاتها بانواع عدة، ..الخ تم توسيع وفتح صالات العرض لدينا في مدن مختلفة من المملكة العربية السعودية مثل جدة ومكة والرياض وخميس مشيط وجيزان لتلبية كل المطالب والاحتياجات المتزايدة من الجمهور من خلال توفيرها في متجر واحد تحت سقف واحد لكل من نظام الصوت ومنتجات تنظيف الأرضيات.
                                            شركتنا تمتلك كوادر عمليه وموظفون منتظمون ومؤهلون تدريباً للقيام بواجبات العمل بدقة واخلاص تام. ينقسمون الى فرق تجمعهم روح العمل بيد واحدة بين اقسام المبيعات في المعارض ومندوبين المبيعات في الهواء الطلق والفنيين والكهربائيين للصيانه وقطع الغيار. وقد تم تدريب الموظفين للتعامل مع الأمور بسرعة وكفاءة ودقة. شعارهم هوا " الوصول الى ارضاء رغبه العميل واحتياجه من اول وهلة " كما نقدم أيضًا أي خدمات إضافية يفضلها عملائنا كثيرا مثل العروض التوضيحية وخدمات ما بعد البيع مثل نتائج الأعطال والإصلاحات وما إلى ذلك. يتم توريد بضائعنا كما ذكرنا إلى شركات ومؤسسات الصيانه والتشغيل والمساجد ، والمناطق والمجمعات السكنية ، والمدارس ، وقاعات المحاضرات ، وقاعات الزفاف ، ومراكز التسوق ، والمستشفيات وغيرها. نحن لا نورد منتجاتنا فحسب ، بل يتم أيضا تثبيتها واختبارها بالجودة من قبل الفنيين ذوي الخبرة العالية. نسعى أن نكون في أفضل حالاتنا وأن نستمر في التطور من أجل تحسين خدمة العملاء ذوي القيمة العالية

                                        </p>
                                    </div>
                                </div>
                            </li>--%>
                            <%--<li class="timeline-inverted">
                                 <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width:178px; height:160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">لدينا منتجات عالميه بأفضل جودة لنظام الصوت مثل مكبرات الصوت (امبلفاير)بقدرات وقوة واط متعددة ، وخالطات صوت( مكسرات) متعددة القوة والقدرات ، وسماعات داخليه متعددة الانظمة والقوة بنقاء وجودة عاليه ،ايضا مكبرات الصوت الخارجية( هورنات) بأحجام وقدرات متعددة ، والمايكروفونات الحساسه والعادية السلكية واللاسلكية. وتتضمن المجموعة ملحقات واكسسوارات صوتية مثل اعمدة(استاند) وجلاسات مايكرفون واستاندات وقواعد جدارية للسماعات , وكيبلات للسماعات الداخلية والخارجية وموصلات المايكات بمقاسات معينه ,وموصلات رابطة بين الاجهزة والاخرى....الخ</p>
                                    </div>
                                </div>
                            </li>--%>
                            <%--<li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>2009-2011</h4>
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">وايضا لدينا قسم معدات النظافة وملحقاتها وتشمل فئات تنظيف الأرضيات والسجاد بأنواعه مثل مكائن التنظيف الجافه(اتربه) ايضا الجاف والرطب(اتربة وسوائل)بقدرة مواطير شفط قوية وعاليه الجودة ومضمونه وباحجام تانكي استل استيل متعددة الاحجام والموديلات ايطالية الصنع، ايضا لدينا مكائن الشفط الواقفة(المنتصبه) الخاصة لشفط الاتربة من السجاد بفرشة الروله مع ماطور شفط للمساجد وقاعات الافراح والمساحات الكبيرة</p>
                                    </div>
                                </div>
                            </li>--%>
                            <%--<li class="timeline-inverted">
                                 <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width:178px; height:160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">ولدينا مكائن تنظيف وتلميع الأرضيات وغسيل السجاد الامريكية والانجليزية الصنع الفائقة الجودة وللاعمال الشاقة المستخدمة في المساجد وقاعات الافراح والمستشفيات والمراكز التجارية والصناعية..الخ

. كما أننا نبيع ملحقات تلك المكائن مثل فرشة السجاد وفرش تنظيف الأرضيات الناعمة والخشنه وحامل اللباد , وكرتون اللباد الابيض والاسود الخاص لنظافة الارضيات , ولدينا مماسح الغبار ومماسح ازالة السوائل من الارضيات ومماسح تنظيف الزجاج والنوافذ وملحقاتها  بانواع عدة، ..الخ

تم توسيع وفتح صالات العرض لدينا في مدن مختلفة من المملكة العربية السعودية مثل جدة ومكة والرياض وخميس مشيط وجيزان لتلبية كل المطالب والاحتياجات المتزايدة من الجمهور من خلال توفيرها في متجر واحد تحت سقف واحد لكل من نظام الصوت ومنتجات تنظيف الأرضيات.
</p>
                                    </div>
                                </div>
                            </li>--%>
                            <%--<li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>2009-2011</h4>
                                        <h4 class="subheading"></h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">شركتنا تمتلك كوادر عمليه وموظفون منتظمون ومؤهلون تدريباً للقيام بواجبات العمل بدقة واخلاص تام. ينقسمون الى فرق تجمعهم روح العمل بيد واحدة بين اقسام المبيعات في المعارض ومندوبين المبيعات في الهواء الطلق والفنيين والكهربائيين للصيانه وقطع الغيار. وقد تم تدريب الموظفين للتعامل مع الأمور بسرعة وكفاءة ودقة. شعارهم هوا " الوصول الى ارضاء رغبه العميل واحتياجه من اول وهلة " كما نقدم أيضًا أي خدمات إضافية يفضلها عملائنا كثيرا مثل العروض التوضيحية وخدمات ما بعد البيع مثل نتائج الأعطال والإصلاحات وما إلى ذلك.
يتم توريد بضائعنا كما ذكرنا إلى شركات ومؤسسات الصيانه والتشغيل والمساجد ، والمناطق والمجمعات السكنية ، والمدارس ، وقاعات المحاضرات ، وقاعات الزفاف ، ومراكز التسوق ، والمستشفيات وغيرها. نحن لا نورد منتجاتنا فحسب ، بل يتم أيضا تثبيتها واختبارها بالجودة من قبل الفنيين ذوي الخبرة العالية.
نسعى أن نكون في أفضل حالاتنا وأن نستمر في التطور من أجل تحسين خدمة العملاء ذوي القيمة العالية
</p>
                                    </div>
                                </div>
                            </li>--%>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading">المكتب الرئيسي</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted" dir="rtl">
                                            عمارة NRMARK مقابل عمائر الاسكان. 
                                            <br />
                                            طريق الملك عبدالله -  حي الشرفية
 
                                            <br />
                                            تلفون : ٠١٢٦٥٢٥٢٥٠
                                            <br />
                                            فاكس : ٠١٢٦٥١٥٥٩٩
                                            <br />
                                            البريد الاكتروني : nrmark@nrmark.com
                                            <br />
                                            <a href="https://www.google.com/maps?q=21.51114273071289,39.191429138183594&z=17&hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-image">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading">معرض جدة 1</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">
                                            مقابل عمائر الاسكان. 
                                            <br />
                                            طريق الملك عبدالله -  حي الشرفية
                                            <br />
                                            تلفون : ٠١٢٦٥١٣٨٩٨
                                            <br />
                                            جوال : ٠٥٠٤٧٤٤٢٥٠
                                            <br />
                                            فاكس : ٠١٢٦٥١١٦٦٦
                                            <br />
                                            <a href="https://maps.google.com/maps/search/5441%20%D8%B7%D8%B1%D9%8A%D9%82%20%D8%A7%D9%84%D9%85%D9%84%D9%83%20%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%84%D9%87%D8%8C%20%D8%AD%D9%8A%20%D8%A7%D9%84%D8%B4%D8%B1%D9%81%D9%8A%D8%A9%D8%8C%20%D8%AC%D8%AF%D8%A9%2022234%C2%A08667%D8%8C%20%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9/@21.510690689086914,39.191768646240234,17z?hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>

                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading">معرض جدة 2</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted" dir="rtl">
                                            مقابل عمائر الاسكان. 
                                            <br />
                                            طريق الملك عبدالله -  حي الشرفية
                                            <br />
                                            تلفون : ٠١٢٦٥٧٠٨٠٠
                                            <br />
                                            جوال : ٠٥٥١٦٦٧٧٤٧
                                            <br />
                                            فاكس : ٠١٢٦٥٠٤٦٧٣
                                          <br />
                                            <a href="https://www.google.com/maps?q=21.51114273071289,39.191429138183594&z=17&hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>
                                        </p>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <%--<h4>2009-2011</h4>--%>
                                        <h4 class="subheading">معرض مكة المكرمة</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">
                                            بجوار بدجت - قبل الحجاز مول.
                                            <br />
                                            شارع الستين - مكة المكرمة
                                            <br />
                                            تلفون : ٠١٢٥٤٩٨٨٠٠
                                            <br />
                                            جوال : ٠٥٤٢١٧٦١٦٧
                                            <br />
                                            فاكس : ٠١٢٥٤٩٧٧٠٠
                                            <br />
                                            <a href="https://www.google.com/maps?q=21.424864,39.785741&shorturl=1" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>

                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading">معرض خميس مشيط</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted" dir="rtl">
                                            مقابل مطعم شيش كباب - طريق الملك فهد.
                                            <br />
                                            الشارع العام خميس ابها - خميس مشيط.
                                            <br />
                                            تلفون : ٠١٧٢٢٠٨٨٠٠
                                            <br />
                                            جوال : ٠٥٥٧٣٩٩٠٠٠
                                            <br />
                                            فاكس : ٠١٧٢٢٠٨٨٠٠
                                            <br />
                                            <a href="https://maps.google.com/maps?q=18.30597686767578%2C42.7209587097168&z=17&hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>

                                        </p>
                                    </div>
                                </div>
                            </li>
                             <li >
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="subheading">معرض جازان</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted" dir="rtl">
                                            مقابل مبنة شركة الاتصالات السعودية.
                                            <br />
                                            طريق الملك فهد - حي الروضة -  جازان.
                                            <br />
                                            تلفون : ٠١٧٣٢١٦٦٤٤
                                            <br />
                                            جوال : ٠٥٠٠٩٩٢٠٢٠
                                            <br />
                                            فاكس : ٠١٧٣١٧٢٦٤٠
                                            <br />
                                            <a href="https://maps.google.com/maps?q=16.906030654907227%2C42.55723571777344&z=17&hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>

                                        </p>
                                    </div>
                                </div>
                            </li>

                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <%--<h4>2009-2011</h4>--%>
                                        <h4 class="subheading">مركز الصيانة</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">
                                            مركز الصيانة و قطع غيار جدة : مقابل عمائر الاسكان. 
                                            <br />
                                            طريق الملك عبدالله -  حي الشرفية
                                            <br />
                                            تلفون : ٠١٢٦٥٣٤٧٠٠
                                            <br />
                                            جوال : ٠٥٤٨٨٢٣٧٨٩
                                            <br />
                                            فاكس : ٠١٢٦٥٢٥٦٠٠
                                            <br />
                                            <a href="https://maps.google.com/maps?q=21.510772705078125%2C39.19194412231445&z=17&hl=en" target="_blank">أضغط هنا لمعرفة مكان الفرع</a>

                                        </p>
                                    </div>
                                </div>
                            </li>

                           
                            <li>
                                <div class="timeline-image">
                                    <img class="rounded-circle img-fluid" src="img/about/com.jpg" style="width: 178px; height: 160px" alt="" />
                                </div>
                                <div class="timeline-panel">

                                    <div class="timeline-heading">
                                        <%--<h4>2009-2011</h4>--%>
                                        <h4 class="subheading">المندوبون</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p class="text-muted">
                                            مندوب مبيعات جدة جوال : ٠٥٠٤٦٣٧٤٨٤
                                            <br />
                                            مندوب مبيعات الرياض جوال : ٠٥٦٦٠٩٠٦٧٩
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <%--<li class="timeline-inverted">
                                <div class="timeline-image">
                                    <h4>Be Part

                                        <br />
                                        Of Our
                   
                                        <br />
                                        Story!</h4>
                                </div>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </section>



        <!-- Contact -->
        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">اتصل بينا</h2>
                        <%--<h3 class="section-subheading text-muted">نحن نمتلك خدمة رد سريع تعمل علي مدار 24 ساعة للرد علي جميع استفساراتك</h3>--%>
                    </div>
                </div>
                <div class="row" dir="rtl">
                    <div class="col-lg-12">
                        <div id="contactForm">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" id="name" type="text" placeholder="الأسم *" required="required" runat="server" data-validation-required-message="Please enter your name." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="email" type="email" placeholder="الإيميل *" required="required" runat="server" data-validation-required-message="Please enter your email address." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="phone" type="tel" placeholder="الهاتف *" required="required" runat="server" data-validation-required-message="Please enter your phone number." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea class="form-control" id="message" placeholder="الرسالة *" required="required" runat="server" data-validation-required-message="Please enter a message."></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div>
                                    <%--<button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">أرسل رسالة</button>--%>
                                    <asp:Button ID="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit" runat="server" Text="إرسال" OnClick="sendMessage" />
                                </div>
                            </div>
                        </div>
                    </div>
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
                                <a href="#">تمت البرمجة والتصميم بواسطة مؤسسة الأفق الرقمي</a>
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
        <div class="portfolio-modal modal fade" runat="server" id="portfolioModal" tabindex="-1" role="dialog" aria-hidden="true">
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
                                    <h2 class="text-uppercase">أسم المنتج</h2>
                                    <img class="img-fluid d-block mx-auto" src="img/portfolio/default.gif" alt="" />
                                    <p>تفاصيل عن المنتج</p>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times"></i>
                                        Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script>
            function goToSound() {
                window.location.href = "../Models/SoundCat.aspx";
            }
            function goToElectronic() {
                window.location.href = "../Models/CLeanCat.aspx";
            }
        </script>
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <%--<script src="js/contact_me.js"></script>--%>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js"></script>
    </form>
</body>
</html>
