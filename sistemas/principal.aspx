<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="PPA.WebForm1" %>

<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js ie ie8"> <![endif]-->
<!--[if IE 9]>         <html class="no-js ie ie9"> <![endif]-->
<!--[if gt IE 9]>< <html class="no-js">!--> <!--<![endif]-->


<head runat="server">
    <title>Pausa Para Aprender</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
    <link href="../css/main.css" rel="stylesheet" type="text/css" />

    
    
        <script type="text/javascript">

            function foo() {

                var o = window.event.srcElement;

                if (o.tagName == "INPUT" && o.type == "checkbox") {

                    __doPostBack("", "");

                }

            }

            $(document).ready(function () {

                $('a[name=modal]').click(function (e) {
                    e.preventDefault();

                    var id = $(this).attr('href');

                    var maskHeight = $(document).height();
                    var maskWidth = $(window).width();

                    $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

                    $('#mask').fadeIn(1000);
                    $('#mask').fadeTo("slow", 0.8);

                    //Get the window height and width
                    var winH = $(window).height();
                    var winW = $(window).width();

                    $(id).css('top', winH / 2 - $(id).height() / 2);
                    $(id).css('left', winW / 2 - $(id).width() / 2);

                    $(id).fadeIn(2000);

                });

                $('.window .close').click(function (e) {
                    e.preventDefault();

                    $('#mask').hide();
                    $('.window').hide();
                });

                $('#mask').click(function () {
                    $(this).hide();
                    $('.window').hide();
                });

            });

            function ativar_Div(nome) {

                var id = nome;

                var maskHeight = $(document).height();
                var maskWidth = $(window).width();

                $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

                $('#mask').fadeIn(1000);
                $('#mask').fadeTo("slow", 0.8);

                //Get the window height and width
                var winH = $(window).height();
                var winW = $(window).width();


                $(id).css('top', winH / 2 - $(id).height() / 2);
                $(id).css('left', winW / 2 - $(id).width() / 2);

                $(id).fadeIn(2000);

            }

            $(document).ready(function () {
                var Height = $(document).height();
                $('#tb_principal').css({ 'height': Height });
            });





            function chamabt() {
                alert('entrei');
                //document.getElementById("btExcluir").click();
            }
            function fechar_div5() {
                var nomeDiv = "dialog5";
                document.getElementById(nomeDiv).style.display = "none";
            }

            function Exit(item) {
                switch (item.name) {
                    case "txtBuscar":
                        if (item.value == '') {
                            item.value = "Buscar";
                        }
                        break;

                    case "txtSobrenome":

                        if (item.value == '') {
                            item.value = "Sobrenome";
                        }
                        break;

                    case "txtEmail":

                        if (item.value == '') {
                            item.value = "E-mail";
                        }
                        break;

                    case "txtSenha":

                        if (item.value == '') {
                            item.value = "Senha";
                        }
                        break;
                }


            }

            function IsEmail(mail) {

                var er = new RegExp(/^\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3}$/)
                if (typeof (mail) == "string") {
                    if (er.test(mail)) { return true; }
                } else if (typeof (mail) == "object") {
                    if (er.test(mail.value)) {
                        return true;
                    }
                } else {
                    alert('Por favor, digite o email corretamente');
                    mail.focus();
                    return false
                }
            }



    </script>
</head>
<body>
 <div id="boxes">
    <form id="form1" runat="server">
    <div id="mask"></div> 
<header>
<div>
        <div class="parentContainer">
            
                <div id="socialButtons">
                <div style="float:right;margin-top:-5px;"> <input class="submit2" type="button" value="Sair" style="font-size:10px;margin-right:10px" onclick="javascript:window.location.href='login.aspx';" /></div>
                    <a href="#" id="linked">
                        <p style="width:auto;padding-left:5px;padding-right:5px;margin-top:2px">Ben-vindo, <font color="4496D2"> <asp:TextBox ID="txtNomeColaboradr" runat="server" BorderStyle="None" Font-Names="Verdana" Font-Size="8pt" ForeColor="#4496D2"></asp:TextBox> </font> </p> 
                        <span>linked </span>
                    </a>
                 
                    
                </div>
                
            </div>
                <div id="menu">
                    <section>
                        <a href="index.html"><img src="imagens/logo.png" alt=""></a>
                       
                    </section>
                </div>
                <div id="tagline">
                    <section>
                    
                        <a href="#"><strong><asp:Label ID="LBLSELECAO" runat="server"></asp:Label></strong></a>
                    </section>
                </div>
                <div id="info">
                    <section>
                        <div>
                            <img src="imagens/phone.png" alt="">
                            <h2 style="margin-top:10px"></h2>
                            
                        </div>
                        <span class="element leftElement"></span>
                        <span class="triangle">triangle</span>
                    </section>
                </div>               
            </div>    

