<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PPA.login" %>


<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js ie ie8"> <![endif]-->
<!--[if IE 9]>         <html class="no-js ie ie9"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js"> <!--<![endif]-->

    <head>

        <meta charset="utf-8">

        <title>Sobre PPA - Pausa para Aprender</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        
        <link href="../css/main.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />

        <!--[if lt IE 9]>
         <script src="js/html5shiv.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- SITE CONTENT -->

        <header>
            <div class="parentContainer">
                <div id="socialButtons">
                    <a href="#" id="linked">
                        <p>Login</p> 
                        <span>linked </span>
                    </a>
                    
                </div>
            </div>
            <div>
        
                <div id="menu">
                    <section>
                        <a href="../index.html"><img src="Imagens/logo.png" alt=""></a>
                        <ul class="clearfix">
                            <li><a href="../index.html">Home</a></li>
                            <li><a href="../sobre.html">Sobre ppa</a></li>
                            <li><a href="../servicos.html">Servi&ccedil;os</a></li>
                                                        
                            <li><a href="../contato.html">Contato</a></li>
                        </ul>
                    </section>
                </div>
                <div id="tagline">
                    <section>
                        <a href="#">Pausa Para <strong>Aprender</strong> </a>
                    </section>
                </div>
                <div id="info">
                    <section>
                        <div>
                            <img src="imagens/phone.png" alt="">
                            <h2 style="margin-top:10px">+55-21-99686-5224</h2>
                            
                        </div>
                        <span class="element leftElement"></span>
                        <span class="triangle">triangle</span>
                    </section>
                </div>               
            </div>    
        </header>    

        <!-- CONTENT -->

        <div id="contentBk" class="clearfix">
            <div id="content">
                <div class="topImg clearfix">
                    <img src="imagens/headers/header_1.jpg" alt="About Us">
                    <p>Login</p>
                </div>
                <div class="wrapper grid">

                    <br><br><br><br><br><br><br>

                    

                    <div class="column c-100 clearfix" style="margin-left:320px">
                        
                        <div class="searchCourse searchCourseHome column c-33 clearfix">
                        
                        <form id="form1" runat="server">
                        
                           <asp:TextBox ID="txtUsuario" runat="server"   Height="30"  Width="160px"></asp:TextBox>
                            <asp:TextBox ID="txtSenha"  runat="server"  TextMode="Password" Height="30"  Width="160px"></asp:TextBox>
                          
                          <asp:ImageButton ID="btEntrar" runat="server" 
                                                        ImageUrl="Imagens/botaoEntrar.png" 
                                                        onclick="btEntrar_Click" />
                               
                               <asp:Label ID="lblStatus" runat="server"   style="font-size:12px;color:#F00" ></asp:Label><br>                 
                        </form>
                    </div>
                        
                    </div>

                    <br><br><br><br>

                    
            </div>

        </div>



     <!-- FOOTER -->

      <footer>

            <div class="stripe clearfix">
                <div class="twitter">
                    <img src="imagens/twitter.png" alt=""><div class="twitterList" data-user="rubenbristian"></div>
                </div>
            </div>

            <div class="mail">
                <div>
                    <div class="mailInfo">
                        <div>
                            <h4>Assine o Newsletter</h4>
                            <input id="mailInput" type="text" />
                            <input id="mailSubmit" type="submit" value="Ir"/>
                        </div>
                    </div>
                    <span class="triangle">triangle</span>
                    <span class="element rightElement"></span>
                </div>
            </div> 

            <div id="footerContent" >
                <section>
                    
                    <div id="bottomFooter">
                        <p>&copy; 2014 PPA - Pausa para Aprender. Todos os Direitos Reservados</p>
                        <div>
                            <ul id="social" >
                                <li><a href="#" id="finalTwitter">twitter</a></li>
                                <li><a href="#" id="finalFacebook">facebook</a></li>
                                
                            </ul>
                            <!--<ul id="legal">
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms &amp; Condition</a></li>
                            </ul>-->
                        </div>
                    </div>
                </section>
            </div>
        </footer>

        <!-- END SITE CONTENT -->

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
        <script src="js/scripts.js"></script>

    </body>
</html>
