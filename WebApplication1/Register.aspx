<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       table{
           border:2px solid pink;
           padding:20px;
           background-color:lightgoldenrodyellow
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table  cellspacing="10">
             
                <tr>
                    <td> <asp:Label ID="FirstName" runat="server" Text="FirstName"></asp:Label></td>
                    <td> <asp:TextBox ID="FirstNameTextBox" runat="server">Enter First Name</asp:TextBox></td>
                    <td></td>
                </tr>
                 <tr>
                    <td> <asp:Label ID="LastName" runat="server" Text="LastName"></asp:Label></td>
                    <td> <asp:TextBox ID="LastNameTextBox" runat="server">Enter Last Name</asp:TextBox></td>
                </tr>
                 <tr>
                    <td> <asp:Label ID="DOB" runat="server" Text="Label"></asp:Label></td>
                    <td> <asp:TextBox ID="DateTime" TextMode="Date" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td> <asp:Label ID="gender" runat="server" Text="male"></asp:Label></td>
                    <td> <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="gender" /></td>
                </tr>
                 <tr>
                    <td> <asp:Label ID="gender1" runat="server" Text="Female"></asp:Label></td>
                    <td> <asp:RadioButton ID="femaleRadioButton" runat="server" GroupName="gender" /></td>
                </tr>
                  <tr>
                    <td> <asp:Label ID="education" runat="server" Text="Education"></asp:Label></td>

                     <td> <asp:DropDownList ID="educationDropDownList" runat="server">
                      <asp:ListItem Text="Graduation" Value="1" />
                          <asp:ListItem Text="Master" Value="2" />
                         <asp:ListItem Text="PostGraduation" Value="3" />
                       </asp:DropDownList></td>
                </tr>
                 <tr>
                     <td><asp:CheckBox ID="AgreeCheckBox" runat="server" /> </td>
                     <td><asp:Label ID="Label1" runat="server" Text="Accept terms"></asp:Label></td>
                     
                </tr>
               
                 <tr>
                    <td><asp:Button ID="SubmitButton" runat="server" Text="Submit" /></td>
                    <td><asp:Button ID="ResetButton" runat="server" Text="Reset" /> </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

