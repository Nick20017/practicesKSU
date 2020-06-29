using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Walk : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация ходьбы игрового персонажа";
                walk.InnerHtml = "Анимация ходьбы игрового персонажа";
                walk1.InnerHtml = "В этой анимации я перемещал какую-то часть персонажа за каждый определённый промежуток времени.";
                walk2.InnerHtml = "Внимание: чтобы переход с конца анимации до начала при повторе был плавным, нужно установить первый и последний кадр одинаковыми.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Анімація ходьби ігрового персонажа";
                walk.InnerHtml = "Анімація ходьби ігрового персонажа";
                walk1.InnerHtml = "У цій анімації я переміщував якусь частину персонажа за кожен певний проміжок часу.";
                walk2.InnerHtml = "Увага: щоб перехід з кінця анімації до початку при повторі був плавним, потрібно встановити перший і останній кадр однаковими.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Character walk animation";
                walk.InnerHtml = "Character walk animation";
                walk1.InnerHtml = "In this animation, I moved some part of the character for each specific period of time.";
                walk2.InnerHtml = "Note: in order for the transition from the end of the animation to the beginning to be smooth during the replay, you need to set the first and last frame the same.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Animacja chodzenia postaci";
                walk.InnerHtml = "Animacja chodzenia postaci";
                walk1.InnerHtml = "W tej animacji przesunąłem część postaci na każdy określony czas.";
                walk2.InnerHtml = "Uwaga: aby przejście od końca animacji do początku było płynne podczas odtwarzania, musisz ustawić tę samą pierwszą i ostatnią klatkę.";
            }
        }
    }
}