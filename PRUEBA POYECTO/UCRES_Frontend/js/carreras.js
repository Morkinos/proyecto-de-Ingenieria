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

let carreras = []; // Variable para almacenar las carreras

function cargar() {
    tablaCarreraxSede.innerHTML = "";
    cargarspinner();
    fetch(url + listar)
        .then(repuesta => repuesta.json())
        .then((datosrepuestas) => {
            carreras = datosrepuestas; // Almacenar los datos en la variable global
            pintardatos(carreras);
        })
        .catch(console.log)
}

function pintardatos(objetodatos) {
    if (objetodatos != null) {
        tablaCarreraxSede.innerHTML = ""; // Limpiar la tabla antes de renderizar los datos
        for (const item of objetodatos) {
            tablaCarreraxSede.innerHTML += `
            <tr class="table-primary">
                <td scope="row" class="carreraId" data-nombresede="${item.nombreSede}">${item.idCarrera}</td>
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
            const nombreSede = this.getAttribute('data-nombresede'); // Obtener el nombre de la sede

            localStorage.setItem('nombreSedeSeleccionada', nombreSede); // Guardar el nombre de la sede en el localStorage
            localStorage.setItem('idCarreraSeleccionada', idCarrera); // Guardar el ID en el localStorage
            window.location.href = 'RegistroEstudiante.html'; // Redirigir al formulario de creación de estudiante
        });
    });
}

function filtrarCarreras() {
    const searchTerm = document.getElementById('searchBar').value.toLowerCase();
    const carrerasFiltradas = carreras.filter(carrera =>
        carrera.nombre.toLowerCase().includes(searchTerm)
    );
    pintardatos(carrerasFiltradas);
}

function cargarspinner() {
    document.getElementById("seccionspinner").innerHTML = spinner;
}

cargar();
