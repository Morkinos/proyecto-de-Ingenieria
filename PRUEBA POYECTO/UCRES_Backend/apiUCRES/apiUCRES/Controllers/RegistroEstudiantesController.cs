using apiUCRES.Contexto;
using apiUCRES.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace apiUCRES.Controllers
{
    [ApiController]
    [Route("[Controller]")]
    public class RegistroEstudiantesController : Controller
    {
        public readonly DbContextUCRES _contexto;

        public RegistroEstudiantesController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<RegistroEstudiante>> Listado()
        {
            var list = await _contexto.RegistroEstudiantes.ToListAsync();

            return list;
        }

      [HttpGet("Registro/{IdRegistro}")]
        public async Task<RegistroEstudiante> GetRegistrado(int IdRegistro)
        {
            var temp = await _contexto.RegistroEstudiantes.FirstOrDefaultAsync(x => x.IdRegistro == IdRegistro);

            return temp;
        }


        [HttpGet("Estudiante/{IdEstudiante}")]
        public async Task<RegistroEstudiante> GetEstudianteRegistrado(int IdEstudiante)
        {
            var temp = await _contexto.RegistroEstudiantes.FirstOrDefaultAsync(x => x.IdEstudiante == IdEstudiante);

            return temp;
        }

       [HttpGet("Carrera/{idCarrera}")]
        public async Task<RegistroEstudiante> GetCarrera(int idCarrera)
        {
            var temp = await _contexto.RegistroEstudiantes.FirstOrDefaultAsync(x => x.IdCarrera == idCarrera);

            return temp;
        }

       [HttpPut("Agregar")]
        public string Agregar(RegistroEstudiante registroE)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.RegistroEstudiantes.Add(registroE);
                _contexto.SaveChanges();

                mensaje = "Estudiante Registrado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpDelete("Eliminar")]
        public async Task<string> Eliminar(int id)
        {
            string mensaje = "No se ha podido eliminar el Estudiante";
            try
            {
                var temp = await _contexto.Estudiantes.FirstOrDefaultAsync(f => f.IdEstudiante == id);

                if (temp != null)
                {
                    temp.Estado = "Deshabilitado";
                    _contexto.Estudiantes.Update(temp);
                    _contexto.SaveChanges();

                    mensaje = "Estudiante " + temp.Nombre + " Inhabilitado correctamente";
                }
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(RegistroEstudiante registroE)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.RegistroEstudiantes.Update(registroE);
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
