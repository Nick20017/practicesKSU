using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        protected void onSelectionChange(Object sender, EventArgs e)
        {
            if (lang.SelectedValue.CompareTo("Русский") == 0)
                ChangeLang.lang = "ru";
            else if (lang.SelectedValue.CompareTo("Українська") == 0)
                ChangeLang.lang = "ua";
            else if (lang.SelectedValue.CompareTo("English") == 0)
                ChangeLang.lang = "en";
            else if (lang.SelectedValue.CompareTo("Polski") == 0)
                ChangeLang.lang = "pl";
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            lang.Items.Add("Русский");
            lang.Items.Add("Українська");
            lang.Items.Add("English");
            lang.Items.Add("Polski");

            if (ChangeLang.lang.CompareTo("ru") == 0)
                lang.SelectedIndex = 0;
            else if (ChangeLang.lang.CompareTo("ua") == 0)
                lang.SelectedIndex = 1;
            else if (ChangeLang.lang.CompareTo("en") == 0)
                lang.SelectedIndex = 2;
            else if (ChangeLang.lang.CompareTo("pl") == 0)
                lang.SelectedIndex = 3;
        }
    }
}