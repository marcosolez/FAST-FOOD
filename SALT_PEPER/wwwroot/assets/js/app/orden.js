
let ListOrdenesJSON = [];
let ListOrdenesJSONServer = [];
let Tipo = "Todas";

$(document).ready(function () {

    ListarOrdenesServer();
    $(".select2").select2();

   
    $("#FKPLATILLO").change(function () {
        const id = Number($(this).val());
        BuscarPlatilloSeleccionado(id);
    });

    $("#btnAddOrden").click(function () {
        VerificaExisteIngredienteInventario();
    })

    $("#btnCancelarOrden").click(function (e) {
        CancelarOrden();
    });

    $("#txtGuardarOrden").click(function (e) {
        guardarOrden();
    });

    $("#txtNombreCliente").keyup(function (e) {
        $("#txtNombreCliente").removeClass("parsley-error");
    });
    $("#FECHASTRING").change(function(e){
        verOrdenes(Tipo);
    });
 

});

function colapseDetalles(id) {    
    $(`#collapseExample${id}`).collapse("toggle")
}

function VerificaExisteIngredienteInventario() {
    if ($("#FKPLATILLO").val() === "") {
        lanzaNotificacion("Seleccione una orden", "Falta información");
        return;
    }

    if (VerificaSiExisteIngrediente(Number($("#FKPLATILLO").val()))) {
        lanzaNotificacion("La orden ya existe");
        return;
    }
    console.log("Platillo: ", Number($("#FKPLATILLO").val()))
    $.getJSON(`Factura/VerificaExistenciaIngredientes?pk=${Number($("#FKPLATILLO").val())}&cant=${Number($("#txtCantidad").val())}`).then(function (data) {
       
        if (data.length === 0) {
            AgregarOrden();
        } else {
            let mensaje = "La cantidad en inventario de los siguientes ingredientes, no son suficientes para preparar este platillo: [";

            for (var i = 0; i < data.length; i++) {
                if (i>0) {
                    mensaje +=" , " + data[i];
                }else
                mensaje += data[i];
            }
            mensaje += "]";

            Swal.fire(
                'Inventario insufienciente',
                 mensaje,
                'error'
            );
        }
    });

   
}

function ListarOrdenesServer() {
    $.getJSON(`Factura/ListarOrdenes`).then(function (data) {
        if (data.length === 0) {
           
        } else {
            $("#divBackGround").hide();
            ListOrdenesJSONServer = data;
            generaTarjetasOrdenes(ListOrdenesJSONServer)
        }
       
    });
}

function guardarOrden() {

    $("#txtNombreCliente").removeClass("parsley-error");

    if ($("#txtNombreCliente").val() === "") {
        lanzaNotificacion("Debe de escribir el nombre del cliente");
        $("#txtNombreCliente").addClass("parsley-error");
        return;
    }
    if (ListOrdenesJSON.length===0) {
        lanzaNotificacion("Agrege al menos una orden");
        return;
    }

    Swal.fire({
        title: "Confirmar",
        text: "¿Está seguro que desea generar esta orden?",
        icon: "warning",
        showCancelButton: !0,
        confirmButtonColor: "#5f33b6",
        cancelButtonColor: "#bdb7c8",
        confirmButtonText: "Si, generar",
        cancelButtonText: "Cancelar"
    }).then(function (t) {
        if (t.isConfirmed) {
            Guardar();
        }
    });


}

function AgregarOrden() {


    const encontrado = JSONPlatillos.filter(x => x.pk === Number($("#FKPLATILLO").val()));
    const platillo = encontrado[0];

    const obj = {
        FKPLATILLO: Number($("#FKPLATILLO").val()),
        PLATILLO: $("#FKPLATILLO option:selected").text(),
        PRECIO: Number(platillo.precio),
        CANTIDAD: Number($("#txtCantidad").val()),
        SUBTOTAL: Number(platillo.precio) * Number($("#txtCantidad").val()),
        IMAGEN: platillo.imagen
    };
    ListOrdenesJSON.push(obj);
    CrearFilasOrdenes();

    $("#lblCantidad").text("");
    $("#lblPrecio").text("");
    $("#lblSubtotal").text("");
    $('#FKPLATILLO').val(''); //add this line
    $('#txtCantidad').val('1'); //add this line
    $(".select2").select2();
}

