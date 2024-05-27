// Propiedades
let mensajes = document.querySelector("#mensajes");
let tablaEstudiantes = document.querySelector("#tablaEstudiantes");

let urlEstudiantes = "https://localhost:7192/Estudiantes/";
let urlRegistroEstudiantes = "https://localhost:7192/RegistroEstudiantes/";
let urlTraslado = "https://localhost:7192/Traslados/";

let insertar = "Agregar";
let Listado = "Listado";
let Eliminar = "Eliminar";
let Modificar = "Modificar";
let formulario = document.getElementById("formulario");
let nombrePagina = document.title;
let estudiantes = [];
let crearPagina = "Crear Estudiantes";
let listaEstudiante = "Listar Estudiantes";

let modalEliminar;
let modalEdicion;

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


// Manejar la visibilidad de los campos de traslado y atributos 'required'
if (nombrePagina == crearPagina) {
    function manejarVisibilidadTraslado() {
        var trasladoCheckbox = document.getElementById('trasladoCheckbox');
        var trasladoFields = document.getElementById('trasladoFields');

        trasladoCheckbox.addEventListener('change', function () {
            if (this.checked) {
                trasladoFields.style.display = 'block';
                // Añadir 'required' a los campos de traslado
                document.getElementById('lugarRecidencia').required = true;
                document.getElementById('lugarMatriculado').required = true;
                document.getElementById('motivoTraslado').required = true;
            } else {
                trasladoFields.style.display = 'none';
                // Quitar 'required' de los campos de traslado
                document.getElementById('lugarRecidencia').required = false;
                document.getElementById('lugarMatriculado').required = false;
                document.getElementById('motivoTraslado').required = false;
            }
        });
    }

    function llenarCampoCarrera() {
        const idCarrera = localStorage.getItem('idCarreraSeleccionada');
        const sedeSeleccionada = localStorage.getItem('nombreSedeSeleccionada')
        if (idCarrera !== null) {
            document.getElementById('idCarreras').value = idCarrera;
            document.getElementById('lugarMatriculado').value = sedeSeleccionada;
        }
    }

    document.addEventListener('DOMContentLoaded', function () {
        llenarCampoCarrera();
        document.getElementById('formulario').addEventListener('submit', function (event) {
            localStorage.removeItem('idCarreraSeleccionada');
            localStorage.removeItem('nombreSedeSeleccionada');
            localStorage.removeItem('lugarRecidencia');
        });
    });

    function llenarOpcionesSede(sedes, selectorId) {
        var select = document.getElementById(selectorId);
        // Limpiar opciones actuales
        select.innerHTML = "";

        // Añadir la opción predeterminada
        var defaultOption = document.createElement("option");
        defaultOption.value = "";
        defaultOption.textContent = "Selecciona una sede";
        defaultOption.disabled = true;
        defaultOption.selected = true;
        select.appendChild(defaultOption);

        // Añadir las opciones de sedes
        sedes.forEach(function (sede) {
            var option = document.createElement("option");
            option.value = sede.nombreSede;
            option.textContent = sede.nombreSede;
            select.appendChild(option);
        });

        // Verificar si hay un valor almacenado en localStorage y seleccionarlo si existe
        let sedeSeleccionada = localStorage.getItem(selectorId);
        if (sedeSeleccionada) {
            select.value = sedeSeleccionada;
        }
    }

    function obtenerSedes() {
        fetch('https://localhost:7192/Sedes/Listado')
            .then(response => response.json())
            .then(data => {
                llenarOpcionesSede(data, 'lugarRecidencia');
                //llenarOpcionesSede(data, 'lugarMatriculado');
            })
            .catch(error => console.error('Error al obtener las sedes:', error));
    }

    window.onload = function () {
        obtenerSedes();
    };
}
if (nombrePagina == crearPagina) {
    document.getElementById("lugarRecidencia").addEventListener("change", function () {
        localStorage.setItem('lugarRecidencia', this.value);
    });
}

