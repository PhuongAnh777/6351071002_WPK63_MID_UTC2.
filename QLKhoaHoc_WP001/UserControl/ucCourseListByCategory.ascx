<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCourseListByCategory.ascx.cs" Inherits="de1.UserControl.ucCourseListByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="CourseEntityDataSource">
    <EmptyDataTemplate>
        <table style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <ItemTemplate>
        <td runat="server" style="">ID:
            <asp:Label ID="Label" runat="server" Text='<%# Eval("Name") %>' CssClass="" /><br/>
            <asp:Image ID="Image2" runat="server" Width ="100px" Height="100px" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath")%>' /><br/>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Duration") %>' CssClass="" /><br/>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Details.aspx?id = " + Eval("id") %>' CssClass="">Show detail</asp:HyperLink>
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" border="0" style="">
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </table>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="CourseEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Course" EntityTypeFilter="" Select="" Include="Category" Where="it.Category.CatID=@CategoryID">
    <WhereParameters>
        <asp:QueryStringParameter Name="CategoryID" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>





