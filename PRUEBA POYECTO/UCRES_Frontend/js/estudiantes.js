function manejarVisibilidadTraslado() {
    var trasladoCheckbox = document.getElementById('trasladoCheckbox');
    var trasladoFields = document.getElementById('trasladoFields');

    trasladoCheckbox.addEventListener('change', function() {
        trasladoFields.style.display = this.checked ? 'block' : 'none';
    });
}



function llenarCampoCarrera() {
    // Obtener el valor del localStorage
    const idCarrera = localStorage.getItem('idCarreraSeleccionada');

    // Verificar si hay un valor en el localStorage
    if (idCarrera !== null) {
        // Asignar el valor al campo de entrada
        document.getElementById('idCarreras').value = idCarrera;
    }
}
document.addEventListener('DOMContentLoaded', function() {
    llenarCampoCarrera();
});


manejarVisibilidadTraslado();