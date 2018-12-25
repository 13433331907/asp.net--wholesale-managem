<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="usercomputer.aspx.cs" Inherits="usercomputer" %>

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
            height: 340px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100%; height: 450px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-size: 28px; text-align: center">电脑</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="250px" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="No" HeaderText="编号" SortExpression="No" />
                            <asp:BoundField DataField="Name" HeaderText="名称" SortExpression="Name" />
                            <asp:BoundField DataField="Color" HeaderText="颜色" SortExpression="Color" />
                            <asp:BoundField DataField="Cpu" HeaderText="处理器" SortExpression="Cpu" />
                            <asp:BoundField DataField="runMenory" HeaderText="运行内存" SortExpression="runMenory" />
                            <asp:BoundField DataField="hardMenory" HeaderText="硬盘" SortExpression="hardMenory" />
                            <asp:BoundField DataField="Number" HeaderText="库存" SortExpression="Number" />
                            <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manaConnectionString1 %>" SelectCommand="SELECT [No], [Name], [Color], [Cpu], [runMenory], [hardMenory], [Number], [Price] FROM [computer]" UpdateCommand="UPDATE computer SET Name = @Name, Color = @Color, Cpu = @Cpu, runMenory = @runMenory, hardMenory = @hardMenory, Number = @Number, Price = @Price WHERE (No = @No)">
                        <UpdateParameters>
                            <asp:Parameter Name="Name" />
                            <asp:Parameter Name="Color" />
                            <asp:Parameter Name="Cpu" />
                            <asp:Parameter Name="runMenory" />
                            <asp:Parameter Name="hardMenory" />
                            <asp:Parameter Name="Number" />
                            <asp:Parameter Name="Price" />
                            <asp:Parameter Name="No" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="编号："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="名称："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label3" runat="server" Text="颜色："></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label8" runat="server" Text="处理器："></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label4" runat="server" Text="运行内存："></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label5" runat="server" Text="硬盘："></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label6" runat="server" Text="库存："></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Width="6%"></asp:TextBox>
&nbsp;<asp:Label ID="Label7" runat="server" Text="价格："></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" Width="6%"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

