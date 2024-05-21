
let url =  "https://localhost:7192/Usuarios/";
let autenticar = "AutenticarPW";

let nombrePagina = document.title;
let loginPagina = "Login";

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

const showHiddenPass =(loginpass, loginEye) => {
    const input = document.getElementById(loginpass);
    const  iconEye = document.getElementById(loginEye);
 
    iconEye.addEventListener('click',() => {
  
        //cambiamos la contrase;a a tipo texto
        if(input.type ==='password'){
            //cambiamos 
            input.type = 'text';
            //cambio de icooono
            iconEye.classList.add('ri-eye-fill')
            iconEye.classList.remove('ri-eye-off-fill')
        }else{
            input.type = 'password';
            //cambio de icooono
            iconEye.classList.add('ri-eye-off-fill')
            iconEye.classList.remove('ri-eye-fill')  
        }
    });
}


if (nombrePagina == loginPagina){
    formularioLogin.addEventListener("submit",
        function(evento){

            evento.preventDefault();//evita la recarga de la pagina
          
            let datos = new FormData(formularioLogin);
            let correo =  datos.get('correo');
            let password = datos.get('password');
            console.log( url + autenticar,
                {
                    method: 'GET',
                    body: JSON.stringify({Correo : correo, Password:password})   
                }
            ) 

            fetch(url + autenticar + `?correo=${correo}&password=${password}`, {
                method: 'GET'
            })
            //console.log(datosEnviar)
            .then( repuesta=> repuesta.json() )
            .then ( (datosrepuestas) => {
                console.log(datosrepuestas.data)
                
                if (datosrepuestas.statusCode === 200) {
                // Guarda el token de sesión en localStorage
                 sessionStorage.setItem('token', datosrepuestas.Data);
                } 
                insertarDatosLogin(datosrepuestas);
            }) 
        })

    }
    function insertarDatosLogin(datosrepuestas) {
        if (datosrepuestas.statusCode == 200) {
            mensajes.innerHTML = `<div
                class="alert alert-success alert-dismissible fade show"
                role="alert">
                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="alert"
                    aria-label="Close"
                ></button>
                <strong>Ingreso exitoso</strong>
            </div>`;
            // Esperar 2 segundos antes de redirigir
            setTimeout(function() {
                window.location.href = 'index.html';
            }, 2000); // 2000 milisegundos = 2 segundos
        } else {
            mensajes.innerHTML = `<div
                class="alert alert-warning alert-dismissible fade show"
                role="alert">
                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="alert"
                    aria-label="Close"
                ></button>
                <strong>Correo/Contraseña incorrectos</strong>
            </div>`;
        }
    }
    

function cargarspinner(){
    document.getElementById("seccionspinner").innerHTML = spinner;
}


showHiddenPass('password','logineye')
