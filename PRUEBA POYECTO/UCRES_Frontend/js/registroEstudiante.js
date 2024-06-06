let mensajes = document.querySelector("#mensajes");
let tablaRegistroEstudiantes = document.querySelector("#tablaRegistroEstudiantes");
let urlRegistro = "https://localhost:7192/RegistroEstudiantes/";
let urlEstudiantes = "https://localhost:7192/Estudiantes/";
let insertar = "Agregar";
let Listado = "Listado";
let Eliminar = "Eliminar";
let Modificar = "Modificar";
let registrosEstudiantes = [];
let nombrePagina = document.title;
let listaRegistro = "Listar Registros";
// Variable global para el modal
let modalEliminar;

let spinner = `
    <button class="btn btn-primary" type="button" disabled>
        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
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

// Función para cargar el spinner
function cargarspinner() {
    document.getElementById("seccionspinner").innerHTML = spinner;
}

async function obtenerSede(idCarrera) {
    const urlSede = `https://localhost:7192/RegistroEstudiantes/sedeXCarrera?idCarrera=${idCarrera}`;
    try {
        const response = await fetch(urlSede);
        if (!response.ok) {
            throw new Error(`Network response was not ok: ${response.statusText} (status: ${response.status})`);
        }
        const data = await response.json();
        if (Array.isArray(data) && data.length > 0) {
            return data[0].nombreSede || 'N/A'; // Retorna el nombre de la sede del primer objeto del array o 'N/A'
        }
        return 'N/A'; // Retorna 'N/A' si el array está vacío
    } catch (error) {
        console.error('Error al obtener la sede:', error);
        return 'N/A'; // En caso de error, retorna 'N/A'
    }
}

/*LISTADO DE Registro de ESTUDIANTES */
async function cargarRegistroEstudiantes() {
    const tablaRegistroEstudiantes = document.getElementById('tablaRegistroEstudiantes');
    tablaRegistroEstudiantes.innerHTML = "";
    cargarspinner();

    try {
        const registrosResponse = await fetch(urlRegistro + Listado);
        if (!registrosResponse.ok) {
            throw new Error(`Network response was not ok: ${registrosResponse.statusText} (status: ${registrosResponse.status})`);
        }
        const registrosDatos = await registrosResponse.json();
        registrosEstudiantes = registrosDatos; // Almacena los datos originales

        const estudiantesResponse = await fetch(urlEstudiantes + Listado);
        if (!estudiantesResponse.ok) {
            throw new Error(`Network response was not ok: ${estudiantesResponse.statusText} (status: ${estudiantesResponse.status})`);
        }
        const estudiantesDatos = await estudiantesResponse.json();

        // Obtener la sede matriculada y otros datos adicionales para cada registro
        for (const registro of registrosEstudiantes) {
            const estudiante = estudiantesDatos.find(est => est.idEstudiante === registro.idEstudiante);
            if (estudiante) {
                registro.carnetEstudiante = estudiante.carnetEstudiante || 'N/A';
                registro.numeroCedula = estudiante.cedula || 'N/A';
                registro.nombre = estudiante.nombre || 'N/A';
                registro.correo = estudiante.correo || 'N/A';
                registro.residencia = estudiante.residencia || 'N/A';
                registro.telefono = estudiante.telefono || 'N/A';
            } else {
                registro.carnetEstudiante = 'N/A';
                registro.numeroCedula = 'N/A';
                registro.nombre = 'N/A';
                registro.correo = 'N/A';
                registro.residencia = 'N/A';
                registro.telefono = 'N/A';
            }
            registro.sedeMatriculada = await obtenerSede(registro.idCarrera); // Obtener la sede usando la nueva función
        }

        pintarRegistroEstudiantes(registrosEstudiantes);
    } catch (error) {
        console.error('Hubo un problema con OBTENER los datos:', error);
        mostrarMensaje('Error al cargar los datos: ' + error.message, 'danger');
    }
}

function pintarRegistroEstudiantes(objetodatos) {
    const tablaGrupos = document.getElementById('tablaRegistroEstudiantes');
    tablaGrupos.innerHTML = ""; // Limpia la tabla antes de renderizar los datos

    if (Array.isArray(objetodatos)) {
        for (const item of objetodatos) {
            tablaGrupos.innerHTML += `
            <tr id="fila-registro-${item.idRegistro}" class="table-primary">
                <td scope="row">${item.idRegistro}</td>
                <td>${item.idEstudiante}</td>
                <td>${item.nombre}</td>
                <td>${item.numeroCedula}</td>
                <td>${item.carnetEstudiante}</td>
                <td>${item.idCarrera}</td>
                <td>${item.año}</td>
                <td>${item.correo}</td>
                <td>${item.residencia}</td>
                <td>${item.telefono}</td>
                <td>${item.carreraDeseada}</td>
                <td>${item.sedeMatriculada}</td>
                <td class="estado">${item.estado}</td>
                <td>
                <a name="" id="" class="btn btn-primary no-effect" onclick="editarRegistroEstudiante('${encodeURIComponent(JSON.stringify(item))}')" role="button">Editar</a>
                <a name="" id="" class="btn btn-danger no-effect" onclick="eliminarRegistroEstudiante('${item.idRegistro}')" role="button">Eliminar</a>
            </td>
            </tr>`;
        }
    } else {
        mostrarMensaje('Error: El objeto de datos no es un arreglo.', 'danger');
    }
    document.getElementById("seccionspinner").innerHTML = "";
}