function CrearFilasOrdenes() {
    $("#bodyOrdenes").html("");
    let html = "";
    let cont = 0;
    ListOrdenesJSON.forEach(x => {
        cont++;
        html += ` <tr>
                         <td style="width: 45px;">
                              <div class="avatar-sm">
                                   <img id="img${cont}" alt="${x.PLATILLO}" class="img-thumbnail rounded-circle" />
                              </div>
                         </td>
                         <td>
                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">${x.PLATILLO}</a></h5>
                            <strong>Precio: ${x.PRECIO} - Cantidad: ${x.CANTIDAD} - Subtotal: ${x.SUBTOTAL}</strong>
                         </td>
                         <td>
                              <div class="text-center">                                  
                                  <i onclick="UpPlatillo(${x.FKPLATILLO})" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Aumentar" class="fas fa-arrow-alt-circle-up subir  h3 m-0"  style="cursor:pointer" ></i>
                                  <i onclick="DownPlatillo(${x.FKPLATILLO})" class="fas fa-arrow-alt-circle-down bajar h3 m-0"  style="cursor:pointer" ></i> | 
                                  <i onclick="deletePlatillo(${x.FKPLATILLO})" class="bx bx-trash h3 m-0"  style="cursor:pointer"></i>
                              </div>
                         </td>
                   </tr>`;
      
    });
    
    $("#bodyOrdenes").html(html);

    let cont2 = 0;
    let sumaTotal = 0;
    ListOrdenesJSON.forEach(x => {
        cont2++;
        $(`#img${cont2}`).attr("src", `images/${x.IMAGEN}`);
        sumaTotal += x.SUBTOTAL;
    });

    const foot = ` <tr><td class="text-center" colspan="3"><h5> Total a pagar: C$ ${sumaTotal} </h5></td></tr>`;
    $("#footerOrdenes").html(foot)
}

function UpPlatillo(id) {
    ListOrdenesJSON.map(function (dato) {
        if (dato.FKPLATILLO == id) {
            dato.CANTIDAD = dato.CANTIDAD + 1;
            dato.SUBTOTAL = dato.CANTIDAD * dato.PRECIO ;
        }
        return dato;
    });

    CrearFilasOrdenes()
}

function DownPlatillo(id) {
    ListOrdenesJSON.map(function (dato) {
        if (dato.FKPLATILLO == id) {

            if (dato.CANTIDAD === 1) {
                return;
            }

            dato.CANTIDAD = dato.CANTIDAD - 1;
            dato.SUBTOTAL = dato.CANTIDAD * dato.PRECIO;
        }
        return dato;
    });

    CrearFilasOrdenes()
}

function CancelarOrden() {
    if (ListOrdenesJSON.length === 0) {
        $("#modalOrdenes").modal("hide");
        return;
    }

    Swal.fire({
        title: "Hay órdenes ingresadas",
        text: "¿Está seguro que desea cancelar esta orden?",
        icon: "warning",
        showCancelButton: !0,
        confirmButtonColor: "#5f33b6",
        cancelButtonColor: "#bdb7c8",
        confirmButtonText: "Si, cancelar",
        cancelButtonText: "Cancelar"
    }).then(function (t) {
        if (t.isConfirmed) {          
            ListOrdenesJSON = [];
            CrearFilasOrdenes();
            $("#modalOrdenes").modal("hide");
            $("#txtNombreCliente").val("");
        }
    });



}

function deletePlatillo(id) {

  
    Swal.fire({
        title: "Eliminar registro",
        text: "¿Está seguro que desea eliminar esta orden?",
        icon: "warning",
        showCancelButton: !0,
        confirmButtonColor: "#5f33b6",
        cancelButtonColor: "#bdb7c8",
        confirmButtonText: "Si, eliminar",
        cancelButtonText: "Cancelar"
    }).then(function (t) {
        if (t.isConfirmed) {
            const filtrado = ListOrdenesJSON.filter(function (el) { return el.FKPLATILLO != id; });
            ListOrdenesJSON = filtrado;
            CrearFilasOrdenes();
        }
    });

}

function BuscarPlatilloSeleccionado(id) {
    const encontrado = JSONPlatillos.filter(x => x.pk === id);
    const model = encontrado[0];

    const subTotal = Number($("#txtCantidad").val()) * Number(model.precio)
    $("#lblPrecio").text(model.precio)
    $("#lblCantidad").text($("#txtCantidad").val());

    $("#lblSubtotal").text(subTotal);

    $("#imgPlatillo").attr("src", `images/${model.imagen}`);

    

}

function VerificaSiExisteIngrediente(id) {

    const existe = ListOrdenesJSON.find(x => x.FKPLATILLO === id);
    if (existe)
        return true;

    return false;
}

