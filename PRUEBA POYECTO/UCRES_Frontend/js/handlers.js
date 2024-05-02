
function URLdatosEstudiantes() {
    const anno =document.getElementById('AniosOptions');
    let url = `https://localhost:7192/Estudiantes/ObtenerEstudianteRecidenciaxanno?anno=${anno.value}`
    return url;
}
function ObternerCantMatriculasxSedexAnio() {
    const anno = document.getElementById('OpcionesAnios');
    let url = `https://localhost:7192/RegistroEstudiantes/ObternerCantMatriculasxSedexAnio?anio=${anno.value}`
    return url;
}


const enableEventHandlers = (EstudiantesRecidenciaxanno,listaUbicacion) => {

    document.querySelector('#AniosOptions').onchange = e => {

        const { value: property, text: label } = e.target.selectedOptions[0]


        const urlEstudianteRecidenciaxanno = URLdatosEstudiantes();

        fetchAPIData(urlEstudianteRecidenciaxanno).then(
            ([EstudiantesRecidenciaxanno]) => {
                const data = EstudiantesRecidenciaxanno.map(EstudiantesRecidenciaxanno => EstudiantesRecidenciaxanno.cantidad)
                 const labels = EstudiantesRecidenciaxanno.map (ubicacion => ubicacion.recidencia)
                 updateChartData('yearsChart', data, labels)
            }
        );
    }
}

const Cambio = (MatrSedexAnio) => {

    document.querySelector('#OpcionesAnios').onchange = e => {

        const { value: property, text: label } = e.target.selectedOptions[0]


        const urlEstudianteRecidenciaxanno = ObternerCantMatriculasxSedexAnio();

        fetchAPIData(urlEstudianteRecidenciaxanno).then(
            ([MatrSedexAnio]) => {
                const labels = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.nombreSede)
                const data = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.cantidad)
                 updateChartData('modelsChart', data, labels)
            }
        );
    }
}