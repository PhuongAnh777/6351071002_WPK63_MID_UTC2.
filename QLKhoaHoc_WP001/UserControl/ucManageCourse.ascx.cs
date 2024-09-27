using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1.UserControl
{
    public partial class ucManageCourse : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindDropDownList();
            }
        }
        protected void BindGridView()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            var query = (from p in context.Course select p).ToList<Course>();
            GridViewCourse.DataSource = query;
            GridViewCourse.DataBind();
        }
        protected void BindDropDownList()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            DropDownListCategory.DataSource = (from c in context.Category select c).ToList<Category>();
            DropDownListCategory.DataTextField = "CatName";
            DropDownListCategory.DataValueField = "CatID";
            DropDownListCategory.DataBind();
        }
        protected void ButtonAddNew_Click(object sender, EventArgs e)
        {
            string errorMessage = "";
            if (string.IsNullOrWhiteSpace(TextBoxName.Text))
            {
                errorMessage += "Không được để trống tên khóa học. ";
            }
            if (string.IsNullOrWhiteSpace(TextBoxDurian.Text))
            {
                errorMessage += "Thời lượng khóa học chưa nhập. ";
            }
            if (DropDownListCategory.SelectedValue == "-1") 
            {
                errorMessage += "Vui lòng chọn danh mục. ";
            }
            if (string.IsNullOrWhiteSpace(TextBoxDescription.Text))
            {
                errorMessage += "Không được để trống mô tả. ";
            }

            if (!string.IsNullOrEmpty(errorMessage))
            {
                LabelError.Text = errorMessage; 
                return;
            }
            string filename = "";
            if (FileUploadPicture.HasFile)
            {
                filename = FileUploadPicture.FileName;
                FileUploadPicture.SaveAs(Server.MapPath("~/images/Courses/" + filename));

            }

            QLKhoaHocEntities context = new QLKhoaHocEntities();
            Course p = new Course();

            p.Name = TextBoxName.Text;
            p.Duration = int.Parse(TextBoxDurian.Text);
            p.CatID = int.Parse(DropDownListCategory.SelectedValue);
            p.Description = TextBoxDescription.Text;
            p.ImageFilePath = filename;

            context.Course.Add(p);
            context.SaveChanges();

            BindGridView();
            Page.Master.DataBind();
        }
        protected void GridViewProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewCourse.PageIndex = e.NewPageIndex;
            BindGridView();
        }
    }
}