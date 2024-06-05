

function URLdatosEstudiantes() {
    let annio = localStorage.getItem('AniosOptions');
    let url = `https://localhost:7192/Estudiantes/ObtenerEstudianteRecidenciaxanno?anno=${annio}`;
    return url;
}

function ObternerCantMatriculasxSedexAnio() {
    let anno = localStorage.getItem('OpcionesAnios');
    let url = `https://localhost:7192/RegistroEstudiantes/ObternerCantMatriculasxSedexAnio?anio=${anno}`;
    return url;
}

function ObtenerCantEstudiantesTransladoxanio() {
    let anno = localStorage.getItem('OpciondeAnio')
    

    if (anno !== null && anno === "") {
        anno = 2020;
    }
    let url = `https://localhost:7192/Traslados/ObtenerCantEstudiantesTransladoxanio?anio=${anno}`;
    return url;
}

function ObtenerCarrerasXsedes() {
    let sede = localStorage.getItem('opcionesSede')
    if (sede !== null && sede === "") {
        sede = 'Sede de Occidente';
    }
    let url = `https://localhost:7192/Carreras/MostrarCarrerasPorSedeYCantMatr?nombresede=${sede}`;
    return url;
}



const Cambio = () => {
    document.querySelector('#OpcionesAnios').onchange = e => {
        const { value: property, text: label } = e.target.selectedOptions[0];

        const urlEstudianteRecidenciaxanno = ObternerCantMatriculasxSedexAnio();

        fetchAPIData(urlEstudianteRecidenciaxanno).then(
            ([MatrSedexAnio]) => {
                const labels = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.nombreSede);
                const data = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.cantidad);

                updateChartData('ChartCantMatxSedexAnio', data, labels);
            }
        );
    };
};


const enableEventHandlers = () => {
    document.querySelector('#AniosOptions').onchange = e => {
        const { value: property, text: label } = e.target.selectedOptions[0];
        const  year = e.target.value;
        const urlEstudianteRecidenciaxanno = URLdatosEstudiantes();
        
        fetchAPIData(urlEstudianteRecidenciaxanno).then(
            ([EstudiantesRecidenciaxanno]) => {
                const data = EstudiantesRecidenciaxanno.map(EstudiantesRecidenciaxanno => EstudiantesRecidenciaxanno.cantidad);
                const labels = EstudiantesRecidenciaxanno.map(ubicacion => ubicacion.recidencia);
                updateChartData('ChartCantMatricxAnioxProvinc', data, labels,year);
            }
        );
    };
};

const CambioEstTrasl = () => {
    document.querySelector('#OpciondeAnio').onchange = e => {
        const { value: property, text: label } = e.target.selectedOptions[0];

        const urlObtenerCantEstudiantesTransladoxanio = ObtenerCantEstudiantesTransladoxanio();

        fetchAPIData(urlObtenerCantEstudiantesTransladoxanio).then(
            ([EstudTrasTotal]) => {
                const data = EstudTrasTotal.map(EstudTrasTotal => EstudTrasTotal.cantidad);

                const labels = ['Cantidad']
                updateChartData('ObtenerCantEstudiantesTransladoxanio', data, labels);
            }
        );
    };
};

const CambioSedes = () => {
    document.querySelector('#opcionesSede').onchange = e => {
        const { value: property, text: label } = e.target.selectedOptions[0];

        const urlCarrerasPorSedeYCantMatr = ObtenerCarrerasXsedes();

        fetchAPIData(urlCarrerasPorSedeYCantMatr).then(
            ([Sedes]) => {
                const data = Sedes.map(sedes => sedes.cantidad);
                const labels = Sedes.map(sedes => sedes.nombreCarrera);
                console.log(data)
                console.log(labels)
                updateChartData('MostrarCarrerasPorSedeYCantMatr', data, labels);
            }
        );
    };
};





