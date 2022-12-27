<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PPA._default" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 

<link href='Styles/Site.css' rel='stylesheet' type='text/css' />
    <title>Pausa Para Aprender</title>
     <script type="text/javascript">
         $(document).ready(function () {
             var Height = $(document).height();
             $('#tb_principal').css({ 'height': Height });
         });
         $(document).ready(function () {
             var Height = $(document).height()-180;
             $('#tb_usu_sh').css({ 'height': Height });
         });

         
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table id="tb_principal" width="100%">
        
        <tr align="center" valign="top" >
            <td width="15%"></td>
            <td  style=" border-style: solid; border-width: 1px; border-color: #FFCCFF;">
                    <table width=100% border=0>
                        <tr>
                            <td width="20%"> <img src="Imagens/logoPPA.png" height="50" /> </td>
                            <td width="80%" align="center" class="titulo"> Pausa para Aprender<br /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td align=right><i style="font-family:Verdana; font-size:8">"Se você continuar fazendo o que sempre fez, continuará <br />obtendo os mesmos resultados de sempre" </i></td>
                        
                        </tr>
                        <tr>
                            <td colspan="2">
                            
                            

	  <div class="navigation">
            <a href="#" title="Home">Home </a><a href="#" title="Nossos Serviços">Nossos serviços </a><a href="#" title="Sobre a PPA">Sobre a PPA </a><a href="#" title="Contact Us">Contato</a> 
      <div class="clearer"><span></span></div>
	</div>

                            </td>
                        
                        </tr>
                        <tr>
                        <td colspan="2"><hr /></td>
                        </tr>
                    </table>
                    <table border ="0" cellpadding=0 cellspacing=0>
                        <tr valign="top">
                            <td width="80%"> <!-- Tela principal-->
                            <table cellpadding=0 cellspacing=0>
                                <tr>
                                    <td align="center"><img src="Imagens/elearning2.jpg" /> </td>
                                   
                                </tr>
                                <tr>
                                    <td align="justify"><br /><i>Para se chegar a uma adequada direção de pessoal é necessário a concepção de que pessoas significam seres dotados de características próprias, de personalidade e de individualidade, aspirações, valores, atitudes, motivações e objetivos individuais; bem como, dotados de habilidades, capacidades, destrezas e conhecimentos necessários para a tarefa organizacional...(Idalberto Chiavenato, 1987).</i></td>
                                    
                                </tr>
                                <tr>
                                <td>&nbsp<br/><br/><br/><br/></td>
                                </tr>
                            
                                <tr>
                                    <td align="center"><img src="Imagens/QuestoesOnline.jpg" /> </td>
                                   
                                </tr>
                                <tr>
                                    <td align="justify"><br /><i>Questões online - O processo de auto-avaliação contínua prevê, sobretudo, o acompanhamento da progressão da aprendizagem, bem como do nível de aquisição da competência necessária.</i></td>
                                    
                                </tr>

                            </table>
    
                            
                            </td>
                            <td width="20%" valign="top" align="center" style="background-color: #66FFFF"> <!-- Tela de Senha -->
                                    <table id="tb_usu_sh" cellpadding="0" cellspacing="0" >
                                        <tr valign="top"> 
                                        <td valign="top">
                                        <table>
                                            <tr>
                                                <td> Usuário<br />
                                                    <asp:TextBox ID="txtUsuario"  runat="server" Height="30" BorderStyle="Solid" 
                                                        BorderWidth="1px" Width="160px"></asp:TextBox>
                                                </td> 
                                            </tr>
                                            <tr>
                                                <td> Senha<br />
                                                    <asp:TextBox ID="txtSenha" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                        Height="30px" TextMode="Password" Width="160px"></asp:TextBox>
                                                </td>                                
                                            </tr>
                                             <tr>
                                                <td align="center"> 
                                                    <asp:ImageButton ID="btEntrar" runat="server" 
                                                        ImageUrl="~/Imagens/botaoEntrar.jpg" Height="25px" Width="86px" 
                                                        onclick="btEntrar_Click" />
                                                </td>                                
                                            </tr>
                                        </table>
                                        </td>
                                        </tr>
                                        <asp:Label ID="lblStatus" runat="server" Font-Names="verdana" Font-Size="8pt" 
                                            ForeColor="Red" Height="34px"></asp:Label>
                                    </table>
                                    
                            
                            </td>
                        </tr>
                        <tr>
                           <td width="80%"></td>
                            <td width="20%"></td>
                        </tr>
                    
                    </table>                
                    
    
            </td>
            <td width="15%" ></td>
        </tr>
    
    </table>
    </form>
</body>
</html>
