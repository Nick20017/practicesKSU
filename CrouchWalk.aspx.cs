using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CrouchWalk : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация ходьбы в режиме присев";
                crouchWalk.InnerHtml = "Анимация ходьбы в режиме присев";
                crouchWalk1.InnerHtml = "Эта анимация похожа на анимацию обычной ходьбы, только если вы просто сделаете так анимацию," +
                    " персонаж будет висеть в воздухе, потому что его коллайдер не изменяется при изменении структуры игрока." +
                    " Если поднять ноги, коллайдер будет такой же высоты, что и если ноги опущены. Для того, чтобы это исправить," +
                    " нужно в анимацию добавить элемент коллайдер и его свойства центр по координате ‘y’ и/или высоту и подстроить так," +
                    " чтобы персонаж мог полностью находиться на земле.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Анімація ходьби в режимі присівши";
                crouchWalk.InnerHtml = "Анімація ходьби в режимі присівши";
                crouchWalk1.InnerHtml = "Ця анімація схожа на анімацію звичайної ходьби, тільки якщо ви просто зробите так анімацію," +
                    " персонаж буде висіти в повітрі, тому що його коллайдер не змінюється при зміні структури гравця. Якщо підняти ноги," +
                    " коллайдер буде такої ж висоти, що і якщо ноги опущені. Для того, щоб це виправити, потрібно в анімацію додати елемент" +
                    " коллайдер і його властивості центр по координаті 'y' і/або висоту і підстроїти так, щоб персонаж міг повністю перебувати на землі.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Crouch walking animation";
                crouchWalk.InnerHtml = "Crouch walking animation";
                crouchWalk1.InnerHtml = "This animation is similar to the usual walking animation, only if you just do this animation," +
                    " the character will hang in the air because its collider does not change when the player’s structure changes." +
                    " If you raise your legs, the collider will be the same height as if your legs were lowered. In order to fix this," +
                    " you need to add the collider element and its center properties in the animation along the ‘y’ coordinate and / or height" +
                    " and adjust so that the character can be completely on the ground.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Kucnij animację chodzenia";
                crouchWalk.InnerHtml = "Kucnij animację chodzenia";
                crouchWalk1.InnerHtml = "Ta animacja jest podobna do zwykłej animacji chodzenia, tylko jeśli wykonasz tę animację," +
                    " postać zawiesi się w powietrzu, ponieważ zderzak nie zmienia się, gdy zmienia się struktura gracza." +
                    " Jeśli podniesiesz nogi, zderzak będzie miał taką samą wysokość, jak gdyby nogi były opuszczone. Aby" +
                    " to naprawić, musisz dodać element zderzający i jego właściwości środkowe do animacji wzdłuż" +
                    " współrzędnej 'y' i/lub wysokości oraz dostosować, aby postać mogła całkowicie leżeć na ziemi.";
            }
        }
    }
}