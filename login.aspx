<%@ Page Title="" Language="C#" MasterPageFile="~/AIP_Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AIP.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 374px;
        }
        .auto-style4 {
            width: 374px;
            text-align: right;
        }
        .auto-style5 {
            width: 184px;
        }
        .auto-style7 {
            width: 374px;
            height: 9px;
        }
        .auto-style8 {
            width: 184px;
            height: 9px;
        }
        .auto-style10 {
            height: 9px;
        }
        .auto-style11 {
            width: 374px;
            text-align: right;
            height: 26px;
        }
        .auto-style12 {
            width: 184px;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        }
        sup {
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
            <asp:Label ID="Label4" runat="server" style="position:absolute; top: 253px; left: 418px; height: 29px; width: 125px; font-weight: 700;" Text="Login Page" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            <br />
            <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_loginid" runat="server" Font-Bold="True" Font-Size="Medium" Text="Login id"></asp:Label>
                 <sup>*</sup>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox_loginid" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_loginid" runat="server" ControlToValidate="TextBox_loginid" ErrorMessage=" Enter Login id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblpwd" runat="server" Font-Bold="True" Font-Size="Medium" Text="Password"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox_pwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="rfv_pwd" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage=" Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:ImageButton ID="ImgBtn_login" runat="server" Height="35px" ImageUrl="~/IMAGE/login.png" OnClick="ImgBtn_login_Click" style="margin-left: 31px" Width="109px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
            <p>
            </p>
            <p>
                &nbsp;</p>
        
        </asp:Content>

