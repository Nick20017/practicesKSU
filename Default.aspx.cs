using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Главная";
                main.InnerHtml = "Создание анимации в Unity 3D";
                main1.InnerHtml = "В этом гайде я расскажу и покажу, как сделать детальную анимацию игрового персонажа с помощью Unity 3D." +
                    " В гайде я буду использовать Unity 2020 и Visual Studio 2019 для запуска анимаций." +
                    " Я скачал с Asset Store модель персонажа и буду его анимировать.";
                main2.InnerHtml = "В начале я написал простой скрипт для перемещения персонажа.";
                main3.InnerHtml = "В методе <code>move()</code> находится простой скрипт для передвижения игрока и есть несколько возможных режимов передвиженния: ходить, бежать, быстро бежать и режим присев.<br />" +
                    "В методе <code>rotate()</code> отслеживается вращение мышки и игрок поворачивается в след за ней.";
            }
            else if(ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Головна";
                main.InnerHtml = "Створення анімації в Unity 3D";
                main1.InnerHtml = "У цьому гайді я розповім і покажу, як зробити детальну анімацію ігрового персонажа за допомогою Unity 3D." +
                     " У гайді я буду використовувати Unity 2020 і Visual Studio 2019 для запуску анімацій." +
                     " Я скачав з Asset Store модель персонажа і буду його анімувати.";
                main2.InnerHtml = "На початку я написав простий скрипт для пересування персонажа.";
                main3.InnerHtml = "У методі <code>move()</code> знаходиться простий скрипт для пересування гравця і є кілька можливих режимів пересування: ходити, бігти, швидко бігти і режим присівши. <br />" +
                         "У методі <code>rotate()</code> відстежується обертання мишки і гравець повертається в слід за нею.";
            }
            else if(ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Home page";
                main.InnerHtml = "Creating of an animation in Unity 3D";
                main1.InnerHtml = "In this guide I'll tell and show you how to make a detailed game character animation using Unity 3D." +
                    " In this guide I am going to use Unity 2020 and Visual Studio 2019 to play animations." +
                    " I downloaded a character model from Asset Store and will be animating it.";
                main2.InnerHtml = "First, I've written a simple movement script.";
                main3.InnerHtml = "There is a simple movement script in <code>move()</code> method and there are several movement modes: walk, run, sprint and crouch.<br />" +
                    "Mouse rotation detection is placed in <code>rotate()</code> method and player's rotating is following it.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Strona główna";
                main.InnerHtml = "Tworzenie animacji w Unity 3D";
                main1.InnerHtml = "W tym przewodniku opowiem i pokażę, jak wykonać szczegółową animację postaci w grze za pomocą Unity 3D." +
                    " W tym przewodniku użyję Unity 2020 i Visual Studio 2019 do odtwarzania animacji." +
                    " Pobrałem model postaci z Asset Store i będę go animował.";
                main2.InnerHtml = "Najpierw napisałem prosty skrypt ruchu.";
                main3.InnerHtml = "Istnieje prosty skrypt ruchu w metodzie <code>move()</code> i istnieje kilka trybów ruchu: chód, bieg, sprint i kucanie. <br />" +
                    "Wykrywanie obrotu myszy jest umieszczane w metodzie <code>rotate()</code>, a obracanie gracza podąża za nią.";
            }
        }
    }
}