<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="searchuser.aspx.cs" Inherits="socialnetwork.searchuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
<%--<table runat="server" id="kk" style="border-style: solid; border-color: #000000; height: 131px; width: 567px" >
<tr>
<th style="width: 351px">People you searched<br />
    </th></tr>
<tr>
<td style="width: 351px"> <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
    <br />
    </td>
<td style="width: 411px"><asp:Label ID="lbldetails"  runat="server" Text="Details"></asp:Label></td></tr>
<tr>
<td>
<%#Eval("firstname")%>
<%#Eval("middlename")%>
<%#Eval("lastname")%><br />
<%#Eval("city")%>
</td>
</tr>
</table>--%>
<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People You Searched</h1>
<table>
<tr>
<td style="width: 517px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People</td>
<%--<td style="width: 305px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Details</td>
--%></tr>
</table>

<asp:DataList id="dlsearchuser" runat="server" Width="561px" 
        HorizontalAlign="Center" >

 <ItemTemplate>
<table>
<tr>

<td>
   <%#Eval("firstname")%>
   <%#Eval("middlename")%>
   <%#Eval("lastname")%>,
  <%-- <%#Eval("city")%>--%>
   </td>
   <td><asp:HyperLink ID="searchhyperlink" runat="server" NavigateUrl='<%#string.Format("~/requestuser.aspx?pid={0}&userid={1}&photo={2}&firstname={3}&middlename={4}&lastname={5}&gender={6}&dateofbirth={7}&city={8}&state={9}&pin={10}&mobileno={11}",HttpUtility.UrlEncode(Eval("pid").ToString()),HttpUtility.UrlEncode(Eval("userid").ToString()),HttpUtility.UrlEncode(Eval("photo").ToString()),HttpUtility.UrlEncode(Eval("firstname").ToString()),HttpUtility.UrlEncode(Eval("middlename").ToString()),HttpUtility.UrlEncode(Eval("lastname").ToString()),HttpUtility.UrlEncode(Eval("gender").ToString()),HttpUtility.UrlEncode(Eval("dateofbirth").ToString()),HttpUtility.UrlEncode(Eval("city").ToString()),HttpUtility.UrlEncode(Eval("state").ToString()),HttpUtility.UrlEncode(Eval("pin").ToString()),HttpUtility.UrlEncode(Eval("mobileno").ToString()))%>' Text='<%#Eval("userid")%>'></asp:HyperLink>
 <%-- <a href="requestuser.aspx"><%#Eval("userid")%></a>--%>
 </td>
 </tr>
</table>

  
   </ItemTemplate></asp:DataList>
  </asp:Content>
