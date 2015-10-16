using System;
using System.Collections;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace AiGouWu.Admin.Products
{
    public partial class List : System.Web.UI.Page
    {
        SqlComm comm = new SqlComm();
       
        protected void Page_Load(object sender, EventArgs e)
        {
           this.rptClassList.DataSource = comm.getDataByCondition("proType", "*", " 1=1 ");
           this.rptClassList.DataBind();
        }


       
        protected void rptClassList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "btndel")
            {
                string id = e.CommandArgument.ToString();

                var dt = comm.getDataByCondition("proType", "*", " ParentId=" + id);

                if (dt != null && dt.Rows.Count > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "", "alert('请先删除子类别')", true);
                }
                else
                {
                    comm.DeleteByCondition("proType", " where id=" + id);
                }

                Page_Load(null,null);
            }
        }
     
        protected void rptClassList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
          
        }
    }
}