if (nombrePagina == crearPagina) {
    formulario.addEventListener("submit", function (evento) {
        evento.preventDefault();

        let datos = new FormData(formulario);

        let datosEstudiantes = {
            nombre: datos.get('nombre'),
            cedula: datos.get('cedula'),
            carnetEstudiante: datos.get('carnetEstudiante'),
            correo: datos.get('correo'),
            recidencia: datos.get('recidencia'),
            telefono: datos.get('telefono'),
            estado: 'Activo'
        };
        console.log(datosEstudiantes)
        console.log(urlEstudiantes + insertar)

        fetch(urlEstudiantes + insertar, {
            method: 'POST',
            body: JSON.stringify(datosEstudiantes),
            headers: {
                'Content-Type': 'application/json'
            }
        })
            .then(response => response.json())
            .then(datosRespuesta => {
                if (datosRespuesta.exito) {
                    let idEstudiante = datosRespuesta.idEstudiante;
                    insertarRegistroEstudiantes(idEstudiante, datos);
                } else {
                    mostrarMensaje(datosRespuesta.Mensaje, 'warning');
                }
            })
            .catch(console.log);
    });
}

function insertarRegistroEstudiantes(idEstudiante, datos) {
    let anoMatricula = parseInt(datos.get('Año'));

    // Verificar que el año de matrícula sea mayor a 2020
    if (anoMatricula < 2020) {
        mostrarMensaje('El año de matrícula debe ser mayor a 2020', 'warning');
        return; // No continuar con la solicitud
    }

    let datosRegistro = {
        idEstudiante: idEstudiante,
        idCarrera: datos.get('idCarreras'),
        Año: anoMatricula,
        CarreraDeseada: datos.get('CarreraDeseada'),
        estado: 'Activo'
    };

    console.log(datosRegistro);
    console.log(urlRegistroEstudiantes + insertar);

    fetch(urlRegistroEstudiantes + insertar, {
        method: 'POST',
        body: JSON.stringify(datosRegistro),
        headers: {
            'Content-Type': 'application/json'
        }
    })
        .then(response => response.json())
        .then(datosRespuesta => {
            if (datosRespuesta.exito) {
                var trasladoCheckbox = document.getElementById('trasladoCheckbox');
                let idEstudiante = datosRespuesta.idEstudiante;
                if (trasladoCheckbox.checked) {
                    insertarTraslado(idEstudiante, datos);
                } else {
                    mostrarMensaje('Estudiante añadido exitosamente!', 'success');
                }
            } else {
                mostrarMensaje(datosRespuesta.Mensaje, 'warning');
            }
        })
        .catch(error => {
            console.log('There has been a problem with your fetch operation:', error);
            mostrarMensaje('Error al añadir el registro del estudiante: ' + error.message, 'danger');
        });
}

function insertarTraslado(idEstudiante, datos) {
    let lugarRecidencia = datos.get('lugarRecidencia');
    let lugarDeTraslado = datos.get('lugarMatriculado');

    // Verificar que el lugar de residencia y el lugar matriculado no sean el mismo
    if (lugarRecidencia === lugarDeTraslado) {
        mostrarMensaje('El lugar de residencia y el lugar matriculado no pueden ser el mismo', 'warning');
        return; // No continuar con la solicitud
    }

    let datosTraslado = {
        idEstudiante: idEstudiante,
        lugarRecidencia: lugarRecidencia,
        lugarDeTraslado: lugarDeTraslado,
        motivoTraslado: datos.get('motivoTraslado')
    };

    console.log('Datos enviados:', datosTraslado);
    console.log('URL de fetch:', urlTraslado + insertar); // Asegúrate de que la URL esté correcta

    fetch(urlTraslado + insertar, {
        method: 'POST',
        body: JSON.stringify(datosTraslado),
        headers: {
            'Content-Type': 'application/json'
        }
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json();
        })
        .then(datosRespuesta => {
            if (datosRespuesta.exito) {
                mostrarMensaje('Estudiante y traslado añadidos exitosamente!', 'success');
            } else {
                mostrarMensaje(datosRespuesta.Mensaje, 'warning');
            }
        })
        .catch(error => {
            console.error('There has been a problem with your fetch operation:', error);
            mostrarMensaje('Error al añadir el traslado: ' + error.message, 'danger');
        });
}

