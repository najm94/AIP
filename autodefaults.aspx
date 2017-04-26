<%@ Page Title="" Language="C#" MasterPageFile="~/AIP_Master.Master" AutoEventWireup="true" CodeBehind="AutoDefaultsPage.aspx.cs" Inherits="AIP.AutoDefaultsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <p>
            </p>
            <p>
                &nbsp;</p>
            
            <p>
            <asp:Label ID="lbAutoDefaultPage" runat="server" style="position:absolute; top: 258px; left: 290px; bottom: 365px;" Font-Bold="True" Font-Size="X-Large" Text="AutoDefaults Page"></asp:Label>
            </p>
    <p>
            &nbsp;</p>
            <asp:GridView ID="Auto_GridView" runat="server" 
                Style="position:absolute; top: 293px; left: 66px; width: 657px; height: 178px;" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                DataSourceID="SqlDataSource1" >
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <p>
            </p>
    <p>
            </p>
    <p>
            </p>
    <p>
                <asp:DropDownList ID="ddcustid" runat="server" style="position:absolute; top: 492px; left: 455px; height: 22px;" >
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
                <asp:ImageButton ID="ibUpdate" runat="server" Style="position:absolute; top: 548px; left: 621px; height: 25px; width: 82px;" ImageUrl="~/IMAGE/update.png" />
                <asp:ImageButton ID="ibcomplete" runat="server" Style="position:absolute; top: 614px; left: 345px; height: 26px; width: 93px;"  ImageUrl="~/IMAGE/complete.png"  />
            </p>
            <p>
                <asp:ImageButton ID="ibEdit" runat="server" style="position:absolute; top: 491px; left: 170px; height: 25px; width: 82px; bottom: 155px;" ImageUrl="~/IMAGE/edit.png" />
                <asp:Label ID="lbcustid" runat="server" style="position:absolute; top: 493px; left: 350px; margin-top: 0px;" Font-Bold="True" Text="Login Id"></asp:Label>
                <asp:Label ID="Label2" runat="server" style="position:absolute; top: 552px; left: 67px; width: 107px;"  Text ="Default Status :" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DDstatuslist"  style="position:absolute; top: 551px; left: 189px;"  runat="server" >
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" style="position:absolute; top: 550px; left: 404px;"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" style="position:absolute; top: 554px; left: 309px; width: 84px;" Text="Comment :" Font-Bold="True"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        
        </asp:Content>

