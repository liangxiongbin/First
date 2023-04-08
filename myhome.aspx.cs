using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace test1
{
    public partial class myhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
          
            if (Session["usr"] == null)
            {
             
               Response.Redirect("login.aspx");
            }
            
            if (Session["usr"] != null)
            {
                ListBox1.Items.Clear();
                ListBox1.Items.Add("我所选修的课程");
                Label2.Text = "当前用户名、密码为" + Session["usr"].ToString() + "、" + Session["pwd"].ToString();
                Label3.Text = "当前时间为：" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");

            }
            Session["class"] = "have";

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["usr"] = null;
            Session["password"] = null;
            Response.Write("<script>alert('你已成功退出！');</script>");
            Response.Redirect("login.aspx");
        }
       protected void bynSearchMyclass_Click(object sender, EventArgs e)
          {

              SqlConnectionStringBuilder a = new SqlConnectionStringBuilder();
              //以下根据自己的数据库填写
              a.DataSource = "(local)";
              a.UserID = "sa";
              a.Password = "xxxxxx";
              a.InitialCatalog = "NetSchool";
              SqlConnection conn = new SqlConnection(a.ToString());
              conn.Open();
              if (conn.State == System.Data.ConnectionState.Open)
              {
                  Response.Write("<script>alert('数据库已打开');</script>");
              }
              else
              {
                  Response.Write("<script>alert('数据库fail');</script>");
              }
              string str = "SELECT * FROM STUDENT_CLASS WHERE USERID = '" + Session["usr"] + "'";
              SqlCommand com = new SqlCommand(str, conn);
              SqlDataReader read = com.ExecuteReader();
            if (!read.Read())
              {
                  //this.ListBox1.Items.Clear();
                  this.ListBox1.Items.Add("没有选修任何一门课程！");
              }
              while (read.Read())
              {
                  Response.Write("<script>alert('查询成功');</script>");
                  if (read[1].ToString() == null)
                  {
                      //this.ListBox1.Items.Clear();
                      this.ListBox1.Items.Add("没有选修任何一门课程！");
                  }
                  else
                  {
                      this.ListBox1.Items.Add(read[1].ToString());
                  }
              }
            
              conn.Close();
          }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
