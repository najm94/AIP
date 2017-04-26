<%@ Page Title="" Language="C#" MasterPageFile="~/AIP_Master.Master" AutoEventWireup="true" CodeBehind="User_after_login.aspx.cs" Inherits="AIP.User_after_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <p>
            </p>
            <p>
            </p>
            
            <p>
            </p>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" style="position:absolute; top: 262px; left: 1142px; height: 38px; width: 91px;" ImageUrl="~/IMAGE/logout_btn.png" OnClick="ImageButton1_Click" />

                <asp:Label ID="UserLabel" runat="server" style="position:absolute; top: 284px; left: 185px; width: 22px; height: 17px;" Text="Hi" Font-Bold="True"></asp:Label>

    </p>
    <p>
                <asp:Label ID="lbllogin_id" runat="server" style="position:absolute; top: 284px; left: 207px; height: 18px; width: 102px; right: 674px;" Font-Bold="True" ForeColor="Red"></asp:Label>
                <asp:Label ID="lbllast_name" runat="server" style="position:absolute; top: 284px; left: 257px; height: 24px; right: -4px;" Font-Bold="True" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label2" runat="server" style ="position:absolute; top: 315px; left: 183px; width: 153px; height: 20px;"  Font-Bold="True" Text="Your Default Status :"></asp:Label>
&nbsp;<asp:Label ID="lbl_status" runat="server" style="position:absolute; top: 317px; left: 329px; width: 78px;" Font-Bold="True" ForeColor="Red"></asp:Label>
            </p>
            <p>
                <asp:Label ID="userLabel2" runat="server" style="position:absolute; top: 351px; left: 184px; width: 153px;" Text="Your Transaction are:" Font-Bold="True"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
    <p>
                <asp:GridView ID="gvProject" runat="server" style="position:absolute; top: 386px; left: 185px; width: 205px;" >
                </asp:GridView>
            </p>
    <p>
                &nbsp;</p>
    <p>
                &nbsp;</p>
    <p>
                &nbsp;</p>
        
        </asp:Content>

