<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridPaging.aspx.cs" Inherits="Paging_Project_GridPaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView Paging</title>

    <!--Bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!--jQuery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <!--AJAX JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <script src="GridPaging.js"></script>
    <link rel="stylesheet" type="text/css" href="GridPaging.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="mx-auto col-md-11">
            <div id="gridEmbDiv" visible="true" runat="server" class="mt-5">

                <div class="mb-2">
                    <label for="ddlPageSize" class="mr-2">Items per page:</label>
                    <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" 
                        CssClass="col-1 py-1 text-center text-dark border-dark-subtle fw-light rounded-2">

                        <asp:ListItem Text="10" Value="10" Selected="True" />
                        <asp:ListItem Text="15" Value="15" Enabled="false"/>
                        <asp:ListItem Text="16" Value="16" />
                        <asp:ListItem Text="20" Value="20" />
                    </asp:DropDownList>
                </div>


                <asp:GridView ShowHeaderWhenEmpty="true" ID="GridUser" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10"
                    OnPageIndexChanging="GridUser_PageIndexChanging" PagerStyle-CssClass="gridview-pager" CssClass="table table-bordered border border-1 border-dark-subtle table-hover text-center">

                    <HeaderStyle CssClass="align-middle table-primary" />
                    <Columns>
                        <asp:TemplateField ControlStyle-CssClass="col-xs-1" HeaderText="Sr.No">
                            <ItemTemplate>
                                <asp:HiddenField ID="id" runat="server" Value="id" />
                                <span>
                                    <%#Container.DataItemIndex + 1%>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" ItemStyle-CssClass="col-xs-3 align-middle text-start fw-light" />
                        <asp:BoundField DataField="AppType" HeaderText="App Type" SortExpression="AppType" ItemStyle-CssClass="col-xs-3 align-middle text-start fw-light" />
                        <asp:BoundField DataField="AppNo" HeaderText="App No" SortExpression="AppNo" ItemStyle-CssClass="col-xs-3 align-middle text-start fw-light" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

    </form>
</body>
</html>
