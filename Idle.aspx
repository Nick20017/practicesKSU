<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Анимация спокойного состояния персонажа" AutoEventWireup="true" CodeBehind="Idle.aspx.cs" Inherits="WebApplication2.Idle" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="idle" runat="server">Анимация спокойного состояния персонажа</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="idle1" runat="server">
                        В начале я сделал, чтобы он шатался, но это возникало некоторые трудности в том, что он потом криво стоял и мог бежать под углом в верх. Поэтому я сделал, просто чтобы персонаж стоял.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="idleImg1" onmouseover="zoomImg(true, 'idleImg1', 20);" onmouseout="zoomImg(false, 'idleImg1', 20);" src="/img/Idle/idleAnimation.png" style="width: 50%; position:relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="idle2" runat="server">
                        Чтобы начать записывать анимацию, нужно начать кнопку с красным кругом в левом нижнем поле.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="idleImg2" onmouseover="zoomImg(true, 'idleImg2', 20);" onmouseout="zoomImg(false, 'idleImg2', 20);" src="/img/recordAnimation.png" style="width: 50%; position: relative; left: 25%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="idle3" runat="server">
                        При записи анимации вы можете добавлять объекты вручную в анимацию или при взаимодействии со скелетом модели, перемещение, вращение и т.д. они будут сами добавляться.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="idleImg3" onmouseover="zoomImg(true, 'idleImg3', 20);" onmouseout="zoomImg(false, 'idleImg3', 20);" src="/img/itemsToAnimate.png" style="width: 50%; position: relative; left: 25%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <a runat="server" href="~/Default.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell>
                    <a runat="server" href="~/Walk.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>