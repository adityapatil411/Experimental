using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                GuestResponse g = new GuestResponse();
                if(TryUpdateModel(g,new FormValueProvider(ModelBindingExecutionContext)))
                {
                    RespRepo.GetRepo().AddResponses(g);
                    if(g.WillAttend.HasValue && g.WillAttend.Value)
                    {
                        Response.Redirect("seeyouthere.html");
                    }
                    else
                    {
                        Response.Redirect("sorry.html");
                    }
                }
            }
        }
    }
}