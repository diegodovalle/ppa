<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playAula.aspx.cs" Inherits="PPA.playAula" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">
    <tr>
    <td>
        <div style="border: 1px solid #00FFFF; width: auto">
            <center>
                <Bewise:FlashControl ID="flashAula" runat="server" Height="500px" 
                    Width="800px" />
            </center>
        </div>
    </td>
    <td valign="bottom"> 
        &nbsp;</td>
    </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </form>
</body>
</html>
