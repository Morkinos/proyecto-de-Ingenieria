let tablaCarreraxSede = document.querySelector("#tablaCarreraxSede");
let mensajes = document.querySelector("#mensajes");

let url = "https://localhost:7192/Carreras/";
let listar = "CarrerasXSedes";


let nombrePagina = document.title;

let listarPaginaEstu = "Listar Carreras";
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
            Loading...
            </button>`;



function cargar() {
    tablaCarreraxSede.innerHTML = "";
    cargarspinner();
    fetch(url + listar) 
        .then(repuesta => repuesta.json())
        .then((datosrepuestas) => {
            console.log(datosrepuestas)
            pintardatos(datosrepuestas)
        })
        .catch(console.log)
}

function pintardatos(objetodatos) {
    // console.log(objetodatos);
    if (objetodatos != null) {
        for (const item of objetodatos) {
            console.log(item.id);
            tablaCarreraxSede.innerHTML += `
            <tr class="table-primary">
                <td scope="row" class="carreraId">${item.idCarrera}</td>
                <td>${item.nombre}</td>
                <td>${item.nombreSede}</td>
            </tr>`;
        }
    }

    document.getElementById("seccionspinner").innerHTML = "";

    // Agregar evento de clic a todas las celdas de clase "carreraId"
    const celdasCarreraId = document.querySelectorAll('.carreraId');
    celdasCarreraId.forEach(celda => {
        celda.addEventListener('click', function() {
            const idCarrera = this.textContent; // Obtener el ID de la carrera
            localStorage.setItem('idCarreraSeleccionada', idCarrera); // Guardar el ID en el localStorage
            window.location.href = 'RegistroEstudiante.html'; // Redirigir al formulario de creación de estudiante
        });
    });
}

function cargarspinner() {
    document.getElementById("seccionspinner").innerHTML = spinner;
}

cargar();