function updateQuantity(valor) {
  
    if ($("#FKPLATILLO").val() === "")
        return;
  
    let precio = Number($("#lblPrecio").text());
    let valorActual = Number($("#txtCantidad").val());
    if (valorActual === 1 && valor === -1) {
        return;
    } else if (valor === 1) {
        valorActual++;
    } else {
        valorActual--;
    }

    const subtotal = precio * valorActual;

    $("#lblCantidad").text(valorActual);
    $("#txtCantidad").val(valorActual);
    $("#lblSubtotal").text(subtotal);

}

$("#btnNueva").click(function (e) {

    $("#FECHASTRING").val($("#txtFechaOculta").val());

 
});

$("#txtBuscarPorCliente").keyup(function (e) {

    let a = ["foo", "fool", "cool", "god"];
    var term = $(this).val(); // search term (regex pattern)
    var search = new RegExp(term, 'i'); // prepare a regex object
    let resultado = ListOrdenesJSONServer.filter(item => search.test(item.nombrecliente));

    generaTarjetasOrdenes(resultado);
  
});

function lanzaNotificacion(mensaje) {
    $("#txtMensaje").text(mensaje);
    $("#divMensaje").fadeIn();
    setTimeout(function (e) {
        $("#divMensaje").fadeOut();
    }, 2000);
}

function anularOrden(id) {
    Swal.fire({
        title: "Anulación de orden",
        text: "¿Está seguro que desea anular esta orden?",
        icon: "warning",
        showCancelButton: !0,
        confirmButtonColor: "#5f33b6",
        cancelButtonColor: "#bdb7c8",
        confirmButtonText: "Si, anular",
        cancelButtonText: "Cancelar"
    }).then(function (t) {
        if (t.isConfirmed) {
            AnularFinalizarOrden(id,"Anular")
       
        }
    });
}

function finalizarOrden(id, tipo) {
  

    if (tipo === "Finalizada" || tipo==="Anulada")
        return;

    Swal.fire({
        title: "Finalizar orden",
        text: "¿Está seguro que desea dar por entregada esta orden?",
        icon: "warning",
        showCancelButton: !0,
        confirmButtonColor: "#5f33b6",
        cancelButtonColor: "#bdb7c8",
        confirmButtonText: "Si, entregar",
        cancelButtonText: "Cancelar"
    }).then(function (t) {
        if (t.isConfirmed) {
            AnularFinalizarOrden(id, "Finalizar")
           
        }
    });
}

