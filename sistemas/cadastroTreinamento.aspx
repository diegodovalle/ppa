<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroTreinamento.aspx.cs" Inherits="PPA.cadastroTreinamento" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pausa Para Aprender</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
    <script type="text/javascript" src="scripts/calendario.js?random=20140618"></script>
    <link type="text/css" rel="stylesheet" href="Styles/calendario.css?random=20140618" media="screen"></link>
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
                          
                       <td colspan=2>
                        <asp:TextBox ID="txtCod_treinamento" runat="server" BorderStyle="None" 
                               ForeColor="White"></asp:TextBox>
                       </td>
                       </tr>
                       
                        
                      
                         <tr>
                            <td> Selecione um Curso </td>
                            <td align="left">                             
                                <asp:ImageButton ID="btBuscarcurso" runat="server" ImageUrl="~/Imagens/lupa.jpg" 
                                    Height="22px" ToolTip="Selecionar Curso" onclick="btBuscarcurso_Click" 
                                    Width="24px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtNomedoCurso" ErrorMessage="Selecione um curso!" 
                                    Font-Bold="True" Font-Size="13pt" ForeColor="Red" ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:TextBox ID="txtCursoSel" runat="server" BorderStyle="None" 
                                    Width="37px"></asp:TextBox>
                                <asp:TextBox ID="txtNomedoCurso" runat="server" BorderStyle="None" 
                                    Width="275px" Font-Names="verdana" Font-Size="9pt" 
                                    ValidationGroup="gravar" Font-Bold="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Duração do treinamento(Minutos)</td>
                            <td align="left"> 
                                <asp:TextBox ID="txtDuracao" runat="server" Height="20px" Width="50px" 
                                    ValidationGroup="gravar"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtDuracao" ErrorMessage="Informe uma duração" 
                                    Font-Bold="True" Font-Size="13pt" ForeColor="Red" ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                (Informe o tempo máximo disponível para realização do treinamento).
                            </td>
                        </tr>
                         <tr>
                            <td>Quantidade de acessos</td>
                            <td align="left"> 
                                <asp:TextBox ID="txtQtdAcessos" runat="server" Width="50px" Height="20px" 
                                    ValidationGroup="gravar"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtQtdAcessos" 
                                    ErrorMessage="Informe o n° máximo de acessos!" Font-Bold="True" 
                                    Font-Size="13pt" ForeColor="Red" ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                (Informe quantas vezes o treinando poderá acessar o treinamento).
                            </td>
                        </tr>
                         <tr>
                            <td>Data de Inicio</td>
                            <td align="left"> 
                                <asp:TextBox ID="txtDatainicio" runat="server" ReadOnly Width="109px" Height="20px" 
                                    ValidationGroup="gravar"></asp:TextBox> 
                                    <img src="Imagens/calendar.jpg" style="cursor:hand" onClick="displayCalendar(document.getElementById('txtDatainicio'),'dd/mm/yyyy',this)"><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtDatainicio" 
                                    ErrorMessage="Informe a data de início!" Font-Bold="True" 
                                    Font-Size="13pt" ForeColor="Red" ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td>Data de término</td>
                            <td align="left"> 
                                <asp:TextBox ID="txtValidoAte" runat="server" ReadOnly Width="109px" Height="20px" 
                                    ValidationGroup="gravar"></asp:TextBox> 
                                    <img src="Imagens/calendar.jpg" style="cursor:hand" onClick="displayCalendar(document.getElementById('txtValidoAte'),'dd/mm/yyyy',this)"><asp:RequiredFieldValidator 
                                    ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtValidoAte" 
                                    ErrorMessage="a data de término!" Font-Bold="True" 
                                    Font-Size="13pt" ForeColor="Red" ValidationGroup="gravar">*</asp:RequiredFieldValidator>
                                &nbsp;</td>
                        </tr>

                         <tr>
                            <td>&nbsp;</td>
                            <td align="left"> 
                                &nbsp;</td>
                        </tr>
                         <tr>
                            <td>&nbsp;</td>
                            <td align="left"> 
                                                                   <asp:ImageButton ID="ImageButton5" runat="server" Height="30px" 
                                        ImageUrl="~/Imagens/botaoGravar.jpg" ValidationGroup="gravar" 
                                        onclick="ImageButton5_Click1" />
                                 </td>
                        </tr>
                        <tr>
                            
                            <td colspan="2" ><hr /></td>
                        </tr>
                     
                        <tr>
                            <td  align="left">
                            <asp:Label ID="lblSelTreinandos" runat="server" Text="Selecionar treinandos" 
                                    Font-Bold="True" Font-Names="verdana" Font-Size="10pt"></asp:Label>&nbsp;&nbsp
                                 <a href="#dialog11" name="modal"> 
                                    <img src="Imagens/lupa.jpg" Height="22px"  border="none" />                             
                                </a>
                            
                            </td>
                            <td> 
                                
                                
                                
                                
                                </td>
                        </tr>
                        
                     


                         <tr>
                                <td colspan="2" align="Center">
                                    <big><b>Colaboradores matriculados:</b></big></td>
                         </tr>
                         <tr>
                                <td colspan="2" align="Center">
                                </td>
                         </tr>
                     
                         <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                          <tr>
                            <td colspan="2" align="center">  
                            
                              <asp:GridView ID="grdColaboradoresExistentes" runat="server" 
                                    AutoGenerateColumns="False" DataSourceID="SqlColabMatriculados" 
                                    AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                  <AlternatingRowStyle BackColor="White" />
                                  <Columns>
                                      <asp:BoundField DataField="Matricula" HeaderText="MATRICULA" 
                                          SortExpression="Matricula" />
                                      <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
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
                            
                            
                                <asp:SqlDataSource ID="SqlColabMatriculados" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand="select NOME, Matricula 
 from ppa_treina_colaborador A
 inner join ppa_colaboradores B on A.PPA_COLABORADORES_COD_COLABORADOR = B.COD_COLABORADOR
 where 
 PPA_TREINAMENTO_COD_TREINAMENTO = 0
 and PPA_CLIENTE_COD_CLIENTE = 0"></asp:SqlDataSource>
                            
                            
                            </td>
                    </tr>
                       </table>
                      
                          <div id="dialog12" class="window" >  <!-- Abre curso a ser selecionado-->
                                           <table width="100%" id="Table6" style="font-family:verdana;font-size:10px;">
                                                <tr>
                                                    <td align="left" ><b>Seleção de curso</b></td><td><a href="#" class="close"><b>[X]</b></a></td>
                                                </tr>
                            
                                                <tr>
                                                    <td colspan="2"><hr/></td>
                                                </tr>
                                                 <tr>
                                                 <td align="left" colspan ="2" > 
                                                        Filtrar por curso:
                                                     <asp:TextBox ID="txtCurso" runat="server" Width="217px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                                                                                    &nbsp;&nbsp;
                                                    <asp:ImageButton ID="btFiltrarCurso" runat="server" ImageUrl="~/Imagens/BotaoOK.gif" ToolTip="Filtrar" OnClick="btFiltrarCurso_Click"  />
                                                    <asp:ImageButton ID="btLimparCurso" runat="server" Height="30px" 
                                                            ImageUrl="~/Imagens/limpar.jpg" ToolTip="Limpar filtro" 
                                                            onclick="btLimparCurso_Click"  />
                                                    </td>
                                                </tr>
                                                  <tr>
                                                    <td colspan="2">&nbsp</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" align="center"> 
                                                    
                                                        <asp:GridView ID="grdCursos" runat="server" AutoGenerateColumns="False" 
                                                            CellPadding="4" DataKeyNames="id_curso" DataSourceID="SqlCursos" 
                                                            ForeColor="#333333" GridLines="None" onrowcommand="grdCursos_RowCommand" 
                                                            AllowSorting="True">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:BoundField DataField="NOME_CURSO" HeaderText="CURSO" 
                                                                    SortExpression="NOME_CURSO" />
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:ImageButton ID="ImageButton2" runat="server"  
                                                                        CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id_curso")%>' 
                                                                        Height="27px" ImageUrl="~/Imagens/botaoSelecionar.jpg"/>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="id_curso" HeaderText="id_curso" 
                                                                    InsertVisible="False" ReadOnly="True" SortExpression="id_curso" 
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
                                                    
                                                        <asp:SqlDataSource ID="SqlCursos" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" 
                                                            SelectCommand="select NOME_CURSO,id_curso  from PPA_curso where ppa_cliente_cod_cliente = 0">
                                                        </asp:SqlDataSource>
                                                    
                                                    </td>
                                                </tr>
                                                     
                                                
                                          </table>
                    
               </div>  
               <div id="dialog11" class="window" >  <!-- Abre curso a ser selecionado-->
                            <table width="100%" id="Table1" style="font-family:verdana;font-size:10px;">
                                    <tr>
                                         <td align="left" ><b>Seleção de treinandos</b></td><td><a href="#" class="close"><b>[X]</b></a></td>
                                    </tr>
                            
                                    <tr>
                                         <td colspan="2"><hr/></td>
                                    </tr>
                                 <tr>
                                    
                                    <td align="left" colspan ="2"> 
                                        Filtrar por nome:
                                     <asp:TextBox ID="txtFiltroNome" runat="server" Width="217px" 
                                     BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                                                                    &nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Imagens/BotaoOK.gif" 
                                            ToolTip="Filtrar" onclick="ImageButton3_Click"  />
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="30px" 
                                            ImageUrl="~/Imagens/limpar.jpg" ToolTip="Limpar filtro" 
                                            onclick="ImageButton4_Click" />
                                    </td>
                                </tr>

                                                                                                                                                                                                                                                                                                                                                                                                                                                <tr>
                            
                            <td align="left" colspan="2"> 
                                        
                            <asp:GridView ID="grdColaboradores" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="COD_COLABORADOR" DataSourceID="SqlColaboradores" 
                                ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand" 
                                PageSize="8" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkUsuarios" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Height="20px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                    <asp:BoundField DataField="COD_COLABORADOR" HeaderText="LOGIN DE ACESSO" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="COD_COLABORADOR" />
                                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
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

                               <tr>
                                <td colspan="2" align="right">
                                   <asp:ImageButton ID="btGravar" runat="server" Height="25px" 
                                        ImageUrl="~/Imagens/botaoConfirmarSelecao.jpg" ValidationGroup="gravar" 
                                        onclick="btGravar_Click" />
                                 </td>
                       </tr>

                       </table>
                       </div>
                 
               
                </td>
            <td width="15%" ></td>
        </tr>
    
    </table>   
    </form>
    </div>
</body>
</html>
