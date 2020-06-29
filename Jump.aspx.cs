using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Jump : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация прыжка";
                jump.InnerHtml = "Анимация прыжка";
                jump1.InnerHtml = "В этой анимации достаточно двух кадров: начального положения и конечного. Лучше эту анимацию не зацикливать," +
                    " чтобы всё выглядело красиво. Потом просто при приземлении переключить анимацию на любую другую нужную.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Aнімація стрибка";
                jump.InnerHtml = "Aнімація стрибка";
                jump1.InnerHtml = "У цій анімації досить двох кадрів: початкового положення і кінцевого." +
                    " Краще цю анімацію не зациклюватися, щоб все виглядало красиво. Потім просто при приземленні переключити анімацію на будь-яку іншу потрібну.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Jump animation";
                jump.InnerHtml = "Jump animation";
                jump1.InnerHtml = "In this animation, two frames are enough: the initial position and the final. It’s better not to loop this animation" +
                    " so that everything looks beautiful. Then, just when landing, switch the animation to any other one you need.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Animacja skoku";
                jump.InnerHtml = "Animacja skoku";
                jump1.InnerHtml = "W tej animacji wystarczą dwie klatki: pozycja początkowa i końcowa. Lepiej nie zapętlać tej animacji," +
                    " aby wszystko wyglądało pięknie. Następnie, właśnie podczas lądowania, przełącz animację na inną, której potrzebujesz.";
            }
        }
    }
}