/*ELIMINAR REGISTRO ESTUDIANTE */
// Función para abrir el modal de eliminación de registro de estudiante
function eliminarRegistroEstudiante(id) {
    const fila = document.querySelector(`#fila-registro-${id}`);
    const estado = fila.querySelector('.estado').textContent.trim();

    if (estado === "Inactivo") {
        mostrarMensaje("El redistro de ese estudiante ya está inactivo.", 'warning');
        return;
    }

    modalEliminar = new bootstrap.Modal(document.getElementById("modalEliminar"));
    modalEliminar.show();
    document.getElementById("idEliminar").innerHTML = id;
    document.getElementById("idEliminarModal").value = id;
}

function modalConfirmacionEliminarRegistroEstudiante() {
    let id = parseInt(document.getElementById("idEliminarModal").value);

    // Mostrar alerta antes de la eliminación
    alert("Eliminando el registro de estudiante...");

    fetch(urlRegistro + Eliminar, {
        method: 'POST',
        body: JSON.stringify({ id: id }),
        headers: {
            'Content-Type': 'application/json'
        }
    })
        .then(response => response.json())
        .then(data => {
            if (data.exito === true) {
                // Eliminación exitosa
                mostrarMensaje("El registro de estudiante ha sido eliminado correctamente.", 'success');
                modalEliminar.hide(); // Cerrar el modal
                setTimeout(() => {
                    cargarRegistroEstudiantes(); // Actualizar la lista después de eliminar
                }, 3000);
            } else {
                // Manejar el error
                mostrarMensaje("Hubo un error al eliminar el registro de estudiante.", 'warning');
            }
        })
        .catch(error => {
            console.error('Error al eliminar el registro de estudiante:', error);
            mostrarMensaje("Hubo un error al eliminar el registro de estudiante.", 'danger');
        });
}

// Función para abrir el modal de edición de registro de estudiante
function editarRegistroEstudiante(datos) {
    let objeto = JSON.parse(decodeURIComponent(datos));

    const modalEdicion = new bootstrap.Modal(document.getElementById("modalEdicion"));
    modalEdicion.show();

    document.getElementById("idRegistro").value = objeto.idRegistro;
    document.getElementById("idEstudiante").value = objeto.idEstudiante;
    document.getElementById("idCarrera").value = objeto.idCarrera;
    document.getElementById("año").value = objeto.año;
    document.getElementById("carreraDeseada").value = objeto.carreraDeseada;
    document.getElementById("estado").value = objeto.estado;
    document.getElementById("idEditarRegistro").innerHTML = objeto.idRegistro;
}

document.getElementById('formularioEditarRegistroEstudiante').addEventListener('submit', function (evento) {
    evento.preventDefault(); // evita la recarga de la pagina

    let datos = new FormData(document.getElementById('formularioEditarRegistroEstudiante'));

    let datosEnviar = {
        idRegistro: datos.get('idRegistro'),
        idEstudiante: datos.get('idEstudiante'),
        idCarrera: datos.get('idCarrera'),
        año: datos.get('año'),
        carreraDeseada: datos.get('carreraDeseada'),
        estado: datos.get('estado')
    };

    console.log(JSON.stringify(datosEnviar));

    fetch(urlRegistro + Modificar, {
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
                    cargarRegistroEstudiantes();
                    window.location.href = "ListaMatriculas.html";
                }, 500);
            } else {
                mostrarMensaje("Algo falló.", 'warning');
            }
        })
        .catch(console.log);
});

/**BUSCAR */
function filtrarRegistrosEstudiantes() {
    const searchTerm = document.getElementById('searchBar').value.toLowerCase();
    const estudiantesFiltrados = registrosEstudiantes.filter(registro =>
        (registro.carnetEstudiante && registro.carnetEstudiante.toLowerCase().includes(searchTerm)) ||
        (registro.numeroCedula && registro.numeroCedula.toString().toLowerCase().includes(searchTerm))
    );
    pintarRegistroEstudiantes(estudiantesFiltrados);
}

cargarRegistroEstudiantes();
