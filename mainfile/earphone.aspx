<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="earphone.aspx.cs" Inherits="earphone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 450px;
    }
    .auto-style2 {
        height: 40px;
    }
    .auto-style3 {
        height: 300px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width: 100%; height: 450px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: center; font-size: xx-large">耳机</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="250px" Width="100%" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="No" HeaderText="编号" SortExpression="No" ReadOnly="True" />
                            <asp:BoundField DataField="Name" HeaderText="名称" SortExpression="Name" ReadOnly="True" />
                            <asp:BoundField DataField="Color" HeaderText="颜色" SortExpression="Color" ReadOnly="True" />
                            <asp:BoundField DataField="Quality" HeaderText="音质" SortExpression="Quality" ReadOnly="True" />
                            <asp:BoundField DataField="Usb" HeaderText="接口类型" SortExpression="Usb" ReadOnly="True" />
                            <asp:BoundField DataField="Type" HeaderText="类型" SortExpression="Type" ReadOnly="True" />
                            <asp:BoundField DataField="Number" HeaderText="库存" SortExpression="Number" ReadOnly="True" />
                            <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" ReadOnly="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manaConnectionString1 %>" SelectCommand="SELECT [No], [Name], [Color], [Quality], [Usb], [Type], [Number], [Price] FROM [earphone]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="编号:"></asp:Label>
                    <asp:DropDownList ID="ddlNo" runat="server" DataSourceID="SqlDataSource1" DataTextField="No" DataValueField="No" Height="25px" Width="110px">
                    </asp:DropDownList>
                    <asp:Label ID="txtkehuName" runat="server" Text="姓名："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="txtkehuPhone" runat="server" Text="电话："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="数量："></asp:Label>
                    <asp:TextBox ID="txtNumber" runat="server" Height="19px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="订购" />
                </td>
            </tr>
        </table>
</div>
    </asp:Content>

