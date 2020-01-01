<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="employeefeedback.aspx.cs" Inherits="socialnetwork.employeefeedback" %>
<%@ Register Assembly= "AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
<ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager" runat="server"></ajaxtoolkit:ToolkitScriptManager>

    <table style="height: 449px; width: 539px;">
<tr>
<td style="width: 207px; color: #FFFFFF; height: 26px;">
</td>
<td style="height: 26px; width: 254px;" colspan="2">
<h1 style="text-align:center; width: 97px; font-family: Georgia; color: #FFFFFF;">Feedback</h1>
</td>
</tr>

<tr>
 <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
 <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
 </td>
 <td class="style4" style="width: 254px">
  <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
  <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender" runat="server" Enabled="true" TargetControlID="txtname" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 
 </td>
 </tr>
 <tr>
 <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
 <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>

 </td>
 <td class="style4" style="width: 254px">
  <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
    
 </td>
 </tr>
 <tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
    <asp:Label CssClass="c1" ID="lblstate" runat="server" Text="State:"></asp:Label>
     </td>
     <td class="style4" style="width: 254px">
         <asp:DropDownList ID="ddlstate" runat="server" 
             onselectedindexchanged="ddlstate_SelectedIndexChanged" AutoPostBack="true">
         </asp:DropDownList>
        </td>
   </tr>
  <tr> <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
   <asp:Label CssClass="c1" ID="lblcity" runat="server" Text="City:"></asp:Label>
    
   </td>
   <td class="style4" style="width: 254px">
       <asp:DropDownList ID="ddlcity" runat="server">
           <asp:ListItem>select city</asp:ListItem>
       </asp:DropDownList>
   
   </td>
   </tr> 
         
   
  <tr>
  <td class="style3" align="right" 
          style="color: #FFFFFF; width: 207px; height: 40px;">
  <asp:Label ID="lblmobileno" runat="server" Text="Mobile no." ></asp:Label>
  </td>
  <td class="style4" style="width: 254px; height: 40px;"> <asp:TextBox ID="txtmobileno" runat="server" TextMode="Phone"></asp:TextBox>
  <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="true" TargetControlID="txtmobileno" ValidChars="" FilterType="Numbers"></ajaxtoolkit:FilteredTextBoxExtender>
 
  </td></tr>
  <tr> <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
   <asp:Label CssClass="c1" ID="lblfdate" runat="server" Text="Feedback Date"></asp:Label>
    
   </td>
   <td class="style4" style="width: 254px">
   <asp:TextBox  CssClass="c1" ID="txtfeedbackdate" runat="server"  TextMode="Date" Width="169px"></asp:TextBox>
   
   </td>
   </tr> 
   <tr> <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
   <asp:Label CssClass="c1" ID="lblfeedback" runat="server" Text="Feedback:"></asp:Label>
    
   </td>
   <td class="style4" style="width: 254px">
   <asp:TextBox  CssClass="c1" ID="txtfeedback" runat="server" Width="169px" TextMode="MultiLine"></asp:TextBox>
   
   </td>
   </tr> 
   <tr>
   <td class="style2" align="right" style="color: #FFFFFF; width: 207px;">
   </td>
   <td class="style4" style="width: 254px">
   <asp:Button CssClass="c1" ID="btnpsubmit" runat="server" 
           ForeColor="Black" Text="Submit" onclick="btnpsubmit_Click" />
   </td></tr> 
</table>
  </asp:Content>