</header>
<br />
<br />
<br />
<br />
<br />
<br />
<br />

            <div id="content">
                 <div class="topImg clearfix" style="margin-top:-6px">
                    <img src="imagens/headers/header_1.jpg" alt="About Us">
                    
                    <p>Home <strong>do Aluno</strong></p>
                  <div style="float:right;margin-top:-110px;margin-right:15px">                          
                        <asp:Image ID="FotoUsuario" runat="server" ImageUrl="~/Imagens/semFoto.jpg" 
                                    BorderColor="#FFCCFF" BorderStyle="Solid" BorderWidth="1px" Height="70px" 
                                    Width="65px" /><br>
                        <a href="#dialog12" name="modal" style="color:'blue';text-decoration:'underline'"> <input class="submit1" type="submit" value="Alterar foto" style="font-size:10px;margin-top:5px"/></a>
                  </div>
                </div>
                

      
                    <table cellpadding="0" cellspacing="0" style="margin-left:-40px" bgcolor="#FFFFFF">
                        
                        <tr align="center" bgcolor="#FFFFFF">
                            <td colspan="2" align="right" valign="middle" bgcolor="#FFFFFF">
                             <asp:Label ID="lblStatus" runat="server" Text="" BackColor="#FFFFFF"></asp:Label>
                            </td>
                            
                        </tr>
                       
                        <tr bgcolor="#FFFFFF" style="background-color:#FFF">
                            <td align="left" valign="top" rowspan="4" style="background-color:#FFF" bgcolor="#FFFFFF"> 
                                <!-- Menu-->
                                
                                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlMenuAcesso" 
                                    AutoGenerateColumns="False" DataKeyNames="ID_MENU" PageSize="15" 
                                    ShowHeader="False" onrowcommand="GridView1_RowCommand">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" 
                                                    Text=<%# DataBinder.Eval(Container.DataItem, "descricao")%>  style="width:264px;height:35px;color:#738390;margin-top:10px"
                                                     CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id_menu")%>' />
                                                
                                            </ItemTemplate> 
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:SqlDataSource ID="SqlMenuAcesso" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand="
                                                         select 
	                                                        ID_MENU,
	                                                        PPA_TIPO_MENU_ID_TIPO_MENU,
	                                                        DESCRICAO,
	                                                        STATUS_MENU,
	                                                        LINK_MENU
                                                         from PPA_MENU
                                                         where  PPA_TIPO_MENU_ID_TIPO_MENU = 1"></asp:SqlDataSource>
                            
                            </td>   
                             
                        <td>
                                <hr /></td>
                            
                        </tr>
                        
                        <tr>
                        
                            <td width="100%" id="td_principal" align="center" valign="top" bgcolor="#FFFFFF" style="padding-left:105px"> 
                                <asp:GridView ID="grdCursos" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlCursos" Font-Names="VERDANA" 
                                    Font-Size="8pt" 
                                    onrowcommand="grdCursos_RowCommand" Width="611px">
                                    <Columns>
                                        <asp:BoundField DataField="NOME_CURSO" HeaderText="CURSO" 
                                            SortExpression="NOME_CURSO" />
                                        <asp:BoundField DataField="DATA_HORA_FIM" HeaderText="DISPONÍVEL ATÉ" 
                                            SortExpression="DATA_HORA_FIM" >
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="ACESSAR">
                                            <FooterTemplate>
                                                Não há treinamentos disponíveis no momento!
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btiniciarCurso" runat="server" Height="40px" 
                                                    ImageUrl="~/Imagens/INICIAR_TREINAMENTO1.jpg" 
                                                    CommandArgument='<%# DataBinder.Eval(Container.DataItem, "CAMINHO_CURSO")%>'/>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="MATRICULA" HeaderText="MATRICULA" 
                                            SortExpression="MATRICULA" Visible="False" />
                                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" 
                                            Visible="False" />
                                        <asp:BoundField DataField="CAMINHO_CURSO" HeaderText="CAMINHO_CURSO" 
                                            SortExpression="CAMINHO_CURSO" Visible="False" />
                                        <asp:BoundField DataField="DATA_HORA_INICIO" HeaderText="DATA_HORA_INICIO" 
                                            SortExpression="DATA_HORA_INICIO" Visible="False" />
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <CENTER>NÃO HÁ CURSOS DISPONÍVEIS NO MOMENTO!</CENTER>
                                    </EmptyDataTemplate>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlCursos" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand="
 select NOME_CURSO,CAMINHO_CURSO,B.DATA_HORA_INICIO,B.DATA_HORA_FIM,MATRICULA,NOME  
 from PPA_TREINA_COLABORADOR A
 INNER JOIN PPA_TREINAMENTO B ON A.PPA_COLABORADORES_COD_COLABORADOR = B.COD_TREINAMENTO
 INNER JOIN PPA_CURSO C ON B.PPA_CURSO_ID_CURSO = C.ID_CURSO
 INNER JOIN PPA_COLABORADORES D ON A.PPA_COLABORADORES_COD_COLABORADOR = D.COD_COLABORADOR
 WHERE D.COD_COLABORADOR = 0
 
 
