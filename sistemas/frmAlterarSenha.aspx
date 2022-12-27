<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAlterarSenha.aspx.cs" Inherits="webfordocs.frmAlterarSenha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
<head id="Head1" runat="server">
    <title>PPA</title>
    <link href="Styles/menu.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         $(document).ready(function () {
             var Height = $(document).height()-20;
             $('#tb_principal').css({ 'height': Height });
         });


         function ConfAlterarSenha() {
             if ((form1.txtSenha.value == '') || (form1.txtConfSenha.value == '')) {
                 form1.txtStatus.value = 'todos os campos são obrigatórios';
                 form1.btAlterarSenhaFavorecido.visible = false;
                 form1.txtSenha.value = '';
                 form1.txtConfSenha.value = '';
             } else {
             if (form1.txtSenha.value != form1.txtConfSenha.value) {
                 form1.txtStatus.value = 'As senhas digitadas não coincidem!';
                 form1.txtSenha.value = '';
                 form1.txtConfSenha.value = '';

             }
             
             }


         }
    </script>
    <style type="text/css">
        .style1
        {
            width: 448px;
        }
        .style2
        {
            width: 479px;
        }
    </style>
</head>
<body>
<table id="tb_principal" width=100%>
<tr align="center" valign="top" >
<td width="15%"></td>

<td  style=" border-style: solid; border-width: 1px; border-color: #000000;">


    <form id="form1" runat="server">
    <div>
    <table width=100% style="font-family: Arial;">
    <tr>
    <td style="text-align: center">
        <table style="font-family: Arial; color: #0000FF;">
      <tr>
                            <td width="20%"> <img src="Imagens/logo.png" height="60" /> </td>
                            <td width="80%" align="center" class="titulo"> 
                                <div id="tagline">
                                        <section>
                                            <B>Pausa Para </B><strong>Aprender</strong> 
                                        </section>
                                </div><br />
                            </td>
                        </tr>
        
        </table>
        </td>
        <tr>
                            <td colspan="2" align="right" valign="middle">
                             <div class="navigation">
                                   <br />                               
                                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Imagens/btVoltar.jpg" 
                                    onclick="btSair_Click" />
                            
                                <div class="clearer"><span></span></div>
	                        </div>
                            </td>
                        </tr>
        <tr align=center>
        <td>
    <table style="font-family: Arial; 13px:; font-size: 11px; width: 47%;">
            
            <tr align="left">
                <td style="font-family: Arial;" class="style2"><h2> &nbsp </h2> </td>
            </tr>
            <tr align="left">
            <td style="font-family: Arial;" class="style2">
                &nbsp;</td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Verdana; font-size: 11px;" >
            <big><center>Alterar senha !</center></td>
            </tr>
            <tr>
            <td>
            <br />
                <asp:Label ID="lblNome" runat="server" Text="Label" Font-Bold="True" 
                    Font-Names="verdana" Font-Size="8pt"></asp:Label>, 
                Constatamos que este é o seu primeiro acesso, por questões de segurança, é 
                necessário alterar sua senha!
            
            
            
                <br />
                <br />
                </td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial; text-align: center;" class="style2">
                             
               
                 <asp:TextBox ID="txtStatus" runat="server" BorderStyle="None" 
                     Font-Names="Verdana" Font-Size="10pt" ForeColor="Red" Width="313px" 
                     Visible="False"></asp:TextBox>
                </td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial;" class="style2">
                             
               
                 &nbsp;</td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial;" class="style2">
                             
               
                 Nova Senha<br />
                    <asp:TextBox ID="txtSenha" runat="server" BorderStyle="Solid" onfocus="txtStatus.value='';"
                     Height="30px" placeholder="Nova Senha" 
                     Width="200px" TextMode="Password"></asp:TextBox>
                     </td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial;" class="style2">
                             
               
                 Confirme a senha<br />
                    <asp:TextBox ID="txtConfSenha" runat="server" BorderStyle="Solid" 
                     Height="30px" placeholder="E-mail" onfocus="txtStatus.value='';"
                     Width="200px" TextMode="Password" OnBlur="javascript:ConfAlterarSenha()"></asp:TextBox>
                     </td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial;" class="style2">
                             
               
                 &nbsp;&nbsp;</td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial; text-align: right;" class="style2">
                <br />
                <asp:ImageButton ID="btAlterarSenhaFavorecido" runat="server" Height="35px" 
                    ImageUrl="~/Imagens/botaoConfirmar.jpg" 
                    onclick="btAlterarSenhaFavorecido_Click"  />
                <br />
                <br />
                <br />
            
            
            
            </td>
            
            
            </tr>
            
            
            <tr align="left">
            <td style="font-family: Arial; text-align: left;" >
                &nbsp;</td>
            
            
            </tr>
            
            
    </table>
    </td>
    </tr>
    
    </td>
    </tr>
    
    
    
    </table>

    </div>
    </form>
     </td>
    <td width="15%" ></td>

</tr>

</table>
</body>
</html>
