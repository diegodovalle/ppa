<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroColaborador.aspx.cs" Inherits="PPA.cadastroColaborador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pausa Para Aprender</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
     <script type="text/javascript" src="scripts/calendario.js?random=20060118"></script>
    <link type="text/css" rel="stylesheet" href="Styles/calendario.css?random=20051112" media="screen"></link>
<link href='Styles/menu.css' rel='stylesheet' type='text/css' />
    
     <script type="text/javascript">
         $(document).ready(function () {
             var Height = $(document).height();
             $('#tb_principal').css({ 'height': Height });
         });
         $(document).ready(function () {
             var Height = $(document).height() - 350;
             $('#td_principal').css({ 'height': Height });
         });

         function validaCNPJ(cnpj) {

             cnpj = cnpj.replace(/[^\d]+/g, '');

             document.getElementById("txtCNPJ").value = cnpj.replace(/[^\d]+./g, '');
             
             
         }
         
    </script>
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
            function fechar_div5(nomediv) {
                
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
<style type="text/css">


</style>
</head>
<body>

    <div id="boxes">
    <form id="form1" runat="server">
        <div id="mask"></div> 
          <table id="tb_principal" width="100%" >
        
            <tr align="center" valign="top" >
                <td width="15%"></td>
            
                <td  style=" border-style: solid; border-width: 1px; border-color: #FFCCFF;">
                 <table border="0" width="100%" cellpadding="0"  cellspacing="0">
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
                         <tr>
                            <td colspan="2" align="right" valign="middle">
                             <div class="navigation">
                                   <br />                               
                                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagens/btVoltar.jpg" 
                                    onclick="btSair_Click" />
                            
                                <div class="clearer"><span></span></div>
	                        </div>
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="2"><hr /></td>
                        </tr>
                        <tr>
                        
                            <td> &nbsp;</td> 
                            <td> 
                                <asp:Label ID="LblSelecao" runat="server" Text="Label" Font-Names="Verdana" 
                                    Font-Size="12pt"></asp:Label>
                            </td>
                        
                        </tr>

                        <tr>
                        
                            <td> </td> <!-- menu -->
                            <td> 
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RdTipoD" runat="server" Text="Digitação" GroupName="a" 
                                                oncheckedchanged="RdTipoD_CheckedChanged" ValidationGroup="a" 
                                                CausesValidation="True" AutoPostBack="True" Checked="True" 
                                                Visible="False" /> 
                                            <asp:RadioButton ID="RdTipoI" runat="server" Text="Importação" GroupName="a" 
                                                ValidationGroup="a" oncheckedchanged="RdTipoI_CheckedChanged" 
                                                CausesValidation="True" AutoPostBack="True" Visible="False" /> 
                                        </td>
                                    </tr>
                                    </table> 
                        </td>
                      </tr>
                    </table>
                                    <!--div id="div_Importa" style="display:block;"-->
                                        <table width="60%" id="div_Importa" style="display:none;">
                                        <tr>
                                            <td colspan="2"><a href="#">download do layout padrão</a> </td>
                                        </tr>
                                        <tr>
                                            <td>Selecione o arquivo a ser importado </td>
                                            <td> <asp:FileUpload ID="flpIMportacao" runat="server" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
                                                        ImageUrl="~/Imagens/botaoConfirmar.jpg"  />
                                            </td>
                                        </tr>
                                        </table>
                                    <!--/div-->
                                    <!--div id="div_Digitacao" style="display:block;"-->
                                            <table cellpadding=0 cellspacing=0 width="80%" id="div_Digitacao" >
                                                <tr >
                                                    <td style="background-color: #43B6E3"> 
                                                       <left><asp:Label ID="lblCodCliente" runat="server"> </asp:Label></left>
                                                       </td>
                                                       <td align="right" style="background-color: #43B6E3" >
                                            <right><asp:ImageButton ID="btnovo" runat="server" Height="20px" 
                                                ImageUrl="~/Imagens/botaoLimpar.JPG" onclick="btnovo_Click" 
                                                ToolTip="Limpar Campos" /></right>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Nome </td>
                                                    <td align="left"><asp:TextBox ID="txtNome" runat="server" Width="180px" 
                                                            ValidationGroup="gravar"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="txtNome" ErrorMessage="Nome obrigatório" 
                                                            ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Nascimento </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtNascimento" ReadOnly runat="server" Width="156px" 
                                                            ValidationGroup="gravar"></asp:TextBox>
                                                             <img src="Imagens/calendar.jpg" style="cursor:hand" onClick="displayCalendar(document.getElementById('txtNascimento'),'dd/mm/yyyy',this)">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="txtNascimento" ErrorMessage="Nascimento obrigatório" 
                                                            ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Email </td>
                                                    <td align="left"> <asp:TextBox ID="txtEmail" runat="server" Width="180px" 
                                                            ValidationGroup="gravar"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Matricula</td>
                                                    <td align="left"> 
                                                        <asp:TextBox ID="txtMatricula" runat="server" Width="180px" 
                                                            ValidationGroup="gravar"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Tipo de Usuário</td>
                                                    <td align="left">
                                                        <asp:DropDownList ID="drpTipoUsuario" runat="server" Width="180px">
                                                            <asp:ListItem Value="1">Padrão</asp:ListItem>
                                                            <asp:ListItem Value="2">Administrador</asp:ListItem>
                                                        </asp:DropDownList>  
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Reiniciar a senha </td>
                                                    <td align="left">
                                                        <asp:ImageButton ID="btResetSenha" runat="server" 
                                                            ImageUrl="~/Imagens/resetSenha.jpg" onclick="btResetSenha_Click" 
                                                            ValidationGroup="gravar" /> 
                                                    </td>
                                                </tr>

                                               <tr>
                                                    <td colspan="2"> <hr /></td>
                                               </tr>
                                               <tr>
                                               <td colspan="2" align="center">
                                                    &nbsp;&nbsp;
                                                    <asp:ImageButton ID="btGravar" runat="server" Height="30px" 
                                                        ImageUrl="~/Imagens/botaoConfirmar.jpg" onclick="btGravar_Click" 
                                                        ValidationGroup="gravar" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="excluir" runat="server" Height="30px" 
                                                        ImageUrl="~/Imagens/excluir.jpg" onclick="excluir_Click" 
                                                        ValidationGroup="gravar" ToolTip="Excluir" />
                                                        &nbsp;&nbsp;&nbsp;
                                                                                            
                                                </td>
                                                </tr>
                                               <tr>
                                               <td colspan="2" align="center">
                                                    <hr /></td>
                                                </tr>
                                               <tr>
                                               <td colspan="2"  align="center" style="border:1;">
                                                    Filtrar Nome: 
                                                    <asp:TextBox ID="txtFiltroNome" runat="server" BorderStyle="Solid" 
                                                        BorderWidth="1px"></asp:TextBox>
&nbsp;
                                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                                        ImageUrl="~/Imagens/BotaoOK.gif" onclick="ImageButton3_Click" 
                                                        ToolTip="Filtrar" />
&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="30px" ImageUrl="~/Imagens/limpar.jpg" onclick="ImageButton4_Click" 
                                                        ToolTip="Limpar filtro" />
                                        
                                                </td>
                                                </tr>
                                               <tr>
                                               <td colspan="2">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        CellPadding="4" DataKeyNames="COD_COLABORADOR" DataSourceID="SqlColaboradores" 
                                                        ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand" 
                                                        PageSize="8">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                                            <asp:BoundField DataField="COD_COLABORADOR" HeaderText="LOGIN DE ACESSO" 
                                                                InsertVisible="False" ReadOnly="True" SortExpression="COD_COLABORADOR" />
                                                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                                            <asp:BoundField DataField="DESC_TIPO_ACESSO" HeaderText="TIPO DE ACESSO" 
                                                                ReadOnly="True" SortExpression="TIPO de ACESSO" />
                                                            <asp:BoundField DataField="TIPO_ACESSO" HeaderText="TIPO_ACESSO" 
                                                                SortExpression="TIPO_ACESSO" Visible="False" />
                                                            <asp:TemplateField HeaderText="Selecionar">
                                                                <ItemTemplate>
                                                                        <asp:ImageButton ID="ImageButton2" runat="server"  
                                                                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "cod_colaborador")%>' 
                                                                        Height="27px" ImageUrl="~/Imagens/botaoSelecionar.jpg"/>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
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
                                                    <asp:SqlDataSource ID="SqlColaboradores" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand=" SELECT 
   COD_COLABORADOR,
   NOME, 
   EMAIL,
   TIPO_ACESSO,
   CASE WHEN TIPO_ACESSO = 1 THEN 'PADRÃO' 
   ELSE     
   CASE WHEN TIPO_ACESSO = 2 THEN 'ADMINISTRADOR' 
   ELSE
   CASE WHEN TIPO_ACESSO = 3 THEN 'ADMINISTRADOR FERRAMENTA' 
   END
   END
   END AS DESC_TIPO_ACESSO
   FROM PPA_COLABORADOR_ACESSO  A  
   inner join PPA_COLABORADORES B ON B.COD_COLABORADOR = A.PPA_COLABORADORES_COD_COLABORADOR 
   WHERE  PPA_CLIENTE_COD_CLIENTE = 0"></asp:SqlDataSource>
                                        
                                                </td>
                                                </tr>
                                            </table>
                                   
                                    <!--/div-->
                                    
                                  
                <div id="dialog11" class="window" >  <!-- Alerta de Alteração de arquivo-->
                       <table width="100%" id="Table5" style="font-family:verdana;font-size:12px;">
                            <tr>
                                <td align="left" ><b>Atenção(s)</b></td><td><a href="#" class="close"><b>[X]</b></a></td>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><hr/></td>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><asp:Label ID="lblMensagem"  runat="server" Text="Label" Font-Names="verdana" Font-Size="9pt"></asp:Label></td>
                            </tr>
                            
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="btexcluir" runat="server" Height="30" ImageUrl="~/Imagens/botaoConfirmar.jpg" />
                                </td>
                                <td align="center">
                                            <asp:ImageButton ID="btOK" runat="server" Height="30" 
                                                ImageUrl="~/Imagens/bt_OK.jpg" onclick="btOK_Click" />                                        
                                </td>
                            </tr>
                           
                       
                      </table>
                </div>
                 <div id="Div1"></div>
                                

               
                </td>
            <td width="15%" ></td>
        </tr>
    
    </table>   

    </form>
    </div>
</body>
</html>
