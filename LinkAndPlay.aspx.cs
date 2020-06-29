using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class LinkAndPlay : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if(ChangeLang.lang.CompareTo("ru") == 0)
            {
                Page.Title = "Привязка и запуск анимаций";
                linkAndPlay.InnerHtml = "Привязка и запуск анимаций";
                linkAndPlay1.InnerHtml = "Для того, чтобы связать эти анимации между собой и запустить их, вам нужно подключить к персонажу Animator Controller.";
                linkAndPlay2.InnerHtml = "В поле Controller вам нужно перетащить свой Animator Controller, он обычно создаётся автоматически и находится в папке с анимациями.";
                linkAndPlay3.InnerHtml = "<span style=\"color: red;\">Когда вы</span> откроете его, вы увидите несколько цветных блоков: Any state," +
                    " Entry и Exit, здесь нам понадобится только блок Entry. Помимо этих 3 блоков будут автоматически добавлены все" +
                    " созданные анимации.Анимация по умолчанию, которая выделена жёлтым цветом, будет запущенна при старте игры.";
                linkAndPlay4.InnerHtml = "Слева можно увидеть параметры аниматора, я использовал параметры типа bool для переключения между анимациями." +
                    " Вся страшная картина, которую вы видите, это связки между анимациями, которые отслеживают условие и возможность переключения на другую анимацию.";
                linkAndPlay5.InnerHtml = "На картинке видно свойства связки анимации спокойного состояния и анимации прыжка." +
                    " Свойство ‘Has exit time’ используется для автоматического перехода анимации через некоторое время." +
                    " Свойство ‘Conditions’ используется для отслеживания условия переключения анимации. В связке должно быть активно как минимум одно свойство," +
                    " чтобы была возможность выхода из анимации.";
                linkAndPlay6.InnerHtml = "Можно перейти в свойства анимации в режим отладки(Debug)," +
                    " там есть свойство ‘Wrap Mode’, где можно установить режим воспроизведения анимации:" +
                    " Default, Once, Loop, Ping Pong и Clamp Forever. Чтобы запустить анимацию в скрипте, нужно подключить Animator Controller.";
                linkAndPlay7.InnerHtml = "Для переключения анимации нужно использовать метод";
                linkAndPlay8.InnerHtml = "Значение анимации, которую хотите включить установить true, а все остальные false.<br />" +
                    "Вот пример кода для запуска анимаций:";
                linkAndPlay9.InnerHtml = "Здесь показан пример запуска всех анимаций передвижения персонажа, они срабатывают, если персонаж не находится в прыжке.";
                linkAndPlay10.InnerHtml = " В методе <code>jump()</code> проверяется, если была нажата клавиша ‘пробел’" +
                    " и персонаж не находится в прыжке, тогда запускается анимация прыжка, а все остальные анимации останавливаются.";
                linkAndPlay11.InnerHtml = "В данном коде отслеживается приземление персонажа на землю," +
                    " я установил на весь <code>Terrain Box Collider</code> и сделал его триггером, " +
                    "чтобы он не мешал игровому процессу. В коде проверяется, если игрок входит в триггер" +
                    " с именем ‘Ground’ и он находится в прыжке, тогда анимация прыжка останавливается и включается" +
                    " анимация спокойного состояния. Все включения анимаций передвижения игрока находятся в методе <code>update()</code>.";
            }
            else if (ChangeLang.lang.CompareTo("ua") == 0)
            {
                Page.Title = "Прив'язка і запуск анімацій";
                linkAndPlay.InnerHtml = "Прив'язка і запуск анімацій";
                linkAndPlay1.InnerHtml = "Для того, щоб зв'язати ці анімації між собою і запустити їх, вам потрібно підключити до персонажу Animator Controller.";
                linkAndPlay2.InnerHtml = "В поле Controller вам потрібно перетягнути свій Animator Controller, він зазвичай створюється автоматично і знаходиться в папці з анімаціями.";
                linkAndPlay3.InnerHtml = "<span style = \"color: red;\"> Коли ви </ span> відкриєте його, ви побачите кілька кольорових блоків: Any state," +
                    " Entry і Exit, тут нам знадобиться тільки блок Entry. Крім цих 3 блоків будуть автоматично додані всі створені анімації." +
                    " Анімація за замовчуванням, яка виділена жовтим кольором, буде запущена при старті гри.";
                linkAndPlay4.InnerHtml = "Зліва можна побачити параметри аніматора, я використовував параметри типу bool для перемикання між анімаціями." +
                    " Вся страшна картина, яку ви бачите, це зв'язки між анімаціями, які відстежують умова і можливість перемикання на іншу анімацію.";
                linkAndPlay5.InnerHtml = "На зображенні видно властивості зв'язки анімації спокійного стану і анімації стрибка." +
                    " Властивість 'Has exit time' використовується для автоматичного переходу анімації через деякий час." +
                    " Властивість 'Conditions' використовується для відстеження умови перемикання анімації." +
                    " У зв'язці має бути активно як мінімум одна властивість, щоб була можливість виходу з анімації.";
                linkAndPlay6.InnerHtml = "Можна перейти в властивості анімації в режим налагодження (Debug)," +
                    " там є властивість 'Wrap Mode', де можна встановити режим відтворення анімації: Default," +
                    " Once, Loop, Ping Pong і Clamp Forever. Щоб запустити анімацію в скрипті, потрібно підключити Animator Controller.";
                linkAndPlay7.InnerHtml = "Для перемикання анімації потрібно використовувати метод";
                linkAndPlay8.InnerHtml = "Значення анімації, яку хочете включити встановити true, а всі інші false. <br />" +
                    "Ось приклад коду для запуску анімацій:";
                linkAndPlay9.InnerHtml = "Тут показаний приклад запуску всіх анімацій пересування персонажа, вони спрацьовують, якщо персонаж не знаходиться в стрибку.";
                linkAndPlay10.InnerHtml = "У методі <code>jump()</code> перевіряється, якщо була натиснута клавіша 'пробіл'" +
                    " і персонаж не знаходиться в стрибку, тоді запускається анімація стрибка, а всі інші анімації зупиняються.";
                linkAndPlay11.InnerHtml = "В даному коді відстежується приземлення персонажа на землю," +
                    " я встановив на весь <code> Terrain Box Collider </ code> і зробив його тригером," +
                    " щоб він не заважав ігрового процесу. У коді перевіряється, якщо гравець входить в тригер" +
                    " з ім'ям 'Ground' і він знаходиться в стрибку, тоді анімація стрибка зупиняється і включається" +
                    " анімація спокійного стану. Все включення анімацій пересування гравця знаходяться в методі <code> update () </ code>.";
            }
            else if (ChangeLang.lang.CompareTo("en") == 0)
            {
                Page.Title = "Connect and play animations";
                linkAndPlay.InnerHtml = "Connect and play animations";
                linkAndPlay1.InnerHtml = "In order to connect these animations with each other and run them, you need to connect Animator Controller to the character.";
                linkAndPlay2.InnerHtml = "In the Controller field, you need to drag your Animator Controller, it is usually created automatically and is located in the folder with animations.";
                linkAndPlay3.InnerHtml = "<span style = \"color: red; \"> When you </span> open it, you will see several colored blocks:" +
                    " Any state, Entry and Exit, here we need only the Entry block. In addition to these 3 blocks, all created animations" +
                    " will be automatically added. The default animation, which is highlighted in yellow, will be launched when the game starts.";
                linkAndPlay4.InnerHtml = "On the left you can see the parameters of the animator, I used parameters of type bool to switch between animations." +
                    " The whole scary picture that you see is a bunch of animations that track the condition and the ability to switch to another animation.";
                linkAndPlay5.InnerHtml = "The picture shows the properties of a bunch of animations of a calm state and jump animation." +
                    " The ‘Has exit time’ property is used to automatically transition the animation after a while." +
                    " The ‘Conditions’ property is used to track the animation switching condition. At least one property" +
                    " must be active in the bundle in order to be able to exit the animation.";
                linkAndPlay6.InnerHtml = "You can go to the animation properties in Debug mode, there is the ‘Wrap Mode’ property," +
                    " where you can set the animation playback mode: Default, Once, Loop, Ping Pong and Clamp Forever." +
                    " To start the animation in the script, you need to connect the Animator Controller.";
                linkAndPlay7.InnerHtml = "To switch the animation you need to use the method";
                linkAndPlay8.InnerHtml = "The value of the animation you want to enable is set to true, and all the others are false. <br />" +
                    "Here is an example code for starting animations:";
                linkAndPlay9.InnerHtml = "Here is an example of starting all character movement animations, they fire if the character is not in a jump.";
                linkAndPlay10.InnerHtml = "In the <code>jump()</code> method, it is checked if the ‘space’" +
                    " key was pressed and the character is not in a jump, then the jump animation starts, and all other animations stop.";
                linkAndPlay11.InnerHtml = "This code tracks the character’s landing on the ground, I installed the entire <code>Terrain Box Collider</code>" +
                    " and made it a trigger so that it does not interfere with the gameplay. In the code, it is checked if the player enters" +
                    " the trigger with the name ‘Ground’ and he is in the jump, then the jump animation stops and the animation of the idle state" +
                    " is turned on. All inclusions of the player’s movement animations are in the <code>update()</code> method.";
            }
            else if (ChangeLang.lang.CompareTo("pl") == 0)
            {
                Page.Title = "Łącz i odtwarzaj animacje";
                linkAndPlay.InnerHtml = "Łącz i odtwarzaj animacje";
                linkAndPlay1.InnerHtml = "Aby połączyć te animacje ze sobą i uruchomić je, musisz podłączyć kontroler Animator do postaci.";
                linkAndPlay2.InnerHtml = "W polu Kontroler musisz przeciągnąć kontroler Animator, zwykle jest on tworzony automatycznie i znajduje się w folderze z animacjami.";
                linkAndPlay3.InnerHtml = "<span style = \"color: red; \"> Gdy go </span> otworzysz, zobaczysz kilka kolorowych bloków:" +
                    " Dowolny stan, Wejście i Wyjście, tutaj potrzebujemy tylko bloku Wejście. Oprócz tych 3 bloków wszystkie" +
                    " utworzone animacje zostaną automatycznie dodane. Domyślna animacja, która jest podświetlona na żółto, zostanie uruchomiona po uruchomieniu gry.";
                linkAndPlay4.InnerHtml = "Po lewej stronie możesz zobaczyć parametry animatora, użyłem parametrów typu bool do przełączania między animacjami." +
                    " Cały przerażający obraz, który widzisz, to kilka animacji, które śledzą stan i możliwość przełączenia się na inną animację.";
                linkAndPlay5.InnerHtml = "Zdjęcie pokazuje właściwości szeregu animacji spokojnego stanu i animacji skoku." +
                    " Właściwość „Ma czas wyjścia” służy do automatycznego przejścia animacji po chwili." +
                    " Właściwość „Warunki” służy do śledzenia warunków przełączania animacji." +
                    " W pakiecie musi być aktywna co najmniej jedna właściwość, aby móc wyjść z animacji.";
                linkAndPlay6.InnerHtml = "Możesz przejść do właściwości animacji w trybie debugowania," +
                    " jest właściwość „Tryb zawijania”, w której możesz ustawić tryb odtwarzania animacji:" +
                    " Domyślny, Raz, Pętla, Ping Pong i Zaciskaj na zawsze. Aby rozpocząć animację w skrypcie," +
                    " musisz podłączyć kontroler animatora.";
                linkAndPlay7.InnerHtml = "Aby przełączyć animację, musisz użyć metody";
                linkAndPlay8.InnerHtml = "Wartość animacji, którą chcesz włączyć, jest ustawiona na true, a wszystkie pozostałe są fałszywe. <br />" +
                    "Oto przykładowy kod do uruchamiania animacji:";
                linkAndPlay9.InnerHtml = "Oto przykład rozpoczęcia wszystkich animacji ruchu postaci, które uruchamiają się, jeśli postać nie jest w skoku.";
                linkAndPlay10.InnerHtml = "W metodzie <code>jump()</code> sprawdzane jest, czy został naciśnięty klawisz „spacja”," +
                    " a znak nie znajduje się w skoku, następnie rozpoczyna się animacja skoku, a wszystkie inne animacje zatrzymują się.";
                linkAndPlay11.InnerHtml = "Ten kod śledzi lądowanie postaci na ziemi, zainstalowałem cały" +
                    " <code>Terrain Box Collider</code> i uruchomiłem go, aby nie zakłócał rozgrywki." +
                    " W kodzie sprawdzane jest, czy gracz wchodzi w wyzwalacz o nazwie „Ground” i znajduje się w skoku," +
                    " następnie animacja skoku zatrzymuje się, a animacja stanu spokoju jest włączona." +
                    " Wszystkie włączenia animacji ruchu gracza są w metodzie <code>update()</code>.";
            }
        }
    }
}