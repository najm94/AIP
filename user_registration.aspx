<%@ Page Title="" Language="C#" MasterPageFile="~/AIP_Master.Master" AutoEventWireup="true" CodeBehind="admin_registration.aspx.cs" Inherits="AIP.admin_registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
        width: 256px;
    }
        .auto-style4 {
        height: 23px;
        width: 256px;
    }
        .auto-style5 {
            width: 256px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
            width: 270px;
        }
        .auto-style7 {
        width: 11px;
        text-align: right;
    }
        .auto-style8 {
            width: 11px;
            height: 27px;
            text-align: right;
        }
        .auto-style9 {
        height: 23px;
        width: 11px;
        text-align: right;
    }
        .auto-style10 {
        width: 144px;
    }
        .auto-style11 {
            width: 144px;
            height: 27px;
        }
        .auto-style12 {
        height: 23px;
        width: 144px;
    }
         sup {
       color : red;
        
    }
        .auto-style13 {
            height: 28px;
            width: 256px;
        }
        .auto-style14 {
            height: 28px;
            width: 144px;
        }
        .auto-style15 {
            height: 28px;
            width: 11px;
            text-align: right;
        }
        .auto-style16 {
            height: 28px;
            width: 270px;
        }
        .auto-style17 {
            width: 191px;
        }
        .auto-style18 {
            height: 27px;
            width: 191px;
        }
        .auto-style19 {
            height: 23px;
            width: 191px;
        }
        .auto-style20 {
            height: 28px;
            width: 191px;
        }
        .auto-style21 {
            width: 270px;
        }
        .auto-style22 {
            height: 23px;
            width: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        
        <br />
    </p>
    
  
        <br />
    <br />
    <asp:Label ID="lbladminreg" runat="server" Style="position:absolute; top: 262px; left: 413px;" Font-Bold="True" Font-Size="X-Large" Text="Admin Registration"></asp:Label>
    <br />
    <br />
    <br />
    
    
          
     
        <asp:Panel ID="Panel1" runat="server" Style="position:absolute; background-color:#b8dce1; top: 300px; left: 22px; height: 405px; width: 898px; top: 320px;">  
    
            <table class="auto-style1" id="tbAdmin_reg">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblfname" runat="server" Text="First Name" Font-Bold="True"  ></asp:Label>
                <sup>*</sup> 
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtFname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqFn" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblLname" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtLname" runat="server" Width="180px"></asp:TextBox>
               
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqLn" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="lblPass" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="reqPwd" runat="server" ControlToValidate="txtPass" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="reqPwdc" runat="server" ControlToValidate="txtPass" ErrorMessage="Combination of at least one number, one lowercase, one uppercase letter and at least eight characters" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{8,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblRepass" runat="server" Text="Re-Enter Password" Font-Bold="True"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtRepass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqRePwd" runat="server" ControlToValidate="txtRepass" ErrorMessage="Re-Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style12">
                <asp:Label ID="lblAge" runat="server" Text="Age" Font-Bold="True"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style9">
                </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtAge" runat="server" OnTextChanged="txtAge_TextChanged" TextMode="Number" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="reqage" runat="server" ControlToValidate="txtAge" ErrorMessage="Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblgender" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                <sup>*</sup>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:RadioButtonList ID="RblAdmin" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblConact" runat="server" Text="Contact No." Font-Bold="True"></asp:Label>
                <sup>*</sup>

            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtcontact" runat="server" MaxLength="10" TextMode="Phone" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqcn" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Contact No." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regCn" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Correct Contact No." ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblEmail" runat="server" Text="E-mail" Font-Bold="True"></asp:Label>
                <sup>*</sup>

            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox7_TextChanged" TextMode="Email" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regEm" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Correct E-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblAdd" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <sup>*</sup>

            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="reqaddress" runat="server" ControlToValidate="txtAdd" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="lblState" runat="server" Text="State" Font-Bold="True"></asp:Label>
                <sup>*</sup>

            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19">
                <asp:DropDownList ID="ddState" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Andhra</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Rajastan</asp:ListItem>
                    <asp:ListItem>Maharastra</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="reqstate" runat="server" ControlToValidate="ddState" ErrorMessage="Select State" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="True"></asp:Label>
                <sup>*</sup>

            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19">
                <asp:DropDownList ID="ddCity" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="reqcity" runat="server" ControlToValidate="ddCity" ErrorMessage="Select City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <%--<tr>
            <td class="auto-style13">
                </td>
            <td class="auto-style14">
                <asp:Label ID="lblZip" runat="server" Text="ZipCode" Font-Bold="True"></asp:Label>
                <sup>*</sup>

      --%>
    <asp:ImageButton ID="ImageButton1" runat="server" style="position:absolute; top: 412px; left: 508px; width: 141px; height: 36px; margin-top: 2px;" ImageUrl="~/IMAGE/register.png" OnClick="ImageButton1_Click" />
            <%--</td>
            <td class="auto-style15">
                </td>
            <td class="auto-style20">
                <asp:TextBox ID="txtZip" runat="server" MaxLength="6" TextMode="Number" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>--%>
        </table>
         </asp:Panel>
        
      
    <p>
      
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:ImageButton ID="ImageButton2" runat="server"  style="position:absolute; top: 731px; left: 280px; height: 39px; width: 108px; " ImageUrl="~/IMAGE/reset.png" OnClick="ImageButton2_Click" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        </p>
    <p>
        </p>
    <p>
        </p>
    <p>
        </p>
</asp:Content>
