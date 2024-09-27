<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCourse.ascx.cs" Inherits="de1.UserControl.ucManageCourse" %>
<style type="text/css">
    .auto-style1 {
        margin-top: 5px;
    }
    .auto-style2 {
        height: 30px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td>Course name:</td>
        <td><asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxName" runat="server" ErrorMessage="Tên khóa học chưa nhập"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Durian</td>
        <td>
            <asp:TextBox ID="TextBoxDurian" runat="server"></asp:TextBox>

               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxDurian" runat="server" ErrorMessage="Thời gian học chưa nhập"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Category</td>
        <td><asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
    <td>Description</td>
    <td>
        <asp:TextBox ID="TextBoxDescription" TextMode="MultiLine" runat="server"></asp:TextBox>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBoxDescription" runat="server" ErrorMessage="Mô tả khóa học chưa nhập"></asp:RequiredFieldValidator>
    </td>
       
    <td>&nbsp;</td>
</tr>
    <tr>
     <td>Picture</td>
     <td>
         <asp:FileUpload ID="FileUploadPicture" runat="server" />

       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="FileUploadPicture" runat="server" ErrorMessage="Hình ảnh khóa học chưa nhập"></asp:RequiredFieldValidator>
     </td>
     <td>&nbsp;</td>
 </tr>

    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2">
            <asp:Button ID="ButtonAddNew" runat="server" Text="Add new" onclick="ButtonAddNew_Click"/></td>
    </tr>
</table>
<asp:GridView ID="GridViewCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True" CssClass="auto-style1" OnPageIndexChanging="GridViewProduct_PageIndexChanging">
    <Columns>
    <asp:TemplateField HeaderText="No.">
        <ItemTemplate>
            <%# Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Picture">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%#"~/images/Courses/" +Eval("ImageFilePath") %>' />
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#Eval("Name") %>' Target="_blank" NavigateUrl='<%#"~/Details.aspx?id=" + Eval("ID")%>'></asp:HyperLink>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="">
        <ItemTemplate>
            <asp:Button ID="BtnDelete" runat="server" Text="Delete"/>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="">
        <ItemTemplate>
            <asp:Button ID="BtnEdit" runat="server" Text="Edit"/>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
</asp:GridView>

