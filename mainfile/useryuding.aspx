<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="useryuding.aspx.cs" Inherits="useryuding" %>

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
                <td class="auto-style2" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 30%">&nbsp;</td>
                <td class="auto-style3" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="250px" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="No" HeaderText="商品编号" SortExpression="No" />
                            <asp:BoundField DataField="Number" HeaderText="订购数量" SortExpression="Number" />
                            <asp:BoundField DataField="kehuName" HeaderText="客户姓名" SortExpression="kehuName" />
                            <asp:BoundField DataField="kehuPhone" HeaderText="客户电话" SortExpression="kehuPhone" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manaConnectionString1 %>" SelectCommand="SELECT [No], [Number], [kehuName], [kehuPhone] FROM [yuding]"></asp:SqlDataSource>
                </td>
                <td class="auto-style3" style="width: 30%">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="kehuName" DataValueField="kehuName" Height="24px" Width="140px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="已发货" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

