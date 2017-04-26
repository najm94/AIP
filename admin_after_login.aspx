<%@ Page Title="" Language="C#" MasterPageFile="~/AIP_Master.Master" AutoEventWireup="true" CodeBehind="Admin_After_Login.aspx.cs" Inherits="AIP.Admin_After_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <p>
            </p>
            <p>
                &nbsp;</p>
            
            <p>
            </p>
    <p>
            <asp:ImageButton ID="ibautodefaults" runat="server" Style="position:absolute; top: 280px; left: 200px; height: 39px; width: 162px;" ImageUrl="~/IMAGE/Auto Defaults.png" />
            </p>
    <p>
            </p>
            <p>
            <asp:ImageButton ID="ibManuDefaults" runat="server" Style="position:absolute; top: 282px; left: 410px; height: 37px; width: 175px;" ImageUrl="~/IMAGE/Manual Defaults.png" />
            </p>
            <asp:MultiView ID="mvAdminMain" runat="server" OnActiveViewChanged="mvAdminMain_ActiveViewChanged">
                <asp:View ID="VAutoDefaults" runat="server">
                    &nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="236px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1061px">
                        <Columns>
                            <asp:BoundField AccessibleHeaderText="Default Status" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </asp:View>
                <br />
                <asp:View ID="VManualDefaults" runat="server">
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="219px" Width="1059px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <br />
                    <br />
                </asp:View>
                <br />
                <br />
                <br />
            </asp:MultiView>
            <br />
            <br />
            <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

