<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Привязка и запуск анимаций" CodeBehind="LinkAndPlay.aspx.cs" Inherits="WebApplication2.LinkAndPlay" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="linkAndPlay" runat="server">Привязка и запуск анимаций</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay1" runat="server">
                        Для того, чтобы связать эти анимации между собой и запустить их, вам нужно подключить к персонажу Animator Controller.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" runat="server">
                    <img id="linkAndPlayImg1" onmouseover="zoomImg(true, 'linkAndPlayImg1', 10);" onmouseout="zoomImg(false, 'linkAndPlayImg1', 10);" src="/img/LinkAndPlay/animatorController.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay2" runat="server">
                        В поле Controller вам нужно перетащить свой Animator Controller, он обычно создаётся автоматически и находится в папке с анимациями.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" runat="server">
                    <img id="linkAndPlayImg2" onmouseover="zoomImg(true, 'linkAndPlayImg2', 10);" onmouseout="zoomImg(false, 'linkAndPlayImg2', 10);" src="/img/LinkAndPlay/animatorControllerIcon.png" style="width: 100%; position: relative; left: 0%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay3" runat="server">
                        <span style="color: red;">Когда вы</span> откроете его, вы увидите несколько цветных блоков: Any state, Entry и Exit, здесь нам понадобится только блок Entry.
                        Помимо этих 3 блоков будут автоматически добавлены все созданные анимации. Анимация по умолчанию, которая выделена жёлтым цветом, будет запущенна при старте игры.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" runat="server">
                    <img id="linkAndPlayImg3" onmouseover="zoomImg(true, 'linkAndPlayImg3', 10);" onmouseout="zoomImg(false, 'linkAndPlayImg3', 10);" src="/img/LinkAndPlay/animatorControllerInside.png" style="width: 100%; position: relative; left: 0%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay4" runat="server">
                        Слева можно увидеть параметры аниматора, я использовал параметры типа bool для переключения между анимациями.
                        Вся страшная картина, которую вы видите, это связки между анимациями, которые отслеживают условие и возможность переключения на другую анимацию.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" runat="server">
                    <img id="linkAndPlayImg4" onmouseover="zoomImg(true, 'linkAndPlayImg4', 10);" onmouseout="zoomImg(false, 'linkAndPlayImg4', 10);" src="/img/LinkAndPlay/animatorTransitionProperties.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay5" runat="server">
                        На картинке видно свойства связки анимации спокойного состояния и анимации прыжка.
                        Свойство ‘Has exit time’ используется для автоматического перехода анимации через некоторое время.
                        Свойство ‘Conditions’ используется для отслеживания условия переключения анимации.
                        В связке должно быть активно как минимум одно свойство, чтобы была возможность выхода из анимации.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ColumnSpan="2" runat="server">
                    <img id="linkAndPlayImg5" onmouseover="zoomImg(true, 'linkAndPlayImg5', 10);" onmouseout="zoomImg(false, 'linkAndPlayImg5', 10);" src="/img/LinkAndPlay/animationPropertiesDebug.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay6" runat="server">
                        Можно перейти в свойства анимации в режим отладки(Debug), там есть свойство ‘Wrap Mode’, где можно установить режим воспроизведения анимации: Default, Once, Loop, Ping Pong и Clamp Forever.
                        Чтобы запустить анимацию в скрипте, нужно подключить Animator Controller.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <code>
                        public Animator animator;<br />
                        void Start()<br />
                        {<br />
                            <span class="code"></span>animator = GetComponent<Animator>();<br />
                        }
                    </code>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay7" runat="server">
                        Для переключения анимации нужно использовать метод
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <code>
                        animator.SetBool(string boolName, bool value);
                    </code>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay8" runat="server">
                        Значение анимации, которую хотите включить установить true, а все остальные false.<br />
                        Вот пример кода для запуска анимаций:
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <code>
                        void update()<br />
                        {<br />
                            <span class="code"></span>if (!isJump)<br />
                            <span class="code"></span>{<br />
                                <span class="code2"></span>if (Input.GetKeyDown(KeyCode.Keypad0))<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", true);<br />
                                <span class="code2"></span>}<br />
                                <span class="code2"></span>else if (speed == 0 && isCrouching)<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", true);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>}<br />
                                <span class="code2"></span>else if (speed > 0 && isCrouching)<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", true);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>}<br />
                                <span class="code2"></span>else if (speed == walkSpeed && !isCrouching)<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", true);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>}<br />
                                <span class="code2"></span>else if ((speed == runSpeed || speed == sprintSpeed) && !isCrouching)<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", true);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>}<br />
                                <span class="code2"></span>else if (speed == 0 && !isCrouching)<br />
                                <span class="code2"></span>{<br />
                                    <span class="code3"></span>animator.SetBool("isIdle", true);<br />
                                    <span class="code3"></span>animator.SetBool("isWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isRunning", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchIdle", false);<br />
                                    <span class="code3"></span>animator.SetBool("isCrouchWalking", false);<br />
                                    <span class="code3"></span>animator.SetBool("isJump", false);<br />
                                    <span class="code3"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>}<br />
                            <span class="code"></span>}<br />
                        }
                    </code>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay9" runat="server">
                        Здесь показан пример запуска всех анимаций передвижения персонажа, они срабатывают, если персонаж не находится в прыжке.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <code>
                        void jump()<br />
                        {<br />
                            <span class="code"></span>if(Input.GetKeyDown(KeyCode.Space) && !isJump)<br />
                            <span class="code"></span>{<br />
                                <span class="code2"></span>isJump = true;<br />
                                <span class="code2"></span>animator.SetBool("isIdle", false);<br />
                                <span class="code2"></span>animator.SetBool("isWalking", false);<br />
                                <span class="code2"></span>animator.SetBool("isRunning", false);<br />
                                <span class="code2"></span>animator.SetBool("isCrouchIdle", false);<br />
                                <span class="code2"></span>animator.SetBool("isCrouchWalking", false);<br />
                                <span class="code2"></span>animator.SetBool("isJump", true);<br />
                                <span class="code2"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>rigidbody.AddForce(transform.up * jumpHeight, ForceMode.Impulse);<br />
                            <span class="code"></span>}<br />
                        }
                    </code>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay10" runat="server">
                        В методе jump() проверяется, если была нажата клавиша ‘пробел’ и персонаж не находится в прыжке, тогда запускается анимация прыжка, а все остальные анимации останавливаются.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <code>
                        void OnTriggerEnter(Collider col)<br />
                        {<br />
                            <span class="code"></span>if(col.name.CompareTo("Ground") == 0 && isJump)<br />
                            <span class="code"></span>{<br />
                                <span class="code2"></span>animator.SetBool("isIdle", true);<br />
                                <span class="code2"></span>animator.SetBool("isWalking", false);<br />
                                <span class="code2"></span>animator.SetBool("isRunning", false);<br />
                                <span class="code2"></span>animator.SetBool("isCrouchIdle", false);<br />
                                <span class="code2"></span>animator.SetBool("isCrouchWalking", false);<br />
                                <span class="code2"></span>animator.SetBool("isJump", false);<br />
                                <span class="code2"></span>animator.SetBool("isSomersault", false);<br />
                                <span class="code2"></span>isJump = false;<br />
                            <span class="code"></span>}<br />
                        }
                    </code>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="linkAndPlay11" runat="server">
                        В данном коде отслеживается приземление персонажа на землю, я установил на весь <code>Terrain Box Collider</code> и сделал его триггером, чтобы он не мешал игровому процессу.
                        В коде проверяется, если игрок входит в триггер с именем ‘Ground’ и он находится в прыжке, тогда анимация прыжка останавливается и включается анимация спокойного состояния.
                        Все включения анимаций передвижения игрока находятся в методе <code>update()</code>.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <a runat="server" href="~/Somersault.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 25%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>