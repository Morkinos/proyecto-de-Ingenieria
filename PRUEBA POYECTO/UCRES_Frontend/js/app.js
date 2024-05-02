Chart.defaults.color = '#fff'
Chart.defaults.borderColor = '#444'

let tittle = document.title;
let consulta = 'Seleccione su Grafico';
let graficos = 'Graficas';


function EstudiantesRecidenciaxanno() {
    const anno = document.getElementById('AniosOptions');
    let url = `https://localhost:7192/Estudiantes/ObtenerEstudianteRecidenciaxanno?anno=${anno.value}`
    return url;
}
function ObternerCantMatriculasxSedexAnio() {
    const anno = document.getElementById('OpcionesAnios');
    let url = `https://localhost:7192/RegistroEstudiantes/ObternerCantMatriculasxSedexAnio?anio=${anno.value}`
    return url;
}


const printCharts = () => {

    const urlEstudianteRecidenciaxanno = EstudiantesRecidenciaxanno();
    const urlObternerCantMatriculasxSedexAnio= ObternerCantMatriculasxSedexAnio();

    fetchAPIData('http://ucresapi.somee.com/Sedes/Listado','http://ucresapi.somee.com/Ubicaciones/Listado',
    'http://ucresapi.somee.com/RegistroEstudiantes/Listado','http://ucresapi.somee.com/Estudiantes/Listado',urlEstudianteRecidenciaxanno,
    'https://localhost:7192/RegistroEstudiantes/ObternerCantidadCarrerasDeseadas','https://localhost:7192/RegistroEstudiantes/AniosDisponibles',urlObternerCantMatriculasxSedexAnio)
        .then(([listaSedes,listaUbicacion,registroEstudiantes,Estudiantes,EstudiantesRecidenciaxanno,carreraDeseadasCantidad,AniosDisponibles,MatrSedexAnio]) => {
            renderMatriculaxProvinciaChart(EstudiantesRecidenciaxanno,listaUbicacion,registroEstudiantes)
            renderCantidadCarrerasDeseadas(carreraDeseadasCantidad)
            renderObtenerMatriculasxSedeyAnio(MatrSedexAnio)
            enableEventHandlers(EstudiantesRecidenciaxanno,listaUbicacion)
            Cambio(MatrSedexAnio)
      

        })

}

const renderMatriculaxProvinciaChart = (Estudiantes,) => {
   const EstudiantesRecidenciaxanno = Estudiantes.map(EstudiantesRecidenciaxanno => EstudiantesRecidenciaxanno.cantidad)
    const RecidenciaEstudiantes = Estudiantes.map(proviene  => proviene.recidencia)
    const ubicaciones = Estudiantes.map (ubicacion => ubicacion.recidencia)
    const data = {
        labels: ubicaciones,
        datasets: [{
            label: '2020',
            data: EstudiantesRecidenciaxanno ,
            tension: .5,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(20),
            fill: true,
            pointBorderWidth: 5
            
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
        
    }
    

    new Chart('yearsChart', { type: 'bar', data, options })
}

const renderCantidadCarrerasDeseadas = (carreraDeseadasCantidad) => {
    const CantidadCarrerasDeseadas = carreraDeseadasCantidad.map(carreraDeseadasCantidad => carreraDeseadasCantidad.cantidad)
    const CarreraDeseadaLabels = carreraDeseadasCantidad.map(carreraDeseadaslabels =>carreraDeseadaslabels.carreraDeseada)

     const data = {
         labels: CarreraDeseadaLabels,
         datasets: [{
             label: '2020',
             data: CantidadCarrerasDeseadas ,
             tension: .5,
             borderColor: getDataColors(),
             backgroundColor: getDataColors(20),
             fill: true,
             pointBorderWidth: 5
         }]
     }
 
     const options = {
         plugins: {
             legend: { display: false }
         }
         
     }
 
     new Chart('featuresChart', { type: 'bar', data, options })
 }
 

 const renderObtenerMatriculasxSedeyAnio = (MatrSedexAnio) => {

    const ListaSedes = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.nombreSede)
    const Cantidad = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.cantidad)

     const data = {
         labels: ListaSedes,
         datasets: [{
             label: '2020',
             data: Cantidad ,
             tension: .5,
             borderColor: getDataColors(),
             backgroundColor: getDataColors(20),
             fill: true,
             pointBorderWidth: 5
         }]
     }
 
     const options = {
         plugins: {
             legend: { display: false }
         }
     }
 
     new Chart('modelsChart', { type: 'bar', data, options })
 }








 //------------------------REDIRECCIONES----------------------------------\\
/*<option value="Radar">Radar</option>
                        <option value="polararea">Polar Area</option>
                        <option value="bar">Bar</option>
                        <option value="doughnut">Doughnut</option>
                        <option value="line">Line</option>
                        <option value="radar">Radar</option>
                        */ 
 
printCharts(); // Llama a la función printCharts