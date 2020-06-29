<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация ходьбы игрового персонажа" CodeBehind="Walk.aspx.cs" Inherits="WebApplication2.Walk" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="walk" runat="server">Анимация ходьбы игрового персонажа</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="walk1" runat="server">
                        В этой анимации я перемещал какую-то часть персонажа за каждый определённый промежуток времени.
                    </p>
                    <p runat="server" id="walk2" style="color: red;">
                        Внимание: чтобы переход с конца анимации до начала при повторе был плавным, нужно установить первый и последний кадр одинаковыми.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="walkImg1" onmouseover="zoomImg(true, 'walkImg1', 20);" onmouseout="zoomImg(false, 'walkImg1', 20);" src="/img/Walk/walkAnimation1.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="walkImg2" onmouseover="zoomImg(true, 'walkImg2', 20);" onmouseout="zoomImg(false, 'walkImg2', 20);" src="/img/Walk/walkAnimation2.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="walkImg3" onmouseover="zoomImg(true, 'walkImg3', 20);" onmouseout="zoomImg(false, 'walkImg3', 20);" src="/img/Walk/walkAnimation3.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="walkImg4" onmouseover="zoomImg(true, 'walkImg4', 20);" onmouseout="zoomImg(false, 'walkImg4', 20);" src="/img/Walk/walkAnimation4.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="walkImg5" onmouseover="zoomImg(true, 'walkImg5', 20);" onmouseout="zoomImg(false, 'walkImg5', 20);" src="/img/Walk/walkAnimation5.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="walkImg6" onmouseover="zoomImg(true, 'walkImg6', 20);" onmouseout="zoomImg(false, 'walkImg6', 20);" src="/img/Walk/walkAnimation6.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="walkImg7" onmouseover="zoomImg(true, 'walkImg7', 20);" onmouseout="zoomImg(false, 'walkImg7', 20);" src="/img/Walk/walkAnimation7.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="walkImg8" onmouseover="zoomImg(true, 'walkImg8', 20);" onmouseout="zoomImg(false, 'walkImg8', 20);" src="/img/Walk/walkAnimation8.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="walkImg9" onmouseover="zoomImg(true, 'walkImg9', 20);" onmouseout="zoomImg(false, 'walkImg9', 20);" src="/img/Walk/walkAnimation9.png" style="width: 100%;" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="walkImg10" onmouseover="zoomImg(true, 'walkImg10', 20);" onmouseout="zoomImg(false, 'walkImg10', 20);" src="/img/Walk/walkAnimation10.png" style="width: 100%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <a runat="server" href="~/Idle.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell>
                    <a runat="server" href="~/Run.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>