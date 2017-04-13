<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Opdracht_7_Echte.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 168px;
        }
        .auto-style3 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="ltr">
       <h1>Tafeltester</h1>
        <p>Vul het hoogste getal in dat gebruikt mag worden<asp:TextBox ID="txtHoogste" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnMakeSom" runat="server" Text="Maak sommen" OnClick="lblSom_Click" />
        <br />
        <br />
        Sommen:<br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">1 x
        <asp:Label ID="lblGetal1" runat="server"></asp:Label>
&nbsp;
                    =&nbsp; </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAntwoord1" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="lblUitkomst1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">2 x <asp:Label ID="lblGetal2" runat="server"></asp:Label>
&nbsp; =&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAntwoord2" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="lblUitkomst2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">3 x
        <asp:Label ID="lblGetal3" runat="server"></asp:Label>
&nbsp; =&nbsp; </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAntwoord3" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="lblUitkomst3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">4 x
        <asp:Label ID="lblGetal4" runat="server"></asp:Label>
&nbsp; = </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAntwoord4" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="lblUitkomst4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">5 x
        <asp:Label ID="lblGetal5" runat="server"></asp:Label>
&nbsp; = </td>
                <td class="auto-style3">
        <asp:TextBox ID="txtAntwoord5" runat="server"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="lblUitkomst5" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Laat score zien" />
        <br />
        <br />
        <asp:Label ID="lblScoreText" runat="server" Text="Je hebt een: "></asp:Label>
        <asp:Label ID="lblScoreCijfer" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
    </div>
        
      
       
    </form>
</body>
</html>
