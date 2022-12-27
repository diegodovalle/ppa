<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroCliente.aspx.cs" Inherits="PPA.cadastroCliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pausa Para Aprender</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 

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
          <table id="tb_principal" width="100%">
        
            <tr align="center" valign="top" >
                <td width="15%"></td>
            
                <td  style=" border-style: solid; border-width: 1px; border-color: #FFCCFF;">
                 <table border="0" cellpadding="0" cellspacing="0">
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
                                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Imagens/btVoltar.jpg" 
                                    onclick="btSair_Click" />
                            
                                <div class="clearer"><span></span></div>
	                        </div>
                            </td>
                        </tr>
                      
                        <tr>
                            <td colspan="2"><hr /></td>
                        </tr>
                        <tr>
                            <td>
                                
                            </td>
                            <td>
                                <table>
                                <tr>
                                        <td colspan="2">
                                         <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                         <center style="font-size: 18px; font-family: verdana"> Cadastro de Clientes </center>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                         <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td> &nbsp;</td> 
                                        <td style="text-align: right"> 
                                            <asp:ImageButton ID="btnovo" runat="server" Height="20px" 
                                                ImageUrl="~/Imagens/botaoLimpar.JPG" onclick="btnovo_Click" 
                                                ToolTip="Limpar Campos" />
                                                </td>
                                    </tr> 

                                    <tr>
                                        <td> Nome/Razão Social</td> 
                                        <td> <asp:TextBox ID="txtNome" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> CNPJ</td> 
                                        <td> <asp:TextBox ID="txtCNPJ" Onblur="javascript:validaCNPJ(this.value)" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> Nome fantasia</td> 
                                        <td> <asp:TextBox ID="txtNomeFantasia" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> Nome Responsável</td> 
                                        <td> <asp:TextBox ID="txtNomeResp" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> Email Responsável</td> 
                                        <td> <asp:TextBox ID="txtEmailResp" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> Telefone Responsável</td> 
                                        <td> <asp:TextBox ID="txtTelResp" runat="server" Width="190px"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td> Status</td> 
                                        <td> <asp:TextBox ID="txtStatus" ReadOnly runat="server" Width="190px" BorderStyle="None"></asp:TextBox></td>
                                    </tr> 
                                    <tr>
                                        <td colspan="2">
                                         <hr />
                                        </td>
                                    </tr>
                                     <tr>
                                        <td colspan="2">
                                            &nbsp;&nbsp;
                                            <asp:ImageButton ID="btGravar" runat="server" Height="40px" 
                                                ImageUrl="~/Imagens/botaoConfirmar.jpg" onclick="btGravar_Click" />
                                                &nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px"  ImageUrl="~/Imagens/botaoDesativar.jpg" />
                                        
                                        </td>
                                    </tr>
                                </table>

                                
                            
                            </td>
                         </tr>
                         <tr><td></td><td><hr /></td></tr>
                        <tr>
                        <td></td>
                            <td >
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataKeyNames="cod_cliente" DataSourceID="SqlClientes" 
                                    ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="nome_razao" HeaderText="RAZÃO SOCIAL" 
                                            SortExpression="nome_razao" />
                                        <asp:BoundField DataField="cnpj" HeaderText="CNPJ" SortExpression="cnpj" />
                                        <asp:BoundField DataField="nome_fantasia" HeaderText="NOME FANTASIA" 
                                            SortExpression="nome_fantasia" />
                                        <asp:TemplateField HeaderText="SELECIONAR">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton2" runat="server"  
                                                    CommandArgument='<%# DataBinder.Eval(Container.DataItem, "cod_cliente")%>' 
                                                    Height="27px" ImageUrl="~/Imagens/botaoSelecionar.jpg"/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="cod_cliente" HeaderText="cod_cliente" 
                                            InsertVisible="False" ReadOnly="True" SortExpression="cod_cliente" 
                                            Visible="False" />
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
                                <asp:SqlDataSource ID="SqlClientes" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" 
                                    SelectCommand="select cod_cliente,nome_razao,cnpj,nome_fantasia  from ppa_cliente">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        </tr>
                 </table>

               
                </td>
            <td width="15%" ></td>
        </tr>
    
    </table>   
    </form>
    </div>
</body>
</html>
