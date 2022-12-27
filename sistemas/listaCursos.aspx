<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaCursos.aspx.cs" Inherits="PPA.listaCursos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pausa Para Aprender</title>
    <link href='Styles/menu.css' rel='stylesheet' type='text/css' />
</head>
<body>
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
                            <td colspan="2">
                              <asp:ImageButton ID="btNovoTreinamento" runat="server" Height="48px" 
                                    ImageUrl="~/Imagens/btNovoTreinamento.jpg" 
                                    onclick="btNovoTreinamento_Click" Width="147px" />
                            </td>
                            
                        </tr>
                        </tr>
                        <tr>
                            <td align="center" colspan ="2"> 
                                Filtrar por nome do treinamento:
                                <asp:TextBox ID="txtTreinamento" runat="server" Width="217px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                                                            &nbsp;&nbsp;
                                <asp:ImageButton ID="btFiltrarTreinamento" runat="server" ImageUrl="~/Imagens/BotaoOK.gif" ToolTip="Filtrar" OnClick="btFiltrarCurso_Click"  />
                                <asp:ImageButton ID="btLimparTreinamento" runat="server" Height="30px" 
                                ImageUrl="~/Imagens/limpar.jpg" ToolTip="Limpar filtro" 
                                onclick="btLimparCurso_Click"  />
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2">&nbsp</td>
                        </tr>
                        <tr>
                        <td colspan="2" align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="COD_TREINAMENTO" DataSourceID="SqlCursosClientes" 
                                ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="NOME_CURSO" HeaderText="Nome" 
                                        SortExpression="NOME_CURSO" />
                                    <asp:BoundField DataField="DATA_HORA_INICIO" HeaderText="Inicio" 
                                        SortExpression="DATA_HORA_INICIO" />
                                    <asp:BoundField DataField="DATA_HORA_FIM" HeaderText="Termino" 
                                        SortExpression="DATA_HORA_FIM" />
                                    <asp:BoundField DataField="Column1" HeaderText="Nr de Treinandos" 
                                        ReadOnly="True" SortExpression="Column1" />
                                    <asp:BoundField DataField="COD_TREINAMENTO" HeaderText="COD_TREINAMENTO" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="COD_TREINAMENTO" 
                                        Visible="False" />
                                    <asp:HyperLinkField DataNavigateUrlFields="cod_treinamento" 
                                        DataNavigateUrlFormatString="cadastroTreinamento.aspx?cod_treinamento={0}" 
                                        HeaderText="Selecionar" Text="Selecionar" />
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
                            <asp:SqlDataSource ID="SqlCursosClientes" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:inacre_sistemaConnectionString %>" SelectCommand="select NOME_CURSO , A.DATA_HORA_INICIO, A.DATA_HORA_FIM, COUNT(COD_TREINAMENTO_COLABORADOR),COD_TREINAMENTO
from ppa_treinamento A
inner join ppa_curso B on A.PPA_CURSO_ID_CURSO =  B.ID_CURSO
left join ppa_treina_colaborador C on C.PPA_TREINAMENTO_COD_TREINAMENTO = COD_TREINAMENTO
where PPA_CLIENTE_COD_CLIENTE = 0
group by NOME_CURSO , A.DATA_HORA_INICIO, A.DATA_HORA_FIM,COD_TREINAMENTO"></asp:SqlDataSource>
                        </td>
                        </tr>
                       
    
    </table>
                </td>
            <td width="15%" ></td>
        </tr>
    
    </table>   
    </form>
</body>
</html>
