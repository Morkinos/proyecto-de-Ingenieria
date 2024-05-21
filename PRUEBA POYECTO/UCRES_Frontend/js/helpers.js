tittle = document.title;
graficos = 'Graficas';
graficos2 = 'Graficas2';
graficos3 = 'Graficas3';
graficos4 = 'Graficas4';
graficos12 = 'Grafica12'
const fetchAPIData = (...urls) => {
    const promises = urls.map(url => fetch(url).then(response => response.json()))
    return Promise.all(promises)
}

const getDataColors = opacity => {
    const colors = ['#45EEB0', '#ff0000', '#21c0d7', '#7448c2', '#c27448', '#BF1191', '#adff2f', '#916ecf', '#4d4d4d', '#ff6600', '#0000ff', '#00cc66', '#ffff00', '#ff3366', '#6699ff', '#ccac00', '#3b057f', '#ff69b4', '#5ab8bc', '#297225'];
    return colors.map(color => opacity ? `${color + opacity}` : color)
}


const updateChartData = (chartId, data, label) => {
    const chart = Chart.getChart(chartId)
    chart.data.datasets[0].data = data
    chart.data.labels = label

    chart.update()
}


if(tittle === graficos12){
// Función para llenar las opciones de sede
function llenarOpcionesSede(sedes) {
    var select = document.getElementById("opcionesSede");
    sedes.forEach(function (sede) {
        var option = document.createElement("option");
        option.value = sede.nombreSede; // Suponiendo que cada sede tiene un ID
        option.textContent = sede.nombreSede; // Suponiendo que el nombre de la sede se encuentra en el campo "nombre"
        select.appendChild(option);
    });
}

// Hacer la solicitud a la API para obtener las sedes
function obtenerSedes() {
    fetch('https://localhost:7192/Sedes/Listado')
        .then(response => response.json())
        .then(data => {
            llenarOpcionesSede(data);

            // Verificar si hay un valor almacenado en localStorage y seleccionarlo si existe
            let sedeSeleccionada = localStorage.getItem('opcionesSede');
            if (sedeSeleccionada) {
                document.getElementById('opcionesSede').value = sedeSeleccionada;
            }
        })
        .catch(error => console.error('Error al obtener las sedes:', error));
}

// Llamar a la función para obtener las sedes cuando la página se carga
window.onload = function () {
    obtenerSedes();
};

// Almacenar el valor seleccionado en localStorage cuando cambia el select
document.getElementById("opcionesSede").addEventListener("change", function () {
    localStorage.setItem('opcionesSede', this.value);
});
}

/******************************************************************************************************************/

// Función para llenar las opciones de años grafico 1
if(tittle === graficos){
function llenarOpcionesAnio(anios) {
    var select = document.getElementById("AniosOptions");
    anios.forEach(function (anios) {
        var option = document.createElement("option");
        option.value = anios.año; // Suponiendo que cada sede tiene un ID
        option.textContent = anios.año; // Suponiendo que el nombre de la sede se encuentra en el campo "nombre"
        select.appendChild(option);
    });
}

// Hacer la solicitud a la API para obtener las sedes
function obtenerAnios() {
    fetch('https://localhost:7192/RegistroEstudiantes/AniosDisponibles')
        .then(response => response.json())
        .then(data => {
            console.log(data)
            llenarOpcionesAnio(data);

            // Verificar si hay un valor almacenado en localStorage y seleccionarlo si existe
            let anioSelecionado = localStorage.getItem('AniosOptions');
            if (anioSelecionado) {
                document.getElementById('AniosOptions').value = sedeSeleccionada;
            }
        })
        .catch(error => console.error('Error al obtener los Anios:', error));
}

// Llamar a la función para obtener las sedes cuando la página se carga
window.onload = function () {
    obtenerAnios();
};

// Almacenar el valor seleccionado en localStorage cuando cambia el select
document.getElementById("AniosOptions").addEventListener("change", function () {
    localStorage.setItem('AniosOptions', this.value);
});
}
/******************************************************************************************************************/

// Función para llenar las opciones de años grafico 3
if (tittle === graficos3) {
    function llenarOpcionesAnio(anios) {
        var select = document.getElementById("OpcionesAnios");
        anios.forEach(function (anio) {
            var option = document.createElement("option");
            option.value = anio.año; // Suponiendo que cada año tiene un ID
            option.textContent = anio.año; // Suponiendo que el nombre del año se encuentra en el campo "año"
            select.appendChild(option);
        });
    }

    // Hacer la solicitud a la API para obtener los años disponibles
    function obtenerAnios() {
        fetch('https://localhost:7192/RegistroEstudiantes/AniosDisponibles')
            .then(response => response.json())
            .then(data => {
                console.log(data);
                llenarOpcionesAnio(data);

                // Verificar si hay un valor almacenado en localStorage y seleccionarlo si existe
                let anioSeleccionado = localStorage.getItem('OpcionesAnios');
                if (anioSeleccionado) {
                    document.getElementById('OpcionesAnios').value = anioSeleccionado;
                }
            })
            .catch(error => console.error('Error al obtener los años:', error));
    }

    // Llamar a la función para obtener los años cuando la página se carga
    window.onload = function () {
        obtenerAnios();
    };

    // Almacenar el valor seleccionado en localStorage cuando cambia el select
    document.getElementById("OpcionesAnios").addEventListener("change", function () {
        localStorage.setItem('OpcionesAnios', this.value);
    });
}
/******************************************************************************************************************/
// Función para llenar las opciones de años
if (tittle === graficos4) {
    function llenarOpcionesAnio(anios) {
        var select = document.getElementById("OpciondeAnio");
        anios.forEach(function (anio) {
            var option = document.createElement("option");
            option.value = anio.año; // Suponiendo que cada año tiene un ID
            option.textContent = anio.año; // Suponiendo que el nombre del año se encuentra en el campo "año"
            select.appendChild(option);
        });
    }

    // Hacer la solicitud a la API para obtener los años disponibles
    function obtenerAnios() {
        fetch('https://localhost:7192/RegistroEstudiantes/AniosDisponibles')
            .then(response => response.json())
            .then(data => {
                console.log(data);
                llenarOpcionesAnio(data);

                // Verificar si hay un valor almacenado en localStorage y seleccionarlo si existe
                let anioSeleccionado = localStorage.getItem('OpciondeAnio');
                if (anioSeleccionado) {
                    document.getElementById('OpciondeAnio').value = anioSeleccionado;
                }
            })
            .catch(error => console.error('Error al obtener los años:', error));
    }

    // Llamar a la función para obtener los años cuando la página se carga
    window.onload = function () {
        obtenerAnios();
    };

    // Almacenar el valor seleccionado en localStorage cuando cambia el select
    document.getElementById("OpciondeAnio").addEventListener("change", function () {
        localStorage.setItem('OpciondeAnio', this.value);
    });
}
