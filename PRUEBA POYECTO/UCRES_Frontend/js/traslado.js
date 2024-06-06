let mensajes = document.querySelector("#mensajes");
let tablaTraslados = document.querySelector("#tablaTraslados");
let urlTraslado = "https://localhost:7192/Traslados/";
let urlEstudiantes = "https://localhost:7192/Estudiantes/";
let insertar = "Agregar";
let Listado = "Listado";
let Eliminar = "Eliminar";
let Modificar = "Modificar";
let traslados = [];
let nombrePagina = document.title;
let listaTraslados = "Listar Traslados";
// Variable global para el modal
let modalEliminar;

let spinner = `
            <button
            class="btn btn-primary"
            type="button"
            disabled
            >
            <span
                class="spinner-border spinner-border-sm"
                role="status"
                aria-hidden="true"
            ></span>
            Cargando...
            </button>`;

function mostrarMensaje(mensaje, tipo) {
    const mensajes = document.getElementById('mensajes');
    mensajes.innerHTML = `
        <div class="alert alert-${tipo} alert-dismissible fade show" role="alert">
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            <strong>${mensaje}</strong>
        </div>`;
    setTimeout(() => {
        mensajes.innerHTML = '';
    }, 5000); // Elimina el mensaje después de 5 segundos
}

function cargarspinner() {
    document.getElementById("seccionspinner").innerHTML = spinner;
}

async function cargarTraslados() {
    const tablaTraslados = document.getElementById('tablaTraslados');
    tablaTraslados.innerHTML = "";
    cargarspinner();

    try {
        const response = await fetch(urlTraslado + Listado);
        if (!response.ok) {
            throw new Error(`Network response was not ok: ${response.statusText} (status: ${response.status})`);
        }
        const datosRespuesta = await response.json();
        traslados = datosRespuesta; // Almacena los datos originales

        // Cargar los detalles de los estudiantes para cada traslado
        const estudiantesPromises = traslados.map(traslado =>
            fetch(urlEstudiantes + traslado.idEstudiante).then(res => res.json())
        );
        const estudiantes = await Promise.all(estudiantesPromises);

        // Combinar los datos de traslados y estudiantes
        const trasladosConEstudiantes = traslados.map((traslado, index) => ({
            ...traslado,
            cedula: estudiantes[index].cedula,
            carnetEstudiante: estudiantes[index].carnetEstudiante
        }));

        traslados = trasladosConEstudiantes; // Actualizar la variable global traslados con los datos combinados

        pintarTraslados(traslados);
    } catch (error) {
        console.error('Hubo un problema con OBTENER los datos:', error);
        mostrarMensaje('Error al cargar los datos: ' + error.message, 'danger');
    }
}

function pintarTraslados(objetodatos) {
    const tablaGrupos = document.getElementById('tablaTraslados');
    tablaGrupos.innerHTML = ""; // Limpia la tabla antes de renderizar los datos

    if (Array.isArray(objetodatos)) {
        for (const item of objetodatos) {
            tablaGrupos.innerHTML += `
            <tr id="fila-traslado-${item.idTraslado}" class="table-primary">
                <td scope="row">${item.idTraslado}</td>
                <td>${item.idEstudiante}</td>
                <td>${item.cedula}</td>
                <td>${item.carnetEstudiante}</td>
                <td>${item.lugarResidencia}</td>
                <td>${item.lugarDeTraslado}</td>
                <td>${item.motivoTraslado}</td>
                <td>
                <a name="" id="" class="btn btn-primary no-effect" onclick="editarTraslado('${encodeURIComponent(JSON.stringify(item))}')" role="button">Editar</a>
                <!--<a name="" id="" class="btn btn-danger no-effect" onclick="eliminarTraslado('${item.idTraslado}')" role="button">Eliminar</a> -->
            </td>
            </tr>`;
        }
        //comente el boton de eliminar
    } else {
        mostrarMensaje('Error: El objeto de datos no es un arreglo.', 'danger');
    }
    document.getElementById("seccionspinner").innerHTML = "";
}

function eliminarTraslado(id) {
    modalEliminar = new bootstrap.Modal(document.getElementById("modalEliminar"));
    modalEliminar.show();
    document.getElementById("idEliminar").innerHTML = id;
    document.getElementById("idEliminarModal").value = id;
}

function modalConfirmacionEliminarTraslado() {
    let id = parseInt(document.getElementById("idEliminarModal").value);

    alert("Eliminando el traslado...");

    fetch(urlTraslado + Eliminar, {
        method: 'POST',
        body: JSON.stringify({ id: id }),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.exito === true) {
            mostrarMensaje("El traslado ha sido eliminado correctamente.", 'success');
            modalEliminar.hide();
            setTimeout(() => {
                cargarTraslados();
            }, 3000);
        } else {
            mostrarMensaje("Hubo un error al eliminar el traslado.", 'warning');
        }
    })
    .catch(error => {
        console.error('Error al eliminar el traslado:', error);
        mostrarMensaje("Hubo un error al eliminar el traslado.", 'danger');
    });
}

function editarTraslado(datos) {
    let objeto = JSON.parse(decodeURIComponent(datos));

    const modalEdicion = new bootstrap.Modal(document.getElementById("modalEdicion"));
    modalEdicion.show();

    document.getElementById("idTraslado").value = objeto.idTraslado;
    document.getElementById("idEstudiante").value = objeto.idEstudiante;
    document.getElementById("lugarResidencia").value = objeto.lugarResidencia;
    document.getElementById("lugarDeTraslado").value = objeto.lugarDeTraslado;
    document.getElementById("motivoTraslado").value = objeto.motivoTraslado;
    document.getElementById("idEditarTraslado").innerHTML = objeto.idTraslado;
}

document.getElementById('formularioEditarTraslado').addEventListener('submit', function (evento) {
    evento.preventDefault();

    let datos = new FormData(document.getElementById('formularioEditarTraslado'));

    let datosEnviar = {
        idTraslado: datos.get('idTraslado'),
        idEstudiante: datos.get('idEstudiante'),
        lugarResidencia: datos.get('lugarResidencia'),
        lugarDeTraslado: datos.get('lugarDeTraslado'),
        motivoTraslado: datos.get('motivoTraslado')
    };

    console.log(JSON.stringify(datosEnviar));

    fetch(urlTraslado + Modificar, {
        method: 'POST',
        body: JSON.stringify(datosEnviar),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(respuesta => respuesta.json())
    .then((datosrepuestas) => {
        if (datosrepuestas.exito === true) {
            mostrarMensaje("Modificación exitosa.", 'success');
            setTimeout(() => {
                cargarTraslados();
                window.location.href = "ListaTraslados.html";
            }, 500);
        } else {
            mostrarMensaje("Algo falló.", 'warning');
        }
    })
    .catch(console.log);
});

function filtrarTraslados() {
    const searchTerm = document.getElementById('searchBar').value.toLowerCase();
    console.log(traslados);

    // Filtrar los traslados según el término de búsqueda
    const trasladosFiltrados = traslados.filter(traslado => 
        (traslado.carnetEstudiante && traslado.carnetEstudiante.toLowerCase().includes(searchTerm)) ||
        (traslado.cedula && traslado.cedula.toLowerCase().includes(searchTerm))
    );

    // Pintar los traslados filtrados
    pintarTraslados(trasladosFiltrados);
}

cargarTraslados();
