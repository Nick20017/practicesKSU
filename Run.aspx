<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Title="Анимация бега игрового персонажа" CodeBehind="Run.aspx.cs" Inherits="WebApplication2.Run" %>
<%@ OutputCache Duration="15" VaryByParam="None" Location="Client" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 70%; position:absolute; left: 15%; top: 2%; justify-content;">
        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell runat="server" ColumnSpan="2">
                    <h1 id="run" runat="server">Анимация бега игрового персонажа</h1>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="run1" runat="server">
                        Эта анимация похожа на ходьбу, только ноги и руки персонажа поднимаются выше и скорость анимации сделал немного больше.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="runImg1" onmouseover="zoomImg(true, 'runImg1', 20);" onmouseout="zoomImg(false, 'runImg1', 20);" src="/img/Run/runAnimation1.png" style="width: 100%" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="runImg2" onmouseover="zoomImg(true, 'runImg2', 20);" onmouseout="zoomImg(false, 'runImg2', 20);" src="/img/Run/runAnimation2.png" style="width: 100%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="runImg3" onmouseover="zoomImg(true, 'runImg3', 20);" onmouseout="zoomImg(false, 'runImg3', 20);" src="/img/Run/runAnimation3.png" style="width: 100%" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="runImg4" onmouseover="zoomImg(true, 'runImg4', 20);" onmouseout="zoomImg(false, 'runImg4', 20);" src="/img/Run/runAnimation4.png" style="width: 100%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <img id="runImg5" onmouseover="zoomImg(true, 'runImg5', 20);" onmouseout="zoomImg(false, 'runImg5', 20);" src="/img/Run/runAnimation5.png" style="width: 100%" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <img id="runImg6" onmouseover="zoomImg(true, 'runImg6', 20);" onmouseout="zoomImg(false, 'runImg6', 20);" src="/img/Run/runAnimation6.png" style="width: 100%" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <img id="runImg7" onmouseover="zoomImg(true, 'runImg7', 20);" onmouseout="zoomImg(false, 'runImg7', 20);" src="/img/Run/runAnimation7.png" style="width: 50%; position: relative; left: 25%;" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <p id="run2" runat="server">
                        Вы, наверное, заметили, что в начале, где я написал код для передвижения игрока, было 2 режима бега: обычный и спринт. Для них я использовал только одну анимацию <span style="color: red;">бега</span>.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <a runat="server" href="~/Walk.aspx">
                        <img src="/img/arrowL.png" style="position:relative; left: 0%; width: 50%;" />
                    </a>
                </asp:TableCell>
                <asp:TableCell>
                    <a runat="server" href="~/CrouchIdle.aspx">
                        <img src="/img/arrowR.png" style="position:relative; left: 50%; width: 50%;" />
                    </a>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>