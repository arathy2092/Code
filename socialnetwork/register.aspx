<%@ Page Title="" Language="C#" MasterPageFile="~/main1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="socialnetwork.register" %>

<%@ Register Assembly= "AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit"%>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentheader" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<asp:UpdatePanel ID="updatepanel1" runat="server">
<ContentTemplate>
 <ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager" runat="server"></ajaxtoolkit:ToolkitScriptManager>
<table>
    <tr>
 <td colspan="2"  style="text-align:center; font-size: large; color: #33CCFF; height: 43px;">Register Ur Self Here
            </td>
        </tr>
     <tr>
 <td style="text-align: right; width: 423px; height: 39px;" align="right">
 <asp:Label ID="lblfirstname" runat="server" Text="Firstname"></asp:Label>
 </td>
 <td style="height: 39px" align="left">
  <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
   <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender" runat="server" Enabled="true" TargetControlID="txtfirstname" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 
 </td>
 </tr>
 <tr>
 <td style="text-align: right; width: 423px; height: 27px;" align="right">
 <asp:Label ID="lblmiddlename" runat="server" Text="Middlename"></asp:Label>

 </td>
 <td style="height: 27px" align="left">
  <asp:TextBox ID="txtmiddlename" runat="server"></asp:TextBox>
   <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="true" TargetControlID="txtmiddlename" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
   
 </td>
 </tr>
 <tr>
 <td style="text-align: right; width: 423px; height: 48px;" align="right">
 <asp:Label ID="lbllastname" runat="server" Text="Lastname"></asp:Label>
  
 </td>
 <td style="height: 48px" align="left"><asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
  <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="true" TargetControlID="txtlastname" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 
  </td>
 </tr>
   <tr>
   <td style="text-align: right; width: 423px; height: 33px;" align="right">
    <asp:Label CssClass="c1" ID="lblstate" runat="server" Text="State:"></asp:Label>
     </td>
     <td style="height: 36px" align="left">
         <asp:DropDownList runat="server" ID="ddlstate1" 
             onselectedindexchanged="ddlstate1_SelectedIndexChanged1" AutoPostBack="true">
       </asp:DropDownList>
                 </td>
   </tr>
   <tr>
   <td style="text-align: right; width: 423px;height: 33px;" align="right">
   <asp:Label CssClass="c1" ID="lblcity" runat="server" Text="City:"></asp:Label>
    
   </td>
   <td align="left">
       <asp:DropDownList ID="ddlcity1" runat="server">
           <asp:ListItem>select city</asp:ListItem>
       </asp:DropDownList>
   
   </td></tr>
   <tr>
   <td style="text-align: right; width: 423px;height: 33px;" align="right">
   <asp:Label CssClass="c1" ID="lblpin" runat="server" Text="Pin:"></asp:Label>
    
   </td>
   <td align="left">
   <asp:TextBox  CssClass="c1" ID="txtpin" runat="server"></asp:TextBox>
  
   </td>
   </tr>
    <tr>
  <td style="text-align: right; width: 423px;height: 33px;" align="right">
   <asp:Label CssClass="c1" ID="lblmobileno" runat="server" Text="Mobileno"></asp:Label>
    
   </td>
   <td align="left">
   <asp:TextBox  CssClass="c1" ID="txtmobileno" runat="server"  TextMode="Phone" MaxLength="10"></asp:TextBox>
  
  
   
     <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="true" TargetControlID="txtmobileno" ValidChars="" FilterType="Numbers"></ajaxtoolkit:FilteredTextBoxExtender>
 

  </td></tr>
 
   <tr>
 <td style="text-align: right; width: 423px;" align="right">
  <asp:Label ID="lbluserid" runat="server" Text="Userid"></asp:Label>
 
 </td>
 <td align="left">
  <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
   <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" Enabled="true" TargetControlID="txtuserid" ValidChars="@." FilterType="LowercaseLetters,UppercaseLetters,Numbers,Custom"></ajaxtoolkit:FilteredTextBoxExtender>
 
  </td>
  </tr>
   <tr>
   <td style="text-align: right; width: 423px; height: 33px;" align="right">
   <asp:Label  ID="lblpassword" runat="server" Text="Password"></asp:Label>
   
      </td>
       <td style="height: 40px" align="left">
       <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" Enabled="true" TargetControlID="txtpassword" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters,Numbers,Custom"></ajaxtoolkit:FilteredTextBoxExtender>
 
      </td></tr> 
      <tr>
      <td style="text-align: right; width: 423px; " align="right">
       <asp:Label CssClass="c1" ID="lblrepassword" runat="server" Text="Re-Password:"></asp:Label>
       
      </td>
      <td align="left">
      <asp:TextBox  CssClass="c1" ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>
       <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" Enabled="true" TargetControlID="txtrepassword" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters,Numbers,Custom"></ajaxtoolkit:FilteredTextBoxExtender>
 
     &nbsp;&nbsp;&nbsp; 
      <asp:CompareValidator ID="comparepassword" runat="server" 
              ControlToCompare="txtpassword" ControlToValidate="txtrepassword" 
              ErrorMessage="your passwords do not match up!" Display="Dynamic" Height="87px" 
              style="height: 0px" ForeColor="Red"></asp:CompareValidator>
        </td>
      </tr>
 
   <tr>
   <td style="text-align: right; width: 423px;height: 33px;" align="right">
   <asp:Label ID="lblsecurityquestion" runat="server" Text="Sequrity Question" ></asp:Label>
  </td>
  <td align="left" style="height: 33px">
  <asp:DropDownList ID="ddlsecurityqstn" runat="server" >
      <asp:ListItem>-select-</asp:ListItem>
  <asp:ListItem >what is ur fav color?</asp:ListItem>
   <asp:ListItem >what is ur fav subject?</asp:ListItem>
    <asp:ListItem >what is ur fav place?</asp:ListItem></asp:DropDownList>
  </td> </tr>
  <tr>
  <td class="style1" style="text-align: right; width: 423px; height: 33px;" 
          align="right">
  <asp:Label ID="lblans" runat="server" Text="Ans" ></asp:Label>
  </td>
  <td class="style1" align="left"> <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
   <ajaxtoolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" Enabled="true" TargetControlID="txtans" ValidChars="" FilterType="LowercaseLetters,UppercaseLetters"></ajaxtoolkit:FilteredTextBoxExtender>
 
  </td></tr>
   <tr>
   <td style="width: 423px; height: 39px;" align="right">
   </td>
   <td style="height: 39px" align="left">
   <asp:Button ID="btnrsubmit" runat="server" BackColor="Black" ForeColor="#00CCFF" 
           Text="Submit" BorderStyle="Outset" onclick="btnrsubmit_Click" />
   </td></tr>  
   </table>
   </ContentTemplate>

   </asp:UpdatePanel>
</asp:Content>
