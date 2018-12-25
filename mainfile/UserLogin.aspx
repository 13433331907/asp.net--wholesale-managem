<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

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
        .auto-style20 {
        width: 30%;
        height: 69%;
    }
    .auto-style23 {
        width: 207px;
        height: 50px;
    }
    .auto-style24 {
        height: 50px;
    }
    .auto-style25 {
        width: 207px;
        height: 49px;
    }
    .auto-style26 {
        height: 49px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <div id="login" style="width: 100%; height: 450px">
        <div id="loginpage" style="background-color: gray; margin-top: 6%; margin-left: 35%;" class="auto-style20">
       <table align="center" class="auto-style9" style="background-color: skyblue">
           <tr>
               <td class="auto-style10" colspan="2" style="text-align: center">管理员登录</td>
           </tr>
           <tr>
               <td class="auto-style23" style="text-align: right; font-size: large">用户名：</td>
               <td style="text-align: left" class="auto-style24">
                   <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style14" Height="22px" Width="173px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style23" style="text-align: right; font-size: large">密码：</td>
               <td class="auto-style24" style="text-align: left">
                   <asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="173px" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style25" style="text-align: right; font-size: large">保存用户：</td>
               <td style="text-align: left" class="auto-style26">
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
           </table>
        </div>
    </div>
</asp:Content>

