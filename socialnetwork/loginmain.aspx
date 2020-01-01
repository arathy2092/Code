<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="loginmain.aspx.cs" Inherits="socialnetwork.loginmain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentheader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
    <h1 align="center" style="color: #00CCFF">Sign In</h1>

    <table>
    <tr>
    <td></td>
    <td></td>
    <td style="width: 229px"></td>
    <td><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="adminlogin.aspx" ForeColor="#00CCFF" >Admin Login
    </asp:LinkButton></td>
    </tr>
    <tr>
    <td align="right" style="height: 52px; width: 475px">
     <asp:Label  ID="lblluserid" runat="server" Text="Userid:" ForeColor="#00CCFF"></asp:Label>
    </td>
    <td style="width: 164px; height: 52px">
     <asp:TextBox  ID="txtluserid" runat="server"></asp:TextBox>
     </td>
    </tr>
    <tr>
    <td align="right" style="width: 475px" >
     <asp:Label ID="lbllpassword" runat="server" Text="Password:" ForeColor="#00CCFF"></asp:Label>
     </td>
     <td style="width: 164px">
       <asp:TextBox  ID="txtlpassword" runat="server" style="margin-bottom: 11px" 
             TextMode="Password"></asp:TextBox>
     </td>
    </tr>
    
    <tr>
    <td align="right" style="height: 45px; width: 475px"></td>
    <td style="width: 164px; height: 45px" >
     <asp:Button ID="btnllogin" runat="server" 
    BackColor="Black" ForeColor="#00CCFF" 
        Text="Login" BorderStyle="Outset" onclick="btnllogin_Click"  />
        
    </td>
    <td style="height: 45px; width: 229px;">
    <asp:Label ID="lblinvaild" runat="server" ForeColor="Red" ></asp:Label>
    </td>
    
    </tr>
     <tr>
     <td align="right" style="height: 30px; width: 475px"></td>
     <td style="width: 164px; height: 30px" >
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="register.aspx" ForeColor="#00CCFF" >Sign Up
    </asp:LinkButton>
     </td>
   
    </tr>
    <tr>
    <td align="right" style="height: 30px; width: 475px"></td>
     <td style="width: 164px; height: 30px">
      <asp:LinkButton ID="forgetpass" runat="server" PostBackUrl="forgetpassword.aspx" 
             ForeColor="#00CCFF" >Forgetpassword?
    </asp:LinkButton>
     <%--<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="forgetpassmail.aspx" 
             ForeColor="#00CCFF" >Forgetpassword?
    </asp:LinkButton>
    --%>
     </td>
   
    </tr>
     </table>   
     
   </asp:Content>
