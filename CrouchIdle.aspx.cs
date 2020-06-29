using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CrouchIdle : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация режима присев игрового персонажа";
                crouchIdle.InnerHtml = "Анимация режима присев игрового персонажа";
                crouchIdle1.InnerHtml = "В этой анимации так же, как в анимации спокойного состояния персонаж не двигается, он находится в спокойном состоянии.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Анімація режиму присівши ігрового персонажа";
                crouchIdle.InnerHtml = "ААнімація режиму присівши ігрового персонажа";
                crouchIdle1.InnerHtml = "У цій анімації так само, як в анімації спокійного стану персонаж не рухається, він знаходиться в спокійному стані.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Crouch idle animation";
                crouchIdle.InnerHtml = "Crouch idle animation";
                crouchIdle1.InnerHtml = "In this animation, just as in the animation of an idle state, the character does not move.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Kucnij bezczynna animacja";
                crouchIdle.InnerHtml = "Kucnij bezczynna animacja";
                crouchIdle1.InnerHtml = "W tej animacji, podobnie jak w animacji stanu bezczynności, postać nie porusza się";
            }
        }
    }
}