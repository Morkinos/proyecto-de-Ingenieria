Chart.defaults.color = '#fff'
Chart.defaults.borderColor = '#444'

let tittle = document.title;
let graficos = 'Graficas';
let graficos2 = 'Graficas2';
let graficos3 = 'Graficas3';
let graficos4 = 'Graficas4';
let graficos12 = 'Grafica12'
let tipoGrafico = localStorage.getItem('tipoGrafico');

function EstudiantesRecidenciaxanno() {
    let anno = localStorage.getItem('AniosOptions')

    if (anno !== null && anno === "") {
        anno = 2020;
    }
    let url = `https://localhost:7192/Estudiantes/ObtenerEstudianteRecidenciaxanno?anno=${anno}`;
    return url;
}



function ObternerCantMatriculasxSedexAnio() {
    let anno = localStorage.getItem('OpcionesAnios')
    if (anno == null) {
        anno = 2020;
    }
    let url = `https://localhost:7192/RegistroEstudiantes/ObternerCantMatriculasxSedexAnio?anio=${anno}`
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




const printCharts = () => {

    const urlEstudianteRecidenciaxanno = EstudiantesRecidenciaxanno();
    const urlObternerCantMatriculasxSedexAnio = ObternerCantMatriculasxSedexAnio();
    const urlObtenerCantEstudiantesTransladoxanio = ObtenerCantEstudiantesTransladoxanio();
    const urlObtenerCarrerasXsedes = ObtenerCarrerasXsedes();

    fetchAPIData(urlEstudianteRecidenciaxanno, 'https://localhost:7192/RegistroEstudiantes/ObternerCantidadCarrerasDeseadas',
        'https://localhost:7192/RegistroEstudiantes/AniosDisponibles', urlObternerCantMatriculasxSedexAnio,
        urlObtenerCantEstudiantesTransladoxanio,'https://localhost:7192/Traslados/ObtenerCantEstudiantesTransladoxSede','https://localhost:7192/RegistroEstudiantes/ObternerCantMatriculasxAnio',
        'https://localhost:7192/Traslados/CantTrasladxCarrDeseadSIYNO','https://localhost:7192/Traslados/CantEstudxCarrDeseadSixSede','https://localhost:7192/Traslados/CantEstudxCarrDeseadNoxSede',
        'https://localhost:7192/Traslados/CantDeMatrXTransladxSede','https://localhost:7192/Sedes/SedesDisponibles',urlObtenerCarrerasXsedes )
        .then(([EstudiantesRecidenciaxanno, carreraDeseadasCantidad, AniosDisponibles, MatrSedexAnio,CantEstTrasXAnio,CantEstTraslxSede,
            CantidadMatrXAnios,CantTraslXCarreDesead,EstudxCarrDeseadSixSede,EstudxCarrDeseadNoxSede,MatrXTransladxSede,SedesDisp,CarrerasPorSedeYCantMatr]) => {
            renderMatriculaxProvinciaChart(EstudiantesRecidenciaxanno)
            renderCantidadCarrerasDeseadas(carreraDeseadasCantidad)
            renderObtenerMatriculasxSedeyAnio(MatrSedexAnio)
            renderObtenerCantEstudiantesTransladoxanioChart(CantEstTrasXAnio)
            renderObtenerCantEstudiantesTransladoxsede(CantEstTraslxSede)
            renderObtenerMatriculasxAnios(CantidadMatrXAnios)
            renderCantTrasladxCarrDeseadSIYNO(CantTraslXCarreDesead)
            renderCantEstudxCarrDeseadSixSede(EstudxCarrDeseadSixSede)
            CantEstudxCarrDeseadNoxSede(EstudxCarrDeseadNoxSede)
            CantDeMatrXTransladxSede(MatrXTransladxSede)
            MostrarCarrerasPorSedeYCantMatr(CarrerasPorSedeYCantMatr)
           if(tittle == graficos){
            enableEventHandlers();
           }

            if(tittle == graficos3){
            Cambio();
            }

            if(tittle == graficos4){
                CambioEstTrasl();
            }
            if(tittle == graficos12){
                CambioSedes();
            }

        })

}

const renderMatriculaxProvinciaChart = (Estudiantes) => {

    const EstudiantesRecidenciaxanno = Estudiantes.map(EstudiantesRecidenciaxanno => EstudiantesRecidenciaxanno.cantidad)
    const ubicaciones = Estudiantes.map(ubicacion => ubicacion.recidencia)

    const data = {
        labels: ubicaciones,
        datasets: [{
            label: '2020',
            data: EstudiantesRecidenciaxanno,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5

        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }

    }
    const existingChart = Chart.getChart('ChartCantMatricxAnioxProvinc');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ChartCantMatricxAnioxProvinc', { type: tipoGrafico, data, options })
}

const renderCantidadCarrerasDeseadas = (carreraDeseadasCantidad) => {
    const CantidadCarrerasDeseadas = carreraDeseadasCantidad.map(carreraDeseadasCantidad => carreraDeseadasCantidad.cantidad)
    const CarreraDeseadaLabels = carreraDeseadasCantidad.map(carreraDeseadaslabels => carreraDeseadaslabels.carreraDeseada)

    const data = {
        labels: CarreraDeseadaLabels,
        datasets: [{
            label: '2020',
            data: CantidadCarrerasDeseadas,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }

    }
    const existingChart = Chart.getChart('ChartCantCarrerasDeseadas');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ChartCantCarrerasDeseadas', { type: tipoGrafico, data, options })

}


const renderObtenerMatriculasxSedeyAnio = (MatrSedexAnio) => {
    const ListaSedes = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.nombreSede)
    const Cantidad = MatrSedexAnio.map(matrSedexAnio => matrSedexAnio.cantidad)



    const data = {
        labels: ListaSedes,
        datasets: [{
            label: '2020',
            data: Cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('ChartCantMatxSedexAnio');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ChartCantMatxSedexAnio', { type: tipoGrafico, data, options })
}

const renderObtenerCantEstudiantesTransladoxanioChart = (CantEstTrasXAnio) => {
    const datosCantidad = CantEstTrasXAnio.map(CantEstTrasXAnio => CantEstTrasXAnio.cantidad)
    const data = {
        labels: ['Cantidad'],
        datasets: [{
            data: datosCantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5

        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }

    }
    const existingChart = Chart.getChart('ObtenerCantEstudiantesTransladoxanio');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ObtenerCantEstudiantesTransladoxanio', { type: tipoGrafico, data, options })
}


const renderObtenerCantEstudiantesTransladoxsede = (CantEstTraslxSede) => {
    const ListaSedes = CantEstTraslxSede.map(cantEstTraslxSede => cantEstTraslxSede.nombreSede)
    const cantidad = CantEstTraslxSede.map(cantEstTraslxSede => cantEstTraslxSede.cantidad)
    const data = {
        labels: ListaSedes,
        datasets: [{
            //label: '2020',
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('ObtenerCantEstudiantesTransladoxsede');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ObtenerCantEstudiantesTransladoxsede', { type: tipoGrafico, data, options })
}


const renderObtenerMatriculasxAnios = (CantidadMatrXAnios) => {
    const anio = CantidadMatrXAnios.map(cantidadMatrXAnios => cantidadMatrXAnios.año)
    const cantidad = CantidadMatrXAnios.map(cantidadMatrXAnios => cantidadMatrXAnios.cantidad)

    const data = {
        labels: anio,
        datasets: [{
            //label: '2020',
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('ObtenerMatriculasxAnios');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('ObtenerMatriculasxAnios', { type: tipoGrafico, data, options })
}

const renderCantTrasladxCarrDeseadSIYNO = (CantTraslXCarreDesead) => {
    const Carreraedseada = CantTraslXCarreDesead.map(cantTraslXCarreDesead => cantTraslXCarreDesead.carreraDeseada)
    const cantidad = CantTraslXCarreDesead.map(cantTraslXCarreDesead => cantTraslXCarreDesead.cantidad)

    const data = {
        labels: ['Carrera Deseada','Carrera No Deseada'],
        datasets: [{
            //label: Carreraedseada,
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('CantTrasladxCarrDeseadSIYNO');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('CantTrasladxCarrDeseadSIYNO', { type: tipoGrafico, data, options })
}


const renderCantEstudxCarrDeseadSixSede= (EstudxCarrDeseadSixSede) => {
    const nombreSeD = EstudxCarrDeseadSixSede.map(estudxCarrDeseadSixSede => estudxCarrDeseadSixSede.nombreSede)
    const cantidad = EstudxCarrDeseadSixSede.map(estudxCarrDeseadSixSede => estudxCarrDeseadSixSede.cantidad)
    const data = {
        labels: nombreSeD,
        datasets: [{
            //label: Carreraedseada,
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('CantEstudxCarrDeseadSixSede');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('CantEstudxCarrDeseadSixSede', { type: tipoGrafico, data, options })
}

const CantEstudxCarrDeseadNoxSede= (EstudxCarrDeseadNoxSede) => {
    const nombreSeD = EstudxCarrDeseadNoxSede.map(estudxCarrDeseadNoxSede => estudxCarrDeseadNoxSede.nombreSede)
    const cantidad = EstudxCarrDeseadNoxSede.map(estudxCarrDeseadNoxSede => estudxCarrDeseadNoxSede.cantidad)
    const data = {
        labels: nombreSeD,
        datasets: [{
            //label: Carreraedseada,
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('CantEstudxCarrDeseadNoxSede');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('CantEstudxCarrDeseadNoxSede', { type: tipoGrafico, data, options })

}


const CantDeMatrXTransladxSede = (MatrXTransladxSede) => {
    const nombreSeD = MatrXTransladxSede.map(matrXTransladxSede => matrXTransladxSede.nombreSede)
    const cantidad = MatrXTransladxSede.map(matrXTransladxSede => matrXTransladxSede.cantidad)

    const data = {
        labels: nombreSeD,
        datasets: [{
            //label: Carreraedseada,
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('CantDeMatrXTransladxSede');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('CantDeMatrXTransladxSede', { type: tipoGrafico, data, options })

}

const MostrarCarrerasPorSedeYCantMatr = (CarrerasPorSedeYCantMatr) => {
    const nombreCarrera = CarrerasPorSedeYCantMatr.map(carrerasPorSedeYCantMatr => carrerasPorSedeYCantMatr.nombreCarrera)
    const cantidad = CarrerasPorSedeYCantMatr.map(carrerasPorSedeYCantMatr => carrerasPorSedeYCantMatr.cantidad)
    const data = {
        labels: nombreCarrera,
        datasets: [{
            //label: Carreraedseada,
            data: cantidad,
            tension: 1,
            borderColor: getDataColors(),
            backgroundColor: getDataColors(60),
            fill: true,
            pointBorderWidth: 5
        }]
    }

    const options = {
        plugins: {
            legend: { display: false }
        }
    }

    const existingChart = Chart.getChart('MostrarCarrerasPorSedeYCantMatr');
    if (existingChart) {
        existingChart.destroy();
    }
    new Chart('MostrarCarrerasPorSedeYCantMatr', { type: tipoGrafico, data, options })

}

//------------------------REDIRECCIONES----------------------------------\\


printCharts(); // Llama a la función printCharts