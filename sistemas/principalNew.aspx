<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js ie ie8"> <![endif]-->
<!--[if IE 9]>         <html class="no-js ie ie9"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js"> <!--<![endif]-->

    <head>

        <meta charset="utf-8">

        <title>Sobre PPA - Pausa para Aprender</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">

        <link rel="stylesheet" href="Styles/main.css">  
        <link rel="shortcut icon" type="image/x-icon" href="imagens/favicon.ico" />

        <!--[if lt IE 9]>
         <script src="js/html5shiv.js"></script>
        <![endif]-->

    </head>

    <body>
     <form id="form1" runat="server">
        <!-- SITE CONTENT -->

        <header>
            <div class="parentContainer">
            
                <div id="socialButtons">
                <div style="float:right"><input class="submit2" type="submit" value="Sair" style="font-size:10px;margin-top:10px;margin-right:10px"/></div>
                    <a href="#" id="linked">
                        <p style="width:auto;padding-left:5px;padding-right:5px;padding-top:1px">Ben-vindo, <font color="4496D2"> Alexandre Bastos </font> </p> 
                        <span>linked </span>
                    </a>
                 
                    
                </div>
                
            </div>
            <div>
        
                <div id="menu">
                    <section>
                        <a href="index.html"><img src="imagens/logo.png" alt=""></a>
                        <ul class="clearfix">
                            <li><a href="index.html">Home</a></li>
                            <li class="selected"><a href="sobre.html">Sobre ppa</a></li>
                            <li><a href="servicos.html">Serviços</a></li>
                                                        
                            <li><a href="contato.html">Contato</a></li>
                        </ul>
                    </section>
                </div>
                <div id="tagline">
                    <section>
                        <a href="#">Meus <strong>Cursos</strong></a>
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


        <!-- CONTENT -->

        <div id="contentBk" class="clearfix">
            
 
            <div id="content">
                <div class="topImg clearfix">
                    <img src="imagens/headers/header_1.jpg" alt="About Us">
                    
                    <p>Menu <strong>Administrativo</strong></p>
                  <div style="float:right;margin-top:-115px;margin-right:15px">                          
                        <img src="imagens/foto.png" alt=""><br>
                  <input class="submit1" type="submit" value="Alterar" style="font-size:10px;margin-top:-5px"/></div>
                </div>
                
                
              <div class="searchCourse searchCourseHome column c-30 clearfix" style="margin-top:5px;margin-left:0px">
                    
                        
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Avaliações</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Colaboradores</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Criar Cursos</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Meus Cursos</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Sistema</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Treinamentos</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Minhas Avaliações</button><br>
                            <button style="width:264px;height:35px;color:#738390;margin-top:10px">Relatórios</button>
                            
                            
                        </form>
                    </div>
                
                
                
                      <asp:GridView ID="grdCursos" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlCursos" Font-Names="VERDANA" 
                                    Font-Size="8pt" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
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
                                    <EditRowStyle BackColor="#2461BF" />
                                    <EmptyDataTemplate>
                                        <CENTER>NÃO HÁ CURSOS DISPONÍVEIS NO MOMENTO!</CENTER>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlCursos" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand="
 select NOME_CURSO,CAMINHO_CURSO,B.DATA_HORA_INICIO,B.DATA_HORA_FIM,MATRICULA,NOME  
 from PPA_TREINA_COLABORADOR A
 INNER JOIN PPA_TREINAMENTO B ON A.PPA_COLABORADORES_COD_COLABORADOR = B.COD_TREINAMENTO
 INNER JOIN PPA_CURSO C ON B.PPA_CURSO_ID_CURSO = C.ID_CURSO
 INNER JOIN PPA_COLABORADORES D ON A.PPA_COLABORADORES_COD_COLABORADOR = D.COD_COLABORADOR
 WHERE D.COD_COLABORADOR = 0"></asp:SqlDataSource>

                        
                
          </div>


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
        </form>
    </body>
</html>
