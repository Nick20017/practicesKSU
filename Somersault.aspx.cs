using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Somersault : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Анимация кувырка";
                somersault.InnerHtml = "Анимация кувырка";
                somersault1.InnerHtml = "Анимация кувырка самая сложная из всех перечисленных выше анимаций." +
                    " Здесь нужно всё детально отобразить каждое действие, перемещение и вращение каждой части тела персонажа, и чтобы он не выпал под землю.";
                somersault2.InnerHtml = "В 0:50 и 0:55 я отдельно добавил, чтобы персонаж не провалился под землю.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Aнімація перекиду";
                somersault.InnerHtml = "Aнімація перекиду";
                somersault1.InnerHtml = "Анімація перекиду найскладніша з усіх перерахованих вище анімацій." +
                    " Тут потрібно все детально відобразити кожну дію, переміщення і обертання кожної частини тіла персонажа, і щоб він не випав під землю.";
                somersault2.InnerHtml = "О 0:50 і 0:55 я окремо додав, щоб персонаж не провалився під землю.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Somersault animation";
                somersault.InnerHtml = "Somersault animation";
                somersault1.InnerHtml = "The somersault animation is the most complex of all the animations listed above. Here you need to display in detail every action, movement and rotation of each part of the character’s body, and so that it does not fall underground.";
                somersault2.InnerHtml = "At 0:50 and 0:55, I added separately so that the character does not fall underground.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Animacja salta";
                somersault.InnerHtml = "Animacja salta";
                somersault1.InnerHtml = "АAnimacja salta jest najbardziej złożoną ze wszystkich wymienionych powyżej animacji. Tutaj musisz szczegółowo wyświetlić każdą akcję, ruch i obrót każdej części ciała postaci, aby nie spadła pod ziemię.";
                somersault2.InnerHtml = "O 0:50 i 0:55 dodałem osobno, aby postać nie spadła pod ziemię..";
            }
        }
    }
}