<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/MasterPages/SecurityMasterPage.master" AutoEventWireup="true" CodeFile="P_CategoriaProducto.aspx.aspx.cs" Inherits="Administration_P_CategoriaProducto_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <br />

        <asp:Panel ID="PanelProducto" runat="server">
            <asp:Button ID="btn_NuevoProducto" runat="server" Text="Nuevo" OnClick="btn_NuevoProducto_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
            <asp:Button ID="btn_limpieza" runat="server" Text="Limpiar" OnClick="btn_limpieza_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />


            <br />
            <br />

            <div class="content">
                <div class="content">
                    <asp:Panel ID="pnlAltasProducto" runat="server">


                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Codigo Producto:</label>
                                <asp:TextBox ID="txt_productoId" CssClass="form-control border-input" runat="server" placeholder="#" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Codigo Categoria:</label>
                                <asp:TextBox ID="txt_codigoCategoria" CssClass="form-control border-input" runat="server" placeholder="Codigo Categoria"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Categoria:</label>
                                <asp:TextBox ID="txt_nombreCategoria" CssClass="form-control border-input" runat="server" placeholder="Categoria"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Nombre:</label>
                                <asp:TextBox ID="txt_nombre" CssClass="form-control border-input" runat="server" placeholder="Nombre"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Descripcion:</label>
                                <asp:TextBox ID="txt_descripcionProducto" CssClass="form-control border-input" runat="server" placeholder="Descripcion"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Stock:</label>
                                <asp:TextBox ID="txt_stock" CssClass="form-control border-input" runat="server" placeholder="Stock"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Precio Compra:</label>
                                <asp:TextBox ID="txt_precioCompra" CssClass="form-control border-input" runat="server" placeholder="Precio Compra"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Precio Venta:</label>
                                <asp:TextBox ID="txt_precioVenta" CssClass="form-control border-input" runat="server" placeholder="Precio Venta"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Fecha Vencimiento:</label>
                                <asp:TextBox ID="txt_fechaVencimiento" CssClass="form-control border-input" runat="server" placeholder="Fecha Vencimiento"></asp:TextBox>
                            </div>
                        </div>
                        <br />

                        <asp:Panel runat="server" HorizontalAlign="Center">
                            <asp:Button ID="btn_fecha" runat="server" Text="Fecha" OnClick="btn_fecha_Click" CssClass="btn infoMoverderecha btn-fill btn-wd boton-registro" />

                        </asp:Panel>

                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                </asp:Calendar>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <label>Imagen:</label>
                                <asp:TextBox ID="txt_imagen" CssClass="form-control border-input" runat="server" placeholder="Imagen"></asp:TextBox>
                            </div>
                        </div>

                        <br />
                        <br />

                        <asp:Panel runat="server" HorizontalAlign="Center">
                            <asp:Button ID="btnGrabarProducto" runat="server" Text="Grabar" OnClick="btnGrabarProducto_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                            <asp:Button ID="btn_ModificarProducto" runat="server" Text="Modificar" OnClick="btn_ModificarProcuto_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                            <asp:Button ID="btn_BorrarProducto" runat="server" Text="Borrar" OnClick="btn_BorrarProducto_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                            <asp:Button ID="btnCancelarProducto" runat="server" Text="Cancelar" OnClick="btnCancelarProducto_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                        </asp:Panel>
                    </asp:Panel>
                </div>
            </div>

            <br />
            <br />

            <asp:Panel ID="pnlListadoProducto" runat="server" Direction="LeftToRight" Width="1077px" HorizontalAlign="Center">
                <br />
                <asp:DropDownList ID="DropDownListProducto" runat="server" AppendDataBoundItems="true">
                    <asp:ListItem Value="productoId">Codigo Producto</asp:ListItem>
                    <asp:ListItem Value="nombre" Selected="True">Nombre Producto</asp:ListItem>
                    <asp:ListItem Value="stock">Stock</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txt_busquedaProducto" runat="server" Width="50%"></asp:TextBox>
                <asp:Button ID="btn_busquedaProducto" runat="server" Text="Buscar" OnClick="btn_busquedaProducto_Click" />
                <br />
                <asp:GridView ID="grvProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="productoId" Width="851px" OnSelectedIndexChanged="grvProducto_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="productoId" HeaderText="productoId" InsertVisible="False" ReadOnly="True" SortExpression="productoId" />
                        <asp:BoundField DataField="categoriaId" HeaderText="categoriaId" SortExpression="categoriaId" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="descripcionP" HeaderText="descripcionP" SortExpression="descripcionP" />
                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                        <asp:BoundField DataField="precioCompra" HeaderText="precioCompra" SortExpression="precioCompra" />
                        <asp:BoundField DataField="precioVenta" HeaderText="precioVenta" SortExpression="precioVenta" />
                        <asp:BoundField DataField="fechaVencimiento" HeaderText="fechaVencimiento" SortExpression="fechaVencimiento" />
                        <asp:BoundField DataField="fechaCreado" HeaderText="fechaCreado" SortExpression="fechaCreado" />
                        <asp:BoundField DataField="imagen" HeaderText="imagen" SortExpression="imagen" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>




            </asp:Panel>
        </asp:Panel>

        <br />
        <br />
        <br />
        <br />
        <hr style="color: #000" size="10px"  />
        
        <asp:Panel ID="PanelCategoria" runat="server">
            <asp:Button ID="btn_NuevaCategoria" runat="server" Text="Nuevo" Height="26px" OnClick="btn_NuevaCategoria_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
            <br />
            <br />



            <asp:Panel ID="pnlAltas" runat="server">


                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <label>Codigo:</label>
                        <asp:TextBox ID="txt_CategoriaId" CssClass="form-control border-input" runat="server" placeholder="Stock"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <label>Descripcion:</label>
                        <asp:TextBox ID="txt_descripcion" CssClass="form-control border-input" runat="server" placeholder="Stock"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <asp:Panel runat="server" HorizontalAlign="Center">
                    <asp:Button ID="btnGrabar" runat="server" Text="Grabar" OnClick="btnGrabar_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                    <asp:Button ID="btn_Modificar" runat="server" OnClick="btn_Modificar_Click" Text="Modificar" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                    <asp:Button ID="btn_Borrar" runat="server" OnClick="btn_Borrar_Click" Text="Borrar" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CssClass="btn btn-info btn-fill btn-wd boton-registro" />
                </asp:Panel>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="pnlListadoCategoria" runat="server" Direction="LeftToRight" Width="1077px" HorizontalAlign="Center">
                <br />
                <asp:TextBox ID="txt_busqueda" runat="server" Width="50%"></asp:TextBox>
                <asp:Button ID="btn_busqueda" runat="server" Text="Buscar" OnClick="btn_busqueda_Click" />
                <br />
                <br />
                <br />
                <asp:GridView ID="grvListadoCategoria" runat="server" AutoGenerateColumns="False" DataKeyNames="categoriaId" HorizontalAlign="Center" Width="90%" OnSelectedIndexChanged="grvListadoCategoria_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="categoriaId" HeaderText="Codigo" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <br />
            <br />


        </asp:Panel>
        <br />

    </div>





</asp:Content>

