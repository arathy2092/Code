<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="forgetpassmail.aspx.cs" Inherits="socialnetwork.forgetpassmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentheader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<h1 align="center" style="color: #00CCFF">Forget Password?</h1>

    <table>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px; width: 450px;">
     <asp:Label  ID="lblfmailid" runat="server" Text="Emailid:"></asp:Label>
    </td>
    <td style="height: 49px">
     <asp:TextBox class="textbox" ID="txtfmailid" runat="server"  
            TextMode="Email"></asp:TextBox>
     </td>
     </tr>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px; width: 450px;"></td>
    <td style="height: 38px" >
     <asp:Button class="button" ID="btnfsubmit" runat="server" 
    BackColor="Black" ForeColor="#00CCFF" 
        Text="Submit" BorderStyle="Outset" onclick="btnfsubmit_Click"  />
       </td>
      </tr>
      <tr>
      <td colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label  ID="lblmsg" runat="server" ></asp:Label>
      </td></tr>
    
    
      </table>

</asp:Content>
