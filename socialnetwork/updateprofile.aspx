<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="updateprofile.aspx.cs" Inherits="socialnetwork.updateprofile" %>
<%@ Register Assembly= "AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">

<%--<asp:UpdatePanel ID="updatepanel1" runat="server">
<ContentTemplate>
--%> <ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager"  runat="server"></ajaxtoolkit:ToolkitScriptManager>
    <table style="height: 449px; width: 621px;">
<tr>
<td style="width: 3577px; color: #FFFFFF; height: 26px;">
</td>
<td style="height: 26px; width: 162px;"> 
    <h1 style="text-align:center; width: 97px; font-family: Georgia; color: #FFFFFF;">Profile</h1>
</td>
</tr>
<tr>
 <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
 <asp:Label ID="lblfirstname" runat="server" Text="Firstname"></asp:Label>
 </td>
 <td style="width: 162px">
  <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
   <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender" runat="server" Enabled="true" TargetControlID="txtfirstname" ValidChars="" FilterType="LowercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 

 </td>
 </tr>
 <tr>
 <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
 <asp:Label ID="lblmiddlename" runat="server" Text="Middlename"></asp:Label>

 </td>
 <td style="width: 162px">
  <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
     <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="true" TargetControlID="txtmiddlename" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 

 </td>
 </tr>
 <tr>
 <td class="style1" align="right" style="color: #FFFFFF; width: 3577px;">
 <asp:Label ID="lbllastname" runat="server" Text="Lastname"></asp:Label>
  
 </td>
 <td style="width: 162px"><asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
  <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="true" TargetControlID="txtlastname" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 

  </td>
 </tr>
 <tr>
 <td class="style2" align="right" 
         style="color: #FFFFFF; width: 3577px; ">
  <asp:Label ID="lblgender" runat="server" Text="Gender:"></asp:Label>
 
 </td>
 <td style="width: 162px">
 <asp:RadioButtonList ID="rdbgender" runat="server" Height="48px" 
         RepeatDirection="Horizontal" TextAlign="Left" Width="16px" 
         ForeColor="White">
     <asp:ListItem>Male</asp:ListItem>
     <asp:ListItem>Female</asp:ListItem>
     </asp:RadioButtonList>
 </td>
  </tr>
  <tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
   <asp:Label  ID="lblDob" runat="server" Text="Dob:"></asp:Label>
      </td>
       <td style="margin-left: 50px; width: 162px;">
       <asp:TextBox ID="txtdob" runat="server" Width="167px" TextMode="Date"></asp:TextBox>

      </td></tr> 
         <tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 3577px; height: 29px;">
    <asp:Label CssClass="c1" ID="lblstate" runat="server" Text="State:"></asp:Label>
     </td>
     <td class="style4" style="height: 29px; width: 162px;">
         <asp:DropDownList ID="ddlstate" runat="server"
             onselectedindexchanged="ddlstate_SelectedIndexChanged" autopostback="true">
         </asp:DropDownList>
        </td>
   </tr>
<tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
   <asp:Label CssClass="c1" ID="lblcity" runat="server" Text="City:"></asp:Label>
    
   </td>
   <td style="width: 162px">
       <asp:DropDownList ID="ddlcity1" runat="server">
           <asp:ListItem>select city</asp:ListItem>
       </asp:DropDownList>
   
   </td></tr>
   <tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
   <asp:Label CssClass="c1" ID="lblpin" runat="server" Text="Pin:"></asp:Label>
    
   </td>
   <td style="width: 162px">
   <asp:TextBox  CssClass="c1" ID="txtpin" runat="server" Width="171px"></asp:TextBox>
  
   </td>
   </tr>
    <tr>
  <td class="style3" align="right" style="color: #FFFFFF; width: 3577px; height: 29px;">
  <asp:Label ID="lblmobileno" runat="server" Text="Mobile no." ></asp:Label>
  </td>
  <td style="height: 29px; width: 162px;"> <asp:TextBox ID="txtmobileno" runat="server" 
          TextMode="Phone" MaxLength="10"></asp:TextBox>
  <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" Enabled="true" TargetControlID="txtmobileno" ValidChars="" FilterType="Numbers"></ajaxtoolkit:FilteredTextBoxExtender>
 

  </td></tr>
  <tr>
<td align="right" style="width: 3577px; color: #FFFFFF;">
<asp:Label ID="lblphoto" runat="server" Text="Photo" ForeColor="White"></asp:Label>
</td>
<td style="width: 162px">
    <asp:Label ID="lblphotopath" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td style="width: 3577px"></td>
<td style="height: 38px; width: 162px;">
    <asp:FileUpload ID="flupphoto" runat="server" 
        ForeColor="Black" BackColor="White" style="margin-left: 0px" />
</td>
<td>
<asp:Label ID="lblphotoerrormsg" runat="server"></asp:Label>
</td></tr>

   <tr>
   
   <td class="style2" align="right" style="color: #FFFFFF; width: 3577px;">
   </td>
   <td style="width: 162px">
   <asp:Button CssClass="c1" ID="btnsubmit" runat="server" 
           ForeColor="Black" Text="Submit" onclick="btnpsubmit_Click1" />
   </td></tr> 
</table>
 <%-- </ContentTemplate>

   </asp:UpdatePanel>--%>
</asp:Content>
