<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="socialnetwork.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentheader" runat="server">
    <table style="padding-left: 50px">
<tr>
<td align="right" style="height: 58px; width: 483px">
<asp:Label ID="lblwelcome" runat="server" Text="Welcome" style="text-align:center" 
        ForeColor="Silver"></asp:Label>
</td>
<td style="height: 58px">
    <asp:Label ID="lblwelcomename" runat="server" 
        ForeColor="Silver" ></asp:Label>
</td>
</tr>

</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
    <table>
 <tr>
 <td align="right" style="color: #00CCFF; width: 415px;">
 </td>
<td class="style2" style="height: 68px; width: 187px;">
 <h1 style="text-align:center; width: 97px; font-family: Georgia; color: #00CCFF;">Profile</h1>
 </td>
 <td style="height: 68px; width: 135px;">
     &nbsp;</td>
 <td style="text-align:right; height: 68px;" class="style1">
 <asp:Button ID="btnplogout" 
         runat="server" Text="Logout" style="text-align:right; margin-left: 189px;" 
         Width="56px" BackColor="Black" ForeColor="#00CCFF" 
         onclick="btnplogout_Click" />

 </td></tr>
 
  <tr>
 <td class="style2" align="right" style="color: #00CCFF; width: 415px;">
 <asp:Label ID="lblfirstname" runat="server" Text="Firstname"></asp:Label>
 </td>
 <td class="style4" style="width: 187px">
 <asp:Label ID="lbl1firstname" runat="server"></asp:Label>
  
 </td>
 </tr>
 <tr>
 <td class="style2" align="right" 
         style="color: #00CCFF; width: 415px; height: 29px;">
 <asp:Label ID="lblmiddlename" runat="server" Text="Middlename"></asp:Label>

 </td>
 <td class="style4" style="height: 29px; width: 187px;">
 <asp:Label ID="lbl1middlename" runat="server"></asp:Label>
    
 </td>
 </tr>
 <tr>
 <td class="style1" align="right" 
         style="color: #00CCFF; width: 415px; height: 29px;">
 <asp:Label ID="lbllastname" runat="server" Text="Lastname"></asp:Label>
  
 </td>
 <td class="style1" style="height: 29px; width: 187px;"><asp:Label ID="lbl1lastname" runat="server"></asp:Label>
  </td>
  <td style="height: 29px; width: 135px;">
  <asp:Label ID="lblprofilenotcomplete" runat="server"></asp:Label></td>
 </tr>
 <tr>
 
 
 <td class="style2" align="right" style="color: #00CCFF; width: 415px;">
  <asp:Label ID="lblgender" runat="server" Text="Gender:"></asp:Label>
 
 </td>
 <td style="width: 187px">
<asp:Label ID="lbl1gender" runat="server"></asp:Label> </td>
 <td style="width: 135px">
 <asp:Button CssClass="c1" ID="Btnupdateprofile" runat="server" BackColor="Black" 
           ForeColor="#00CCFF" Text="UpdateProfile" 
         Height="38px" Width="185px" onclick="Btnupdateprofile_Click" />
  

 </td>
 <td>
 <div id="home" runat="server" 
         style="background-color:Gray; width: 157px; margin-left: 10px;">
 <asp:Button ID="btnhome" runat="server" Text="Home" onclick="btnhome_Click" 
         BackColor="Black" ForeColor="#00CCFF" Height="39px" style="margin-left: 0px" 
         Width="161px" />
 </div></td>
 
  </tr>
   <tr>
   <td class="style2" align="right" 
           style="color: #00CCFF; width: 415px; height: 29px;">
   <asp:Label  ID="lblDob" runat="server" Text="Dob:"></asp:Label>
      </td>
       <td class="style4" style="margin-left: 50px; height: 29px; width: 187px;">
       <asp:Label ID="lbl1dob" runat="server"></asp:Label>
      </td></tr> 
         <tr>
   <td class="style2" align="right" style="color: #00CCFF; width: 415px;">
    <asp:Label CssClass="c1" ID="lblstate" runat="server" Text="State:"></asp:Label>
     </td>
     <td class="style4" style="width: 187px">
        <asp:Label ID="lbl1state" runat="server"></asp:Label></td>
   </tr>
   <tr>
   <td class="style2" align="right" 
           style="color: #00CCFF; width: 415px; height: 29px;">
   <asp:Label CssClass="c1" ID="lblcity" runat="server" Text="City:"></asp:Label>
    
   </td>
   <td class="style4" style="height: 29px; width: 187px;">
      <asp:Label ID="lbl1city" runat="server"></asp:Label>
   </td></tr>
   <tr>
   <td class="style2" align="right" style="color: #00CCFF; width: 415px;">
   <asp:Label CssClass="c1" ID="lblpin" runat="server" Text="Pin:"></asp:Label>
    
   </td>
   <td class="style4" style="width: 187px">
   <asp:Label ID="lbl1pin" runat="server"></asp:Label>
  
   </td>
   </tr>
  <%-- <tr>
   <td class="style2" align="right" style="color: #00CCFF; width: 415px;">
   <asp:Label ID="lblPhoneno" runat="server" Text="Phone no." ></asp:Label>
  </td>
  <td class="style4">
   <asp:TextBox  CssClass="c1" ID="txtphoneno" runat="server" Width="171px" 
          TextMode="Phone"></asp:TextBox>
  
  </td> </tr>--%>
  <tr>
  <td class="style3" align="right" style="color: #00CCFF; width: 415px;">
  <asp:Label ID="lblmobileno" runat="server" Text="Mobile no." ></asp:Label>
  </td>
  <td class="style4" style="width: 187px"><asp:Label ID="lbl1mobileno" runat="server"></asp:Label>
  </td></tr>
  <tr>
 <td class="style2" align="right" style="color: #00CCFF; width: 415px; height: 29px;">
 <asp:Label ID="lblphoto" runat="server" Text="Photo"></asp:Label>
 </td>
 <td class="style4" style="height: 29px; width: 187px;">
  <asp:Image ID="imgprofileimage" runat="server" Height="50px" Width="50px"  />
 </td> 
 </tr>
  
</table>
</asp:Content>
