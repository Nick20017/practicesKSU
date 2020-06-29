using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Run : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация бега игрового персонажа";
                run.InnerHtml = "Анимация бега игрового персонажа";
                run1.InnerHtml = "Эта анимация похожа на ходьбу, только ноги и руки персонажа поднимаются выше и скорость анимации сделал немного больше.";
                run2.InnerHtml = "Вы, наверное, заметили, что в начале, где я написал код для передвижения игрока, было 2 режима бега:" +
                    " обычный и спринт. Для них я использовал только одну анимацию <span style=\"color: red; \">бега</span>.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Анімація бігу ігрового персонажа";
                run.InnerHtml = "Анімація бігу ігрового персонажа";
                run1.InnerHtml = "Ця анімація схожа на ходьбу, тільки ноги і руки персонажа піднімаються вище і швидкість анімації зробив трохи більше.";
                run2.InnerHtml = "Ви, напевно, помітили, що на початку, де я написав код для пересування гравця, було 2 режиму бігу:" +
                    " звичайний і спринт. Для них я використовував тільки одну анімацію <span style = \"color: red; \"> бігу </ span>.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Character running animation";
                run.InnerHtml = "Character running animation";
                run1.InnerHtml = "This animation is like walking, only the legs and arms of the character rise higher and the speed of the animation is a little higher.";
                run2.InnerHtml = "You probably noticed that in the beginning, where I wrote the code for the player’s movement, there were 2 running modes:" +
                    " normal and sprint. For them, I used only one animation of <span style = \"color: red; \"> running </span>.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Animacja biegania postaci";
                run.InnerHtml = "Animacja biegania postaci";
                run1.InnerHtml = "Ta animacja przypomina chodzenie, tylko nogi i ramiona postaci rosną wyżej, a prędkość animacji jest nieco wyższa.";
                run2.InnerHtml = "Prawdopodobnie zauważyłeś, że na początku, kiedy napisałem kod ruchu gracza, były 2 tryby biegu:" +
                    " normalny i sprint. Dla nich użyłem tylko jednej animacji <span style = \"color: red; \"> z systemem </span>.";
            }
        }
    }
}