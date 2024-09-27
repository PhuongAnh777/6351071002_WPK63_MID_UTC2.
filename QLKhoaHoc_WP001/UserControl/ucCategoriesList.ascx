<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoriesList.ascx.cs" Inherits="de1.UserControl.ucCategoriesList" %>
<style type="text/css">
    .auto-style1 {
        margin-left: 32px;
    }
</style>
<b>Course Catgories Available</b>
<br />
<asp:DataList ID="DataList1" runat="server" DataSourceID="CategoryEntityDataSource" CssClass="auto-style1" Width="225px">
    <ItemTemplate>
        <ul>
            <li>
                <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("CatName")  + "("+ Eval("Course.Count")+")"%>' NavigateUrl='<%# "~/Category.aspx?id=" + Eval("CatID")%>'></asp:HyperLink>
                <br />
            </li>
        </ul>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="CategoryEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Category" Include="Course">
</asp:EntityDataSource>



