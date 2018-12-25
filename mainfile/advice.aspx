<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advice.aspx.cs" Inherits="advice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 450px;
        }
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 327px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 450px; width: 100%">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-size: xx-large; text-decoration: blink; text-align: center">留言</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">欢迎<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
                    的光临&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您是第<asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
                    位访客</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: center"><iframe src="ShowChat.aspx" width="70%" height="300"></iframe></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="发言："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="641px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

