
var tabladata;
$(document).ready(function () {
    activarMenu("Mantenedor");


    //OBTENER ROLES
    jQuery.ajax({
        url: $.MisUrls.url._ObtenerRoles,
        type: "GET",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {

            $("#cboRol").html("");

            $("<option>").attr({ "value": 0 }).text("-- Seleccione --").appendTo("#cboRol");
            if (data.data != null)
                $.each(data.data, function (i, item) {

                    if (item.Activo == true) {
                        $("<option>").attr({ "value": item.IdRol }).text(item.Descripcion).appendTo("#cboRol");
                    }
                })
        },
        error: function (error) {
            console.log(error)
        },
        beforeSend: function () {
        },
    });

})


function buscar() {
    if ($("#cboRol").val() == 0) {
        swal("Mensaje", "Seleccione un rol", "warning")
        return;
    }
    //OBTENER PERMISOS
    jQuery.ajax({
        url: $.MisUrls.url._ObtenerPermisos + "?id=" + $("#cboRol").val(),
        type: "GET",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            $(".card-load").LoadingOverlay("hide");

            $("#tbpermiso tbody").html("");

            if (data != undefined) {
                $.each(data, function (i, row) {
                    $("<tr>").append(
                        $("<td>").text(i + 1),
                        $("<td>").append(
                            $("<input>").attr({ "type": "checkbox" }).data("IdPermiso", row.IdPermisos).prop('checked', row.Activo)
                        ),
                        $("<td>").text(row.Menu),
                        $("<td>").text(row.SubMenu)
                    ).appendTo("#tbpermiso tbody");

                })

            }
        },
        error: function (error) {

        },
        beforeSend: function () {

            $(".card-load").LoadingOverlay("show");

        },
    });


}


function Guardar() {

    if ($("#cboRol").val() == 0) {
        swal("Mensaje", "Seleccione un rol", "warning")
        return;
    }
    if ($("#tbpermiso tbody tr").length == 0) {
        swal("Mensaje", "No hay datos", "warning")
        return;
    }


    var $xml = "<DETALLE>"
    var permiso = "";
    $('input[type="checkbox"]').each(function () {
        var idpermiso = $(this).data("IdPermiso").toString();
        var activo = $(this).prop("checked") == true ? "1" : "0";


        permiso = permiso + "<PERMISO><IdPermisos>" + idpermiso + "</IdPermisos><Activo>" + activo + "</Activo></PERMISO>";

    });
    $xml = $xml + permiso;
    $xml = $xml + "</DETALLE>"

    var request = { xml: $xml };

    jQuery.ajax({
        url: $.MisUrls.url._GuardarPermisos,
        type: "POST",
        data: JSON.stringify(request),
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            $(".card-load").LoadingOverlay("hide");

            if (data.resultado) {
                $("#cboRol").val(0);
                $("#tbpermiso tbody").html("");
            } else {

                swal("Mensaje", "No se pudo guardar los cambios", "warning")
            }
        },
        error: function (error) {
            console.log(error)
        },
        beforeSend: function () {
            $(".card-load").LoadingOverlay("show");
        },
    });
}

