using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Idle : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация спокойного состояния персонажа";
                idle.InnerHtml = "Анимация спокойного состояния персонажа";
                idle1.InnerHtml = "В начале я сделал, чтобы он шатался, но это возникало некоторые трудности в том," +
                    " что он потом криво стоял и мог бежать под углом в верх. Поэтому я сделал, просто чтобы персонаж стоял.";
                idle2.InnerHtml = "Чтобы начать записывать анимацию, нужно нажать кнопку с красным кругом в левом нижнем поле.";
                idle3.InnerHtml = "При записи анимации вы можете добавлять объекты вручную в анимацию или при взаимодействии" +
                    " со скелетом модели, перемещение, вращение и т.д. они будут сами добавляться.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Анімація спокійного стану персонажа";
                idle.InnerHtml = "Анімація спокійного стану персонажа";
                idle1.InnerHtml = "На початку я зробив, щоб він хитався, але це виникало деякі труднощі в тому, " +
                    "що він потім криво стояв і міг бігти під кутом в верх. Тому я зробив, просто щоб персонаж стояв.";
                idle2.InnerHtml = "Щоб почати записувати анімацію, потрібно натиснути кнопку з червоним колом в лівому нижньому полі.";
                idle3.InnerHtml = "Під запису анімації ви можете додавати об'єкти вручну в анімацію або при взаємодії зі скелетом моделі, переміщення, обертання і т.д. вони будуть самі додаватися.";
            }
            else if(ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Character idle animation";
                idle.InnerHtml = "Character idle animation";
                idle1.InnerHtml = "In the beginning, I made it stagger, but this caused some difficulties" +
                    " in the fact that it then stood crooked and could run at an angle to the top. So I made just the character stand.";
                idle2.InnerHtml = "To start recording animation, you need to click the button with a red circle in the bottom left field.";
                idle3.InnerHtml = "When recording animations, you can manually add objects to the animation or" +
                    " when interacting with the model skeleton, move, rotate, etc. they will be added by themselves.";
            }
            else if(ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Animacja bezczynności postaci";
                idle.InnerHtml = "Animacja bezczynności postaci";
                idle1.InnerHtml = "Na początku sprawiłem, że zachwiał się, ale spowodowało to pewne trudności w tym, że stał on wtedy krzywy i mógł biec pod kątem do góry. Postawiłem więc postać.";
                idle2.InnerHtml = "Aby rozpocząć nagrywanie animacji, musisz kliknąć przycisk z czerwonym kółkiem w lewym dolnym polu.";
                idle3.InnerHtml = "Podczas nagrywania animacji można ręcznie dodawać obiekty do animacji lub podczas interakcji ze" +
                    " szkieletem modelu, przesuwać, obracać itp. Zostaną one dodane same.";
            }
        }
    }
}