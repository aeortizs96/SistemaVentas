﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="P_PaginaInicio.aspx.cs" Inherits="P_PaginaInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Pagina Inicial</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/Chart.js"></script>
    <script src="assets/js/modernizr.custom.js"></script>



    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->

</head>

    <%-- <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Black" 
            style="font-size: xx-large" Text="Bienvenidos"></asp:Label>
    
        <br />
        <asp:Button ID="btncerrar" runat="server" onclick="btncerrar_Click" 
            Text="Cerrar Sesion" />

        <asp:Button ID="btn_registro" runat="server" Text="Registro Usuario" OnClick="btn_registro_Click" />
        <asp:Button ID="btn_clientes" runat="server" Text="Clientes" OnClick="btn_clientes_Click" />
        <asp:Button ID="btn_categoria" runat="server" Text="Categoria" OnClick="btn_categoria_Click" />
        <asp:Button ID="btn_producto" runat="server" Text="Producto" OnClick="btn_producto_Click" />
    </div>
    </form>--%>

    <body data-spy="scroll" data-offset="0" data-target="#theMenu">

    <!-- Menu -->
    <nav class="menu" id="theMenu">
        <div class="menu-wrap">
            <h1 class="logo"><a href="index.html#home">Dental Bolivia</a></h1>
            <i class="icon-remove menu-close"></i>
            <a href="P_PaginaInicio.aspx" class="smoothScroll">Inicio</a>
            <a href="P_Cliente.aspx" class="smoothScroll">Clientes</a>
            <a href="P_Producto.aspx" class="smoothScroll">Producto</a>
            <a href="P_Categoria.aspx" class="smoothScroll">Categoria</a>
            <a href="P_Registro.aspx" class="smoothScroll">Usuario</a>
            <a href="#"><i class="icon-facebook"></i></a>
            <a href="#"><i class="icon-twitter"></i></a>
            <a href="#"><i class="icon-dribbble"></i></a>
            <a href="#"><i class="icon-envelope"></i></a>
        </div>

        <!-- Menu button -->
        <div id="menuToggle"><i class="icon-reorder"></i></div>
    </nav>



    <!-- ========== HEADER SECTION ========== -->
    <section id="home" name="home"></section>
    <div id="headerwrap">
        <div class="container">
            <br>
            <h1>Dental Bolivia</h1>
            <h2>Free Bootstrap 3 Theme</h2>
            <div class="row">
                <br>
                <br>
                <br>
                <div class="col-lg-6 col-lg-offset-3">
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /headerwrap -->


    <!-- ========== WHITE SECTION ========== -->
    <div id="w">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h3>WELCOME TO
                        <bold>ONASSIS</bold>
                        .
                        <bold>A FREE BOOTSTRAP 3</bold>
                        THEME. CRAFTED WITH LOVE BY
                        <bold>BLACKTIE.CO</bold>
                        .
                        <br />
                        <bold>IDEAL FOR</bold>
                        AGENCIES & FREELANCERS.
				</h3>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /w -->

    <!-- ========== SERVICES - GREY SECTION ========== -->
    <section id="services" name="services"></section>
    <div id="g">
        <div class="container">
            <div class="row">
                <h3>OUR SERVICES</h3>
                <br>
                <br>
                <div class="col-lg-3">
                    <img src="assets/img/s1.png">
                    <h4>London</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
                </div>
                <div class="col-lg-3">
                    <img src="assets/img/s2.png">
                    <h4>Berlin</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
                </div>
                <div class="col-lg-3">
                    <img src="assets/img/s3.png">
                    <h4>Paris</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
                </div>
                <div class="col-lg-3">
                    <img src="assets/img/s4.png">
                    <h4>Tokyo</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /g -->

    <!-- ========== CHARTS - DARK GREY SECTION ========== -->
    <div id="dg">
        <div class="container">
            <div class="row">
                <h3>SOME CHARTS</h3>
                <br>
                <br>
                <div class="col-lg-4">
                    <canvas id="javascript" height="130" width="130"></canvas>
                    <br>
                    <h4>Javascript</h4>
                    <br>
                    <script>
                        var doughnutData = [
								{
								    value: 70,
								    color: "#f85c37"
								},
								{
								    value: 30,
								    color: "#ecf0f1"
								}
                        ];
                        var myDoughnut = new Chart(document.getElementById("javascript").getContext("2d")).Doughnut(doughnutData);
					</script>

                </div>
                <div class="col-lg-4">
                    <canvas id="bootstrap" height="130" width="130"></canvas>
                    <br>
                    <h4>Bootstrap</h4>
                    <br>
                    <script>
                        var doughnutData = [
								{
								    value: 90,
								    color: "#f85c37"
								},
								{
								    value: 10,
								    color: "#ecf0f1"
								}
                        ];
                        var myDoughnut = new Chart(document.getElementById("bootstrap").getContext("2d")).Doughnut(doughnutData);
					</script>
                </div>
                <div class="col-lg-4">
                    <canvas id="wordpress" height="130" width="130"></canvas>
                    <br>
                    <h4>Wordpress</h4>
                    <br>
                    <script>
                        var doughnutData = [
								{
								    value: 55,
								    color: "#f85c37"
								},
								{
								    value: 45,
								    color: "#ecf0f1"
								}
                        ];
                        var myDoughnut = new Chart(document.getElementById("wordpress").getContext("2d")).Doughnut(doughnutData);
					</script>
                </div>

            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /dg -->

    <section id="portfolio" name="portfolio"></section>
    <div id="portfoliowrap">
        <div class="container">
            <div class="row">
                <h3>COOL WORKS</h3>
                <br>
                <br>
                <div class="col-lg-4 port-space">
                    <a href="item.html">
                        <img src="assets/img/work1.png"></a>
                </div>
                <div class="col-lg-4 port-space">
                    <a href="item.html">
                        <img src="assets/img/work2.png"></a>
                </div>
                <div class="col-lg-4 port-space">
                    <a href="item.html">
                        <img src="assets/img/work3.png"></a>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /portfoliowrap -->

    <!-- ========== WHITE SECTION ========== -->
    <div id="w">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h3>WE WORK HARD TO DELIVER A
                        <bold>HIGH QUALITY SERVICE</bold>
                        . OUR AIM IS YOUR COMPLETE
                        <bold>SATISFACTION</bold>
                        .
				</h3>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /w -->

    <!-- ========== ABOUT - GREY SECTION ========== -->
    <section id="about" name="about"></section>
    <div id="g">
        <div class="container">
            <div class="row">
                <h3>ABOUT US</h3>
                <br>
                <br>
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce lectus elit, tincidunt nec turpis sed, accumsan iaculis ipsum. Nulla at augue auctor, tristique erat in, ultricies nunc. Mauris eget metus leo. Ut in mi lacinia, mattis nisl non, ultrices risus. Vestibulum aliquet aliquam ipsum ut ullamcorper. Pellentesque fringilla, massa vel rutrum consequat, nulla velit fermentum dolor, sed scelerisque.</p>
                    <br>
                    <br>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-3 team">
                    <img class="img-circle" src="assets/img/team01.jpg" height="90" width="90">
                    <h4>Liz Stewart</h4>
                    <h5><i>Product Manager</i></h5>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>
                        <a href="index.html#"><i class="icon-facebook"></i></a>
                        <a href="index.html#"><i class="icon-twitter"></i></a>
                        <a href="index.html#"><i class="icon-envelope"></i></a>

                    </p>
                </div>

                <div class="col-lg-3 team">
                    <img class="img-circle" src="assets/img/team02.jpg" height="90" width="90">
                    <h4>Brad Casey</h4>
                    <h5><i>Front-end Developer</i></h5>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>
                        <a href="index.html#"><i class="icon-facebook"></i></a>
                        <a href="index.html#"><i class="icon-twitter"></i></a>
                        <a href="index.html#"><i class="icon-envelope"></i></a>

                    </p>
                </div>

                <div class="col-lg-3 team">
                    <img class="img-circle" src="assets/img/team03.jpg" height="90" width="90">
                    <h4>Pamela Chow</h4>
                    <h5><i>Web Designer</i></h5>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>
                        <a href="index.html#"><i class="icon-facebook"></i></a>
                        <a href="index.html#"><i class="icon-twitter"></i></a>
                        <a href="index.html#"><i class="icon-envelope"></i></a>

                    </p>
                </div>

                <div class="col-lg-3 team">
                    <img class="img-circle" src="assets/img/team04.jpg" height="90" width="90">
                    <h4>Tim Gates</h4>
                    <h5><i>Back-end Guru</i></h5>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>
                        <a href="index.html#"><i class="icon-facebook"></i></a>
                        <a href="index.html#"><i class="icon-twitter"></i></a>
                        <a href="index.html#"><i class="icon-envelope"></i></a>

                    </p>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /g -->

    <!-- ========== FOOTER SECTION ========== -->
    <section id="contact" name="contact"></section>
    <div id="f">
        <div class="container">
            <div class="row">
                <h3><b>CONTACT US</b></h3>
                <br>
                <div class="col-lg-4">
                    <h3><b>Send Us A Message:</b></h3>
                    <h3>onassis@blacktie.co</h3>
                    <br>
                </div>

                <div class="col-lg-4">
                    <h3><b>Call Us:</b></h3>
                    <h3>+55 3984-4389</h3>
                    <br>
                </div>

                <div class="col-lg-4">
                    <h3><b>We Are Social</b></h3>
                    <p>
                        <a href="index.html#"><i class="icon-facebook"></i></a>
                        <a href="index.html#"><i class="icon-twitter"></i></a>
                        <a href="index.html#"><i class="icon-envelope"></i></a>
                    </p>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <!-- /container -->
    </div><!-- /f -->

    <div id="c">
        <div class="container">
            <p>Created by <a href="http://www.blacktie.co">BLACKTIE.CO</a></p>

        </div>
    </div>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/classie.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/smoothscroll.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