function generaTarjetasOrdenes(arreglo) {

   
    let htmlRaw = "";
    let contOrden = 0;
    $("#divListOrdenes").hide();
    $("#divListOrdenes").html("");


    //Creando para Ordenes
    arreglo.forEach(x => {
        contOrden++;
       
        htmlRaw += `
                      <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-4">
                                                <div class="avatar-md">
                                                  
                                                        <img id="imgOrden${contOrden}" alt="" height="70" class="rounded-circle">
                                                    
                                                </div>
                                            </div>


                                            <div class="flex-grow-1 overflow-hidden">
                                                <h4 class="text-truncate font-size-15"><a href="javascript: void(0);" class="text-dark">${x.nombrecliente}</a></h4>
                                                 <strong class="text-muted mb-4">Nº Orden: ${x.pk}</strong>
                                                <span class="badge bg-dark float-end p-2">Estado: ${x.estadoorden}</span>
                                                <div id="divOrden${contOrden}" class="avatar-group">                                                   
                                                </div>
                                               
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <button class="btn btn-info btn-rounded btn-sm float-start mr-2" onclick="colapseDetalles(${contOrden})">
                                             <i class="far fa-eye"></i> Detalles
                                            </button>
                                            ${(x.estadoorden === "Creada") ?
                                                `<button onclick="anularOrden(${x.pk})" class="btn btn-danger btn-rounded btn-sm text-center mr-2">
                                                <i class="far fa-times-circle"></i> Anular
                                            </button>`:""}
                                            <button onclick="finalizarOrden(${x.pk},'${x.estadoorden}')" class="btn ${(x.estadoorden === "Creada") ? " btn-primary" : " btn-secondary"} btn-rounded btn-sm float-end " data-toggle="collapse" data-target="#collapseExample${contOrden}">
                                               <i class="bx bxs-check-circle "></i>  ${(x.estadoorden === "Creada") ? "Finalizar" : `${x.estadoorden}`}
                                            </button>
                                     
                                        </div>

                                        
                                    </div>

                                        <div class="collapse" id="collapseExample${contOrden}">
                                                <hr/>
                                                <ul id="detColDiv${contOrden}" class="verti-timeline list-unstyled p-2">
                                                </ul>                                           
                                        </div>

                                    <div class="px-4 py-3 border-top">
                                        <ul class="list-inline mb-0">
                                            <li class="list-inline-item me-3">
                                                <span class="badge bg-success">${x.estadoorden}</span>
                                            </li>
                                            <li class="list-inline-item me-3">
                                                <i class= "bx bx-calendar me-1"></i> ${x.fechastring}
                                            </li>
                                            <li class="list-inline-item ">
                                                <i class= "bx bx-money -dots me-1"></i> SubTotal: C$ ${x.subtotal}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                 `;
    });
  

    //Creando para detalles de Ordenes
    $("#divListOrdenes").html(htmlRaw);
    $("#divListOrdenes").fadeIn();
    
    contOrden = 0;
    let contOrdenDetail = 0;
    let htmlRawDetail = "";
    let detallesColapse = "";
    arreglo.forEach(detail => {
        contOrden++;
        const model = detail.ordenes[0];
        $(`#imgOrden${contOrden}`).attr("src", `images/${model.imagen}`);

        detallesColapse = "";
        detail.ordenes.forEach(item => {
            contOrdenDetail++;
            htmlRawDetail += `
                              <div class="avatar-group-item">
                                    <a href="javascript: void(0);" class="d-inline-block">
                                           <img id="imgDetail${contOrdenDetail}" src="assets/images/users/avatar-1.jpg" alt="" class="rounded-circle avatar-xs">
                                     </a>
                               </div>
                               
                        `;
            detallesColapse += `
                             <li class="event-list p-1">
                                    <div class="event-timeline-dot">
                                        <i class="fas fa-utensils font-size-18"></i>
                                    </div>
                                    <div class="d-flex">
                                        <div class="flex-shrink-0">
                                            <h5 class="font-size-14"><i class="bx bx-right-arrow-alt font-size-16 text-primary align-middle ms-2"></i></h5>
                                        </div>
                                        <div class="flex-grow-1">
                                            <div>
                                                ${item.platillo} <span class="fw-semibold float-end"> <span class="badge bg-success">Cant: ${item.cantidad}</span> - C$${item.subtotal}</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            `;

        });
        $(`#detColDiv${contOrden}`).html(detallesColapse);
      
        $(`#divOrden${contOrden}`).html(htmlRawDetail);
        htmlRawDetail = "";
       
    });
    contOrdenDetail = 0;
    arreglo.forEach(detail => {
        detail.ordenes.forEach(item => {
            contOrdenDetail++;
            $(`#imgDetail${contOrdenDetail}`).attr("src", `images/${item.imagen}`);
        });
    });

}

function verOrdenes(tipo) {

    Tipo = tipo;

    $.getJSON(`Factura/GetOrdenesByTipos?tipo=${tipo}&fecha=${$("#FECHASTRING").val()}`).then(function (data) {
        if (data.length === 0) {
            $("#divListOrdenes").html("");
            $("#divBackGround").fadeIn();
        } else {
            $("#divBackGround").hide();
            ListOrdenesJSONServer = data;
            generaTarjetasOrdenes(ListOrdenesJSONServer)
        }
    });
}

function Guardar() {

    const obj = {
        PK: Number($("#PK").val()),//
        NOMBRECLIENTE: $("#txtNombreCliente").val(),
        USERNAME: "LARIX",       
        ESTADOORDEN: "Creada",
        ANULADO: false,
        SUBTOTAL:0,
        ORDENES: ListOrdenesJSON
    };
 

    $.ajax({
        url: '/Factura/GuardarOrden',
        type: 'POST',
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        data: JSON.stringify(obj),
        success: function (resp) {
            if (resp.data) {
                Swal.fire(
                    'Registro guardado satisfactoriamente',
                    '',
                    'success'
                ).then(function (x) {
                    ListOrdenesJSON = [];
                    CrearFilasOrdenes();
                    $("#modalOrdenes").modal("hide");
                    $("#txtNombreCliente").val("");
                    ListarOrdenesServer();
                });
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            Swal.fire(
                'Error al guardar el registro',
                '',
                'error'
            )
        },
        complete: function (e) {

        }
    });

}

function AnularFinalizarOrden(pk, tipo) {

    $.getJSON(`Factura/AnularFinalizarOrden?pk=${pk}&tipo=${tipo}`).then(function (data) {
        if (data) {     
            ListarOrdenesServer();
        }

    });
}