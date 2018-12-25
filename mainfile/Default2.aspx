<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
            height: 315px;
        }
        .auto-style10 {
            font-size: xx-large;
            height: 64px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 207px;
            height: 45px;
        }
        .auto-style13 {
            height: 45px;
        }
        .auto-style16 {
            width: 207px;
            height: 40px;
        }
        .auto-style17 {
            height: 40px;
        }
        .auto-style18 {
            width: 207px;
            height: 41px;
        }
        .auto-style19 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="login" style="width: 100%; height: 450px">
        <div id="loginpage" style="width: 30%; height: 70%; background-color: gray; margin-top: 6%; margin-left: 35%;">
       <table align="center" class="auto-style9" style="background-color: skyblue">
           <tr>
               <td class="auto-style10" colspan="2" style="text-align: center">&nbsp;登录</td>
           </tr>
           <tr>
               <td class="auto-style18" style="text-align: right; font-size: large">用户名：</td>
               <td style="text-align: left" class="auto-style19">
                   <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style14" Height="22px" Width="173px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style12" style="text-align: right; font-size: large">密码：</td>
               <td class="auto-style13" style="text-align: left">
                   <asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="173px" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style16" style="text-align: right; font-size: large">保存用户：</td>
               <td style="text-align: left" class="auto-style17">
                   <asp:DropDownList ID="dpExpires" runat="server" Height="22px" Width="149px">
                       <asp:ListItem Value="0">不保存</asp:ListItem>
                       <asp:ListItem Value="1">一天</asp:ListItem>
                       <asp:ListItem Value="7">一周</asp:ListItem>
                       <asp:ListItem Value="30">一月</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="text-align: center; font-size: large" colspan="2">
                   <asp:Button ID="Button1" runat="server" Height="27px" Text="登录" Width="94px" OnClick="Button1_Click" />
               </td>
           </tr>
           <tr>
               <td colspan="2" style="text-align: center">
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserLogin.aspx">管理员！</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/reg.aspx">用户注册！</asp:HyperLink>
               </td>
           </tr>
       </table>
        </div>
    </div>
</asp:Content>

