let navbar =
        ` <div class="logo">
<!---->            <img src="img/logo.png" alt="Logo de la marca">
        </div>
        <nav>
           <ul class="nav-links">
                <li><a href="Index.html">Inicio</a></li>
                <li><a href="Seleccion.html">Seleccion de graficos</a></li>
                <li><a href="https://www.ucr.ac.cr/">Pagina Principal</a></li>
           </ul>            
        </nav>`;

if (!sessionStorage.getItem('token')) {
        navbar += `
            <a class="btn" href="login.html"><button class="btn_button">Iniciar Sesion</button></a>
                
                <!---->        <a onclick="openNav()" class="menu" href="#"><button class="menu_button">Menu</button></a>
                
                <!---->        <div id="mobile-menu" class="overlay">
                <!---->            <a onclick="closeNav()" href="" class="close">&times;</a>
                <!---->            <div class="overlay-content">
                <!---->                <a href="Index.html">Inicio</a>
                <!---->                <a href="Seleccion.html">  Seleccion de Graficos</a>
                <!---->                <a href="https://www.ucr.ac.cr/">Pagina Principal</a>
                <!---->               <a id="#" href="login.html">Iniciar Sesión</a>
                <!---->            </div>
                <!---->        </div>`;
} else {
        navbar += `<a class="btn" id="cerrarSesionLink"><button class="btn_button">Cerrar Sesión</button></a>
                
                <!---->        <a onclick="openNav()" class="menu" href="#"><button class="menu_button">Menu</button></a>
                
                <!---->        <div id="mobile-menu" class="overlay">
                <!---->            <a onclick="closeNav()" href="" class="close">&times;</a>
                <!---->            <div class="overlay-content">
                <!---->                <a href="Index.html">Inicio</a>
                <!---->                <a href="Seleccion.html">  Seleccion de Graficos</a>
                <!---->                <a href="https://www.ucr.ac.cr/">Pagina Principal</a>
                                         <button id="cerrarSesionLink">Cerrar Sesión</button>
                
                <!---->            </div>
                <!---->        </div>`;
}

document.getElementById("navbar").innerHTML = navbar;

// Asignación del evento onclick al botón para cerrar sesión
var cerrarSesionLink = document.getElementById("cerrarSesionLink");
cerrarSesionLink.onclick = function () {
        console.log('Lo toque como padre a niño')
        cerrarSesion();
        window.location.href = "login.html";
};

function cerrarSesion() {
        sessionStorage.removeItem('token');
        console.log('Lo borré')
}
