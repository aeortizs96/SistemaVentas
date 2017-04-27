<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPages/SecurityMasterPage.master" AutoEventWireup="true" CodeFile="Area.aspx.cs" Inherits="Administration_Areas_Area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <h1>Areas</h1>
        <div class="breadcrumb greenContainer">
            <a href="../Default.aspx" class="whiteText">Inicio</a>
            / <a href="ListaAreas.aspx" class="whiteText">Lista</a>
            / Area
        </div>
        <div>
            <h2>
                <asp:literal runat="server" id="tituloLiteral" />
            </h2>
            <asp:panel runat="server" id="RegistroEditarPanel">
                            <div>Id:</div>
                            <asp:TextBox runat="server" Enabled="false" ID="Id_Txt" CssClass="form-control" />
                        </asp:panel>
            <div>Descripcion:</div>
            <asp:textbox runat="server" id="Descripcion_Txt" cssclass="form-control" />
        </div>
        <div>
            <asp:button text="Guardar" runat="server" id="GuardarBtn" onclick="GuardarBtn_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
            <%--<a href="ListaAreas.aspx" class="btn btn-danger">Cancelar</a>--%>
            <asp:button href="ListaAreas.aspx" text="Cancelar" runat="server"  CssClass="btn btn-info btn-fill btn-wd boton-registro" />
        </div>
    </div>

</asp:Content>

