using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace test1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {            
            bool flag = false;         
            SqlConnectionStringBuilder a = new SqlConnectionStringBuilder();
            a.DataSource = "(local)";
            a.UserID = "sa";
            a.Password = "xxxxx";
            a.InitialCatalog = "NetSchool";
            SqlConnection conn = new SqlConnection(a.ToString());
            try
            {                
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    Response.Write("<script>alert('数据库已打开');</script>");
                }              
                string str = "Select * From STUDENT Where USERID =" + "'" + txtUserName.Text + "'" + "AND PASSWORD =" + txtPwd.Text;
                
             SqlCommand com = new SqlCommand(str, conn);
             SqlDataReader read = com.ExecuteReader();
              while (read.Read())
              {                
                  Session["usr"] = txtUserName.Text;
                  Session["pwd"] = txtPwd.Text;
                  flag = true;
                  Response.Write("<script>alert('登陆成功！');location.href='myhome.aspx';</script>");                
                }               
               if (flag == false)
                {
                    Response.Write("<script>alert('用户名或者密码输入错误！');location.href='login.aspx'</script>");
                                  }         
            }
            catch (Exception)
            {
            }
            conn.Close();
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPwd.Text = "";
            Response.Write("<script>alert('清除成功！');</script>");
        }
    }
}
