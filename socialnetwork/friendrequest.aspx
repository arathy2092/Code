<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="friendrequest.aspx.cs" Inherits="socialnetwork.friendrequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
    &nbsp;&nbsp;&nbsp;
<%--<table style="border-style: groove; border-color: #000000; height: 131px; width: 569px">
<tr><td align="left">
From:<%#Eval("firstname")%><br />
    <br />
Middlename:<%#Eval("middlename")%><br />
    <br />
Lastname:<%#Eval("lastname")%><br />
    <br />
Email:<%#Eval("userid")%><br />
    <br />
City:<%#Eval("city")%><br />
    <br />
State:<%#Eval("state")%>
    <br />
    <br />
</td>
</tr>
<tr>
<td style="height: 38px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Btnviewprofile" runat="server" Text="viewprofile" />&nbsp; <asp:Button ID="btnaccept" runat="server" Text="Accept" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Btnreject" runat="server" Text="Reject" /></td>
</tr>
</table>--%>
<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; friend requests</h1>
<%--<asp:DataList id="dlfriendrequest" runat="server" Width="566px" >

 <ItemTemplate>
<table>
<tr>
<td>
   <%#Eval("firstname")%>
   <%#Eval("middlename")%>
   <%#Eval("lastname")%>,
   <%#Eval("city")%>
   </td>
   <td><asp:HyperLink ID="searchhyperlink" runat="server" NavigateUrl='<%#string.Format("~/requestuser.aspx?pid={0}&userid={1}&photo={2}&firstname={3}&middlename={4}&lastname={5}&gender={6}&dateofbirth={7}&city={8}&state={9}&pin={10}&mobileno={11}",HttpUtility.UrlEncode(Eval("pid").ToString()),HttpUtility.UrlEncode(Eval("userid").ToString()),HttpUtility.UrlEncode(Eval("photo").ToString()),HttpUtility.UrlEncode(Eval("firstname").ToString()),HttpUtility.UrlEncode(Eval("middlename").ToString()),HttpUtility.UrlEncode(Eval("lastname").ToString()),HttpUtility.UrlEncode(Eval("gender").ToString()),HttpUtility.UrlEncode(Eval("dateofbirth").ToString()),HttpUtility.UrlEncode(Eval("city").ToString()),HttpUtility.UrlEncode(Eval("state").ToString()),HttpUtility.UrlEncode(Eval("pin").ToString()),HttpUtility.UrlEncode(Eval("mobileno").ToString()))%>' Text="Accept"></asp:HyperLink>
   <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#string.Format("~/requestuser.aspx?pid={0}&userid={1}&photo={2}&firstname={3}&middlename={4}&lastname={5}&gender={6}&dateofbirth={7}&city={8}&state={9}&pin={10}&mobileno={11}",HttpUtility.UrlEncode(Eval("pid").ToString()),HttpUtility.UrlEncode(Eval("userid").ToString()),HttpUtility.UrlEncode(Eval("photo").ToString()),HttpUtility.UrlEncode(Eval("firstname").ToString()),HttpUtility.UrlEncode(Eval("middlename").ToString()),HttpUtility.UrlEncode(Eval("lastname").ToString()),HttpUtility.UrlEncode(Eval("gender").ToString()),HttpUtility.UrlEncode(Eval("dateofbirth").ToString()),HttpUtility.UrlEncode(Eval("city").ToString()),HttpUtility.UrlEncode(Eval("state").ToString()),HttpUtility.UrlEncode(Eval("pin").ToString()),HttpUtility.UrlEncode(Eval("mobileno").ToString()))%>' Text="Reject"></asp:HyperLink>
  <a href="requestuser.aspx"><%#Eval("userid")%></a>
 </td>
</table>

  
   </ItemTemplate></asp:DataList>
--%>
<asp:GridView ID="friendrequestgrid" runat="server"  AutoGenerateColumns="False" 
        Height="231px" Width="581px" OnRowCommand="friendrequest_OnRowCommand" 
        HorizontalAlign="Center" >
    <Columns>
        <asp:BoundField DataField="Firstname" HeaderText="people"/>
        <asp:BoundField DataField="userid" HeaderText="Details" />
        <asp:TemplateField><ItemTemplate>
        <asp:Button ID="btnedit" runat="server" Text="Accept" CommandArgument='<%#Eval("userid")%>' CommandName="Accept" />
         <asp:Button ID="btnupdate" runat="server" Text="Reject" CommandArgument='<%#Eval("userid")%>' CommandName="Reject" />
         </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
