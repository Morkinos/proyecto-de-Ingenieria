let navbar =
        `<div class="logo">
<!---->         <img src="img/logo.png" alt="Logo de la marca">
         </div>
        <nav >
           <ul class="nav-links">
                <li><a href="Index.html">Inicio</a></li>
                <li><a href="Seleccion.html">Selección de Gráficos</a></li>
                <li><a href="https://www.ucr.ac.cr/">Pagina Principal</a></li>
           </ul>            
        </nav>`;

if (!sessionStorage.getItem('token')) {
        navbar += `
                <a class=" nav-links" href="login.html"><button class="btn_button">Iniciar Sesión</button></a>
                
                <!---->        <a onclick="openNav()" class="menu" href="#"><button class="menu_button">Menu</button></a>
                
                <!---->        <div id="mobile-menu" class="overlay">
                <!---->            <a onclick="closeNav()" href="" class="close">&times;</a>
                <!---->            <div class="overlay-content">
                <!---->                <a href="Index.html">Inicio</a>
                <!---->                <a href="Seleccion.html">Selección de Gráficos</a>
                <!---->                <a href="https://www.ucr.ac.cr/">Pagina Principal</a>
                <!---->               <a id="#" href="login.html">Iniciar Sesión</a>
                <!---->            </div>
                <!---->        </div>`;
} else {
        navbar += `     <ul class="nav-links">
                        <li><a href="MenuEstudiantes.html" class="nav-link">Gestión de Estudiantes</a></li>
                        </ul>
                        <a class=" nav-links" id="cerrarSesionLink"><button class="btn_button">Cerrar Sesión</button></a>
                
                <!---->        <a onclick="openNav()" class="menu" href="#"><button class="menu_button">Menu</button></a>
                
                <!---->        <div id="mobile-menu" class="overlay">
                <!---->            <a onclick="closeNav()" href="" class="close">&times;</a>
                <!---->            <div class="overlay-content">
                <!---->                 <a href="Index.html">Inicio</a>
                <!---->                 <a href="Seleccion.html">  Seleccion de Graficos</a>
                <!---->                 <a href="https://www.ucr.ac.cr/">Pagina Principal</a>
                                        <a href="MenuEstudiantes.html">Gestión de Estudiantes</a>
                                        <button id="cerrarSesionLink" class="menu_button">Cerrar Sesión</button>
                                       
                <!---->            </div>
                <!---->        </div>`;
}

function openNav() {
        document.getElementById("mobile-menu").style.width = "100%";
}

function closeNav() {
        document.getElementById("mobile-menu").style.width = "0%";
}


document.getElementById("navbar").innerHTML = navbar;


if (sessionStorage.getItem("token")) {
        // Asignación del evento onclick al botón para cerrar sesión
        var cerrarSesionLink = document.getElementById("cerrarSesionLink");
        cerrarSesionLink.onclick = function () {
                cerrarSesion();
                window.location.href = "index.html";
        };

        function cerrarSesion() {
                sessionStorage.removeItem('token');
                console.log('Lo borré')
        }
}