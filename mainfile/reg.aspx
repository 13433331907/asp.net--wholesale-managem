<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">

        </script>
    <style type="text/css">
        .auto-style13 {
            width: 40%;
        }
        .auto-style17 {
            height: 45px;
        }
        .auto-style19 {
            height: 30px;
            width: 19px;
        }
        .auto-style20 {
            width: 19px;
        }
        .auto-style22 {
            height: 30px;
            width: 253px;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style25 {
            height: 30px;
            width: 402px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="main" style="width:100%; height:450px">

        <table cellspacing="1" class="auto-style13" style="text-align: center; margin-top: 8%; margin-left: 30%; background-color: skyblue;">
            <tr>
                <td class="auto-style17" colspan="3" style="margin-top: 12%; font-size: x-large; text-decoration: blink;">用户注册</td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">账号：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtNo" runat="server" Width="170px" OnTextChanged="txtNo_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style19" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNo" ErrorMessage="空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">密码：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="170px" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style20" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">确认密码：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style20" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPwd" ErrorMessage="错" ControlToCompare="txtConfirm"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">姓名：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtName" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style20" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">邮箱：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style19" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%; text-align: right;">电话：</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">
                    <asp:TextBox ID="txtTelephone" runat="server" TextMode="Phone" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style20" style="margin-top: 12%; width: 30%; text-align: left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTelephone" ErrorMessage="空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="margin-top: 12%">&nbsp;</td>
                <td class="auto-style22" style="margin-top: 12%; text-align: left;">&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
                </td>
                <td class="auto-style20" style="margin-top: 12%">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

