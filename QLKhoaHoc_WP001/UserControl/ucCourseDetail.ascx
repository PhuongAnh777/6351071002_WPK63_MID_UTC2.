<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCourseDetail.ascx.cs" Inherits="de1.UserControl.ucCourseDetail" %>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="DetailCourseEntityDataSource">
    <ItemTemplate>
         <br />
         <asp:Image ID="Image2" runat="server" Width ="100px" Height="100px" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath")%>' /><br/>
         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>&nbsp; <br />
         <asp:Label ID="Label2" runat="server" Text="----------"></asp:Label><br />
         <asp:Label ID="Label3" runat="server" Text= '<%# Eval("Category.CatName") %>'></asp:Label><br />
         <asp:Label ID="Label4" runat="server" Text='<%# Eval("Duration") %>'></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource ID="DetailCourseEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Course" Include="Category">
</asp:EntityDataSource>

