<%@ Page Title="Главная" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server">
                    <h1 id="main" runat="server">Создание анимации в Unity 3D</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <p id="main1" runat="server">
                    В этом гайде я расскажу и покажу, как сделать детальную анимацию игрового персонажа с помощью Unity 3D.
                    В гайде я буду использовать Unity 2020 и Visual Studio 2019 для запуска анимаций.
                    Я скачал с Asset Store модель персонажа и буду его анимировать.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="mainImg1" onmouseover="zoomImg(true, 'mainImg1', 20);" onmouseout="zoomImg(false, 'mainImg1', 20);" src="/img/model.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <p id="main2" runat="server">В начале я написал простой скрипт для перемещения персонажа.</p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <div>
                        <code>
                            public float walkSpeed = 1f;<br />
                            public float runSpeed = 2.5f;<br />
                            public float sprintSpeed = 4f;<br />
                            <br />
                            public float rotationSpeed = 30f;<br />
                            <br />
                            private float speed;<br />
                            <br />
                            private bool isCrouching = false;<br />
                            private bool isJump = false;<br />
                            <br />
                            void Start()<br />
                            {<br />
                               <span class="code"></span>rigidbody = GetComponent&lt;Rigidbody&gt;();<br />
                            }<br />
                            <br />
                            void move()<br />
                            {<br />
                                <span class="code"></span>float h = Input.GetAxis("Horizontal");<br />
                                <span class="code"></span>float v = Input.GetAxis("Vertical");<br />
                                <span class="code"></span>transform.Translate(new Vector3(h, 0, v) * speed * Time.deltaTime);<br />
                                <br />
                                <span class="code"></span>if (Input.GetKeyDown(KeyCode.LeftControl))<br />
                                <span class="code"></span>{<br />
                                    <span class="code2"></span>if (isCrouching)<br />
                                        <span class="code3"></span>isCrouching = false;<br />
                                    <span class="code2"></span>else if(!isCrouching)<br />
                                        <span class="code3"></span>isCrouching = true;<br />
                                <span class="code"></span>}<br />
                                <br />
                                <span class="code"></span>if (h != 0 || v != 0)<br />
                                <span class="code"></span>{<br />
                                    <span class="code2"></span>if (isCrouching)<br />
                                        <span class="code3"></span>speed = walkSpeed;<br />
                                    <span class="code2"></span>else if (Input.GetKey(KeyCode.LeftAlt))<br />
                                        <span class="code3"></span>speed = walkSpeed;<br />
                                    <span class="code2"></span>else if (Input.GetKey(KeyCode.LeftShift))<br />
                                        <span class="code3"></span>speed = sprintSpeed;<br />
                                    <span class="code2"></span>else<br />
                                        <span class="code3"></span>speed = runSpeed;<br />
                                <span class="code"></span>}<br />
                                <span class="code"></span>else<br />
                                    <span class="code2"></span>speed = 0;<br />
                            }<br />
                            <br />
                            void rotate()<br />
                            {<br />
                                <span class="code"></span>float x = Input.GetAxis("Mouse X");<br />
                                <span class="code"></span>transform.Rotate(new Vector3(0, x, 0) * rotationSpeed);<br />
                            }<br />
                            <br />
                            void Update()<br />
                            {<br />
                                <span class="code"></span>move();<br />
                                <span class="code"></span>rotate();<br />
                                <span class="code"></span>jump();<br />
                            }<br />
                        </code>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <p id="main3" runat="server">
                        В методе <code>move()</code> находится простой скрипт для передвижения игрока и есть несколько возможных режимов передвиженния: ходить, бежать, быстро бежать и режим присев.<br />
                        В методе <code>rotate()</code> отслеживается вращение мышки и игрок поворачивается в след за ней.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <a runat="server" href="~/Idle.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 75%; width: 25%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
