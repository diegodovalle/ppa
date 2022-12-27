<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrarCurso.aspx.cs" Inherits="PPA.cadastrarCurso" %>

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
                 <table border="0"  width="100%" cellpadding="0" cellspacing="0">
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
                            <td align="center"> Nome do curso</td>
                            <td align="left" > 
                                <asp:TextBox ID="txtNomedoCurso" width="387px" runat="server" 
                                    ValidationGroup="gravar1" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtNomedoCurso" ErrorMessage="Nome do Curso Obrigatório" 
                                    ValidationGroup="gravar1" Font-Size="13pt" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"> 
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">Nome do diretório:</td>
                            <td align="left"> <asp:TextBox ID="txtPasta" runat="server" Width="182px" 
                                    BorderStyle="Solid" BorderWidth="1px" ValidationGroup="gravar1"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtPasta" ErrorMessage="Nome do diretório Obrigatório" 
                                    ValidationGroup="gravar1" Font-Size="13pt" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                            &nbsp;(Preencher com o nome da pasta sem espaços!)
                            
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2"> 
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" align=center> 
                              <asp:ImageButton ID="btGravar1" runat="server" Height="32px" ImageUrl="~/Imagens/botaoGravar.jpg" ValidationGroup="gravar1" Width="110px" onclick="ImageButton2_Click" />                               
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><hr /></td>
                        </tr>
                         <tr>
                            <td>&nbsp;</td>
                            <td align="left" > 
                                <asp:Label ID="lblErro" runat="server" Font-Names="verdana" Font-Size="10pt" 
                                    ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>&nbsp;</td>
                            <td align="left" > 
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td align="center">Arquivos<br />
                                (<strong>*.html, *.js e *.swf</strong>)</td>
                            <td align="left" > 
                                <asp:FileUpload ID="UplArqCursos" runat="server" Enabled="False" 
                                    BorderStyle="Solid" BorderWidth="1px" /> 
                            </td>
                        </tr>
                         <tr>
                            <td></td>
                                
                            <td align="left" > 
                                
                                <asp:ListBox ID="lstArquivos" runat="server" Rows="3" Width="242px" 
                                    Enabled="False" ValidationGroup="gravar"></asp:ListBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align=center> 
                             <asp:ImageButton ID="btGravarcurso" runat="server" Height="32px" 
                                    ImageUrl="~/Imagens/IncluirArquivo.JPG" ValidationGroup="gravar" 
                                    Width="110px" onclick="btGravarcurso_Click" />   
                            </td>
                        </tr>
                         <tr>
                            <td align="center"  colspan="2"> 
                                <asp:Label ID="lblStatus" runat="server" Font-Names="verdana" Font-Size="10pt"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"  colspan="2"> 
                                <hr />
                            </td>
                        </tr>


                        <tr>
                            <td align="center"  colspan="2"> 
                                
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlCursos" ForeColor="#333333" 
                                    GridLines="None" DataKeyNames="ID_CURSO" onrowcommand="GridView1_RowCommand">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Nome_Curso" HeaderText="Nome do Curso" 
                                            SortExpression="Nome_Curso" />
                                        <asp:BoundField DataField="Caminho_curso" HeaderText="Pasta" 
                                            SortExpression="Caminho_curso" />
                                        <asp:BoundField DataField="nome_arquivo" HeaderText="Arquivo Principal" 
                                            SortExpression="nome_arquivo" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                                                CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id_curso")%>' 
                                                    ImageUrl="~/Imagens/botaoSelecionar.jpg" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="ID_CURSO" HeaderText="ID_CURSO" 
                                            SortExpression="ID_CURSO" InsertVisible="False" ReadOnly="True" 
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
                                <br />
                                    <asp:SqlDataSource ID="SqlCursos" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" 
                                        
                                    SelectCommand="select ID_CURSO,Nome_Curso, Caminho_curso, nome_arquivo from ppa_curso where ppa_cliente_cod_cliente = 0">
                                    </asp:SqlDataSource>
                            </td>
                        </tr>

                        </table>
                </td>
               
            <td width="15%" ></td>
        </tr>
    
    </table>   
    </form>
    </div>
</body>                


</body>
</html>
