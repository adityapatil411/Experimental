using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected String GetNoShow()
        {
            StringBuilder s= new StringBuilder("\t");

            var noData=RespRepo.GetRepo().GetResponses().Where(r=>r.WillAttend.HasValue && !r.WillAttend.Value);
            foreach(var r in noData)
            {
                s.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>", r.Name, r.Email, r.Phone));
            }
            return s.ToString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked)
            {
                lblMsg.Text = "Checked";
            } else {
                lblMsg.Text = "Not checked";
            }
        }
        public List<String> someBullets()
        {
            var list = new List<String>();
            for(int i = 0;i<10;i++)
            {
                list.Add(String.Format("bullet {0}",i));
            }
            return list;
        }
        protected void textbox_method(object sender, EventArgs e)
        {
            lblMsg.Text = TextBox1.Text;
        }
    }
}