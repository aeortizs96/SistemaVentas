<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPages/SecurityMasterPage.master" AutoEventWireup="true" CodeFile="P_Cliente.aspx.cs" Inherits="P_Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <br />
        <asp:Button ID="btn_NuevoCliente" runat="server" Text="Nuevo" OnClick="btn_NuevoCliente_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />


        <br />
        <br />



        <br />
        <br />

        <div class="content">
            <div class="content">
                <asp:Panel ID="pnlAltas" runat="server">

                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Nit:</label>
                            <asp:TextBox ID="txt_nit" CssClass="form-control border-input" runat="server" placeholder="Nit"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ForeColor="Red" runat="server" ControlToValidate="txt_nit" Display="Dynamic" ErrorMessage="Debe ingresar el nit del Usuario" ValidationGroup="RegistroUsuario"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Nombres:</label>
                            <asp:TextBox ID="txt_nombre" CssClass="form-control border-input" runat="server" placeholder="Nombres"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Apellidos:</label>
                            <asp:TextBox ID="txt_apellido" CssClass="form-control border-input" runat="server" placeholder="Apellidos"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Telefono:</label>
                            <asp:TextBox ID="txt_telefono" CssClass="form-control border-input" runat="server" placeholder="Telefono"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Direccion:</label>
                            <asp:TextBox ID="txt_direccion" CssClass="form-control border-input" runat="server" placeholder="Direccion"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Email:</label>
                            <asp:TextBox ID="txt_email" CssClass="form-control border-input" runat="server" placeholder="pepito@gmail.com"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <label>Sexo:</label>
                            <asp:TextBox ID="txt_sexo" CssClass="form-control border-input" runat="server" placeholder="Sexo"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <asp:Panel runat="server" HorizontalAlign="Center">
                        <asp:Button ID="btnGrabarCliente" runat="server" Text="Grabar" OnClick="btnGrabarCliente_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                        <asp:Button ID="btn_Modificar" runat="server" OnClick="btn_Modificar_Click" Text="Modificar" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                        <asp:Button ID="btn_Borrar" runat="server" OnClick="btn_Borrar_Click" Text="Borrar" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />

                    </asp:Panel>

                </asp:Panel>
            </div>
        </div>



        <br />


        <asp:Panel ID="pnlListadoClientes" runat="server" Direction="LeftToRight" Width="1077px">
            <br />

            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" CssClass="form-control-lado border-input">
                        <asp:ListItem Value="nit">Nit</asp:ListItem>
                        <asp:ListItem Value="nombres" Selected="True">Nombre</asp:ListItem>
                        <asp:ListItem Value="apellidos">Apellido</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <asp:TextBox ID="txt_busqueda" CssClass="form-control border-input" runat="server" placeholder="Filtro de busquedad"></asp:TextBox>
                    <asp:Button ID="btn_busqueda" runat="server" Text="Buscar" OnClick="btn_busqueda_Click" />
                </div>
            </div>


            <br />
            <asp:GridView ID="grvListadoCliente" runat="server" AutoGenerateColumns="False" DataKeyNames="clienteId" HorizontalAlign="Center" Width="90%" OnSelectedIndexChanged="grvListadoCliente_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="nit" HeaderText="Nit" />
                    <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                    <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="direccion" HeaderText="Direccion" />
                    <asp:BoundField DataField="sexo" HeaderText="Sexo" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </asp:Panel>

    </div>

    <br />
    <br />
    <br />
    <br />

</asp:Content>

