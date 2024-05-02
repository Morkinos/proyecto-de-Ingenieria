using apiUCRES.Contexto;
using apiUCRES.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace apiUCRES.Controllers
{
    [ApiController]
    [Route("[Controller]")]
    [EnableCors("MyPolicy")]
    public class UsuariosController : Controller
    {
        public readonly DbContextUCRES _contexto;

        public UsuariosController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<Usuario>> Listado()
        {
            var list = await _contexto.Usuarios.ToListAsync();

            return list;
        }

        [HttpGet("{correo}")]
        public async Task<Usuario> getUsuario(string correo)
        {
            var temp = await _contexto.Usuarios.FirstOrDefaultAsync(x => x.Correo == correo);

            return temp;
        }

        [HttpPut("Agregar")]
        public string Agregar(Usuario usuario)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Usuarios.Add(usuario);
                _contexto.SaveChanges();

                mensaje = "Carrera agregado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpDelete("Eliminar")]
        public async Task<string> Eliminar(string correo)
        {
            string mensaje = "No se ha podido eliminar el usuario";
            try
            {
                var temp = await _contexto.Usuarios.FirstOrDefaultAsync(f => f.Correo == correo);

                if (temp != null)
                {
                    temp.Estado = "Deshabilitado";
                    _contexto.Usuarios.Remove(temp);
                    _contexto.SaveChanges();

                    mensaje = "Carrera " + temp.Nombre + " eliminado correctamente";
                }
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(Usuario usuario)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Usuarios.Update(usuario);
                _contexto.SaveChanges();

                mensaje = "Cambios aplicados correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }
    }
}
