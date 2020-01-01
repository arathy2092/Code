<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="socialnetwork.forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentheader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<h1 align="center" style="color: #00CCFF">Forget Password?</h1>

    <table>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px;">
     <asp:Label  ID="lblfuserid" runat="server" Text="Userid:"></asp:Label>
    </td>
    <td style="height: 49px">
     <asp:TextBox class="textbox" ID="txtfuserid" runat="server" 
            ontextchanged="txtfuserid_TextChanged" AutoPostBack="true"></asp:TextBox>
     </td>
    </tr>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px;" >
    <asp:Label ID="lblfsecurityquestion" runat="server" Text="Sequrity Question" ></asp:Label>
   </td>
     <td style="height: 32px">
       <asp:TextBox ID="txtfsecurityquestion" runat="server" ></asp:TextBox> </td>
    </tr>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px;" >
    <asp:Label ID="lblfans" runat="server" Text="Ans" ></asp:Label>
   </td>
     <td style="height: 32px">
       <asp:TextBox ID="txtfans" runat="server" ></asp:TextBox> </td>
    </tr>
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px;"></td>
    <td style="height: 38px" >
     <asp:Button class="button" ID="btnfsubmit" runat="server" 
    BackColor="Black" ForeColor="#00CCFF" 
        Text="Submit" BorderStyle="Outset" onclick="btnfsubmit_Click"  />
       </td>
       <td></td>
       <td>  
           <asp:Button class="button" ID="btnlogin" runat="server" 
    BackColor="Black" ForeColor="#00CCFF" 
        Text="Login" BorderStyle="Outset" onclick="btnlogin_Click"   />
   </td>
      </tr>
    
    <tr>
    <td align="right" style="color: #00CCFF; height: 49px;" >
    <asp:Label ID="lblfpassword" runat="server" Text=" your Password is" ></asp:Label>
   </td>
     <td style="height: 32px">
         <asp:Label ID="lblfpass" runat="server" ForeColor="#FF66CC"></asp:Label>
   </td>
   
    </tr>
    
      </table>

</asp:Content>