"></asp:SqlDataSource>
                            </td>
                        
                        
                        </tr>

                    </table>
                                    
                            
             
            
        
                <div id="dialog12" class="window">  <!-- Alerta de Alteração de arquivo-->
                       <table width="100%" id="Table6" style="font-family:verdana;font-size:10px;">
                            <tr>
                                <td align="left" ><b>Alteração de foto</b></td><td><a href="#" class="close"><b>[X]</b></a></td>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><hr/></td>
                            </tr>
                            <tr>
                                <td colspan="2"> <asp:Label ID="lblErroFoto" runat="server"></asp:Label>       </td>
                            </tr>
                            

                            <tr>
                                <td colspan="2"> 
                                    Selecione uma nova foto para o seu perfil! <br /><br /> </td>
                            </tr>
                            <tr>
                                <td colspan="2">Selecione o Arquivo <br />
                                <asp:FileUpload ID="fileAlteraFoto"  Width="100%" runat="server" style="font-family:verdana;font-size:10px;" BackColor="LemonChiffon" />
                                
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="center" colspan="2">
                                <br />
                                <br />
                                    <asp:ImageButton ID="cmdAlterafOTO" runat="server" Height="30" ImageUrl="~/Imagens/botaoConfirmar.jpg" onclick="cmdAlteraArquivo_Click" />
                                </td>
                                
                            </tr>
                           
                       
                      </table>
                    
                </div>      
                 <div id="dialog13" class="window" >  <!-- Alerta de Alteração de arquivo-->
                       <table width="100%" id="Table1" style="font-family:verdana;font-size:10px;">
                            <tr>
                                <td align="left" ><b>Alteração de foto</b></td><td><a href="#" class="close"><b>[X]</b></a></td>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><hr/></td>
                            </tr>
                            <tr>
                                <td colspan="2"> <asp:Label ID="Label1" runat="server"></asp:Label>       </td>
                            </tr>
                            

                            <tr>
                                <td colspan="2"> 
                                    Selecione uma nova foto para o seu perfil! <br /><br /> </td>
                            </tr>
                            <tr>
                                <td colspan="2">Selecione o Arquivo <br />
                                <asp:FileUpload ID="FileUpload1"  Width="100%" runat="server" style="font-family:verdana;font-size:10px;" BackColor="LemonChiffon" />
                                
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="center" colspan="2">
                                <br />
                                <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30" ImageUrl="~/Imagens/botaoConfirmar.jpg" onclick="cmdAlteraArquivo_Click" />
                                </td>
                                
                            </tr>
                           
                       
                      </table>
                    
                </div>      
               
       </div>          
   
</form>
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
                    
                    
                    
                </div>
            </div> 

            <div id="footerContent" >
                <section>
                    
                    <div id="bottomFooter">
                        <p>© 2014 PPA - Pausa para Aprender. Todos os Direitos Reservados</p>
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