function mostrarMensaje(mensaje, tipo) {
    mensajes.innerHTML = `<div class="alert alert-${tipo} alert-dismissible fade show" role="alert">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        <strong>${mensaje}</strong>
    </div>`;
}

/*--------------------------------------AHORA LAS FUNCIONES PARA LA LISTA DE ESTUDIANTES---------------------------------------------------------------*/


//Metodos

function cargar() {
    const tablaEstudiantes = document.getElementById('tablaEstudiantes');
    tablaEstudiantes.innerHTML = "";
    cargarspinner();

    fetch(urlEstudiantes + Listado)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Network response was not ok: ${response.statusText} (status: ${response.status})`);
            }
            return response.json();
        })
        .then(datosRespuesta => {
            estudiantes = datosRespuesta; // Almacena los datos originales
            pintardatos(estudiantes);
        })
        .catch(error => {
            console.error('There has been a problem with your fetch operation:', error);
            mostrarMensaje('Error al cargar los datos: ' + error.message, 'danger');
        });
}

function pintardatos(objetodatos) {
    const tablaGrupos = document.getElementById('tablaEstudiantes');
    tablaGrupos.innerHTML = ""; // Limpia la tabla antes de renderizar los datos

    if (Array.isArray(objetodatos)) {
        for (const item of objetodatos) {
            tablaGrupos.innerHTML += `
            <tr id="fila-${item.idEstudiante}"  class="table-primary">
                <td data-label="ID" scope="row">${item.idEstudiante}</td>
                <td data-label="Nombre">${item.nombre}</td>
                <td data-label="Cédula">${item.cedula}</td>
                <td data-label="Carnet Estudiante">${item.carnetEstudiante}</td>
                <td data-label="Correo">${item.correo}</td>
                <td data-label="Residencia">${item.recidencia}</td>
                <td data-label="Teléfono">${item.telefono}</td>
                <td data-label="Estado" class="estado">${item.estado}</td>
                <td data-label="Acciones">
                <a name="" id="" class="btn btn-primary no-effect" onclick="editar('${encodeURIComponent(JSON.stringify(item))}')" role="button">Editar</a>
                <a name="" id="" class="btn btn-danger no-effect" onclick="eliminar('${item.idEstudiante}')" role="button">Eliminar</a>
            </td>
            </tr>`;
        }
    } else {
        mostrarMensaje('Error: El objeto de datos no es un arreglo.', 'danger');
    }
    document.getElementById("seccionspinner").innerHTML = "";
}

function filtrarEstudiantes() {
    const searchTerm = document.getElementById('searchBar').value.toLowerCase();
    const estudiantesFiltrados = estudiantes.filter(estudiante => estudiante.cedula.toLowerCase().includes(searchTerm));
    pintardatos(estudiantesFiltrados);
}

function mostrarMensaje(mensaje, tipo) {
    const mensajes = document.getElementById('mensajes');
    mensajes.innerHTML = `
        <div class="alert alert-${tipo}" role="alert">
            ${mensaje}
        </div>`;
    setTimeout(() => {
        mensajes.innerHTML = '';
    }, 5000); // Elimina el mensaje después de 5 segundos
}

function cargarspinner() {
    document.getElementById("seccionspinner").innerHTML = spinner;
}


/*METODO PARA MODIFICAR*/
if (nombrePagina == listaEstudiante) {

    formularioEditar.addEventListener("submit", function (evento) {
        evento.preventDefault(); // evita la recarga de la pagina

        let datos = new FormData(formularioEditar);

        let datosEnviar = {
            idEstudiante: datos.get('id'),
            nombre: datos.get('nombre'),
            cedula: datos.get('cedula'),
            carnetEstudiante: datos.get('carnetEstudiante'),
            correo: datos.get('correo'),
            recidencia: datos.get('recidencia'),
            telefono: datos.get('telefono'),
            estado: datos.get('estado'),
        };

        console.log(JSON.stringify(datosEnviar));

        fetch(urlEstudiantes + Modificar, {
            method: 'POST',
            body: JSON.stringify(datosEnviar),
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(respuesta => respuesta.json())
        .then((datosrepuestas) => {
            editarDatos(datosrepuestas);
        })
        .catch(console.log);
    });
}

function editar(datos) {
    let objeto = JSON.parse(decodeURIComponent(datos));

    modalEdicion = new bootstrap.Modal(document.getElementById("modalEdicion"));
    modalEdicion.show();
    document.getElementById("id").value = objeto.idEstudiante;
    document.getElementById("nombre").value = objeto.nombre;
    document.getElementById("cedula").value = objeto.cedula;
    document.getElementById("cedula").value = objeto.cedula;
    document.getElementById("carnetEstudiante").value = objeto.carnetEstudiante;
    document.getElementById("correo").value = objeto.correo;
    document.getElementById("recidencia").value = objeto.recidencia;
    document.getElementById("telefono").value = objeto.telefono;
    document.getElementById("estado").value = objeto.estado;
    document.getElementById("idEditar").innerHTML = objeto.idEstudiante;
}

function editarDatos(datosrepuestas) {
    if ((datosrepuestas.exito = true) || (datosrepuestas.status == 200 )) {

         mostrarMensaje("El estudiante ha sido modificado correctamente.", 'success');
            modalEdicion.hide(); // Cerrar el modal
            cargar(); 
       
    } else {
        mensajes.innerHTML = `<div
        class="alert alert-warning alert-dismissible fade show"
        role="alert">
        <button
            type="button"
            class="btn-close"
            data-bs-dismiss="alert"
            aria-label="Close"
        ></button>
        <strong>Algo falló</strong>
    </div>`;
    }
}


/*ELIMINAR ESTUDIANTE */
// Función para mostrar mensajes// Función para mostrar mensajes
// Función para mostrar mensajes
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

// Variable global para el modal


// Función para abrir el modal de eliminación
function eliminar(id) {
    // Obtener la fila correspondiente al estudiante
    const fila = document.querySelector(`#fila-${id}`);
    const estado = fila.querySelector('.estado').textContent.trim();

    if (estado === "Inactivo") {
        mostrarMensaje("El estudiante ya está inactivo.", 'warning');
        return;
    }

    // Mostrar el modal de eliminación
    modalEliminar = new bootstrap.Modal(document.getElementById("modalEliminar"));
    modalEliminar.show();
    document.getElementById("idEliminar").innerHTML = id;
    document.getElementById("idEliminarModal").value = id;
}

function modalConfirmacionEliminar() {
    let id = document.getElementById("idEliminarModal").value;

    // Mostrar alerta antes de la eliminación
    alert("Eliminando el estudiante...");

    fetch(urlEstudiantes + Eliminar, {
        method: 'POST',
        body: JSON.stringify(id),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.exito === true) {
            // Eliminación exitosa
            mostrarMensaje("El estudiante ha sido eliminado correctamente.", 'success');
            modalEliminar.hide(); // Cerrar el modal
            cargar(); // Actualizar la lista después de eliminar
        } else {
            // Manejar el error
            mostrarMensaje("Hubo un error al eliminar el registro.", 'warning');
        }
    })
    .catch(error => {
        console.error('Error al eliminar el registro:', error);
        mostrarMensaje("Hubo un error al eliminar el registro.", 'danger');
    });
}


if (nombrePagina == listaEstudiante) {
    cargar();
}
if (nombrePagina == crearPagina) {
    manejarVisibilidadTraslado();
}