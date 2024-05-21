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
 
    public class EstudiantesController : Controller
    {

        public readonly DbContextUCRES _contexto;

        public EstudiantesController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<Estudiante>> Listado()
        {
            var list = await _contexto.Estudiantes.ToListAsync();

            return list;
        }

        [HttpGet("{id}")]
        public async Task<Estudiante> GetEstudiante(int id)
        {
            var temp = await _contexto.Estudiantes.FirstOrDefaultAsync(x => x.IdEstudiante == id);

            return temp;
        }

        [HttpPost("Agregar")]
        public IActionResult Agregar(Estudiante estudiante)
        {
            var respuesta = new RespuestaApi();
            try
            {
                _contexto.Estudiantes.Add(estudiante);
                _contexto.SaveChanges();

                respuesta.Exito = true;
                respuesta.Mensaje = "Estudiante agregado correctamente";
                respuesta.IdEstudiante = estudiante.IdEstudiante; // Asegúrate de que Id es la clave primaria y se genera al guardar
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }

        [HttpPost("Eliminar")]
        public async Task<IActionResult> Eliminar([FromBody] int estudiante)
        {
            string mensaje = "No se ha podido eliminar el estudiante";
            var respuesta = new RespuestaApi();
            try
            {
                var temp = await _contexto.Estudiantes.FirstOrDefaultAsync(f => f.IdEstudiante == estudiante);

                if (temp != null)
                {
                    temp.Estado = "Inactivo";
                    _contexto.Estudiantes.Update(temp);
                    await _contexto.SaveChangesAsync();

                    mensaje = "Estudiante " + temp.Nombre + " eliminado correctamente";
                    respuesta.Exito = true;
                    respuesta.Mensaje = mensaje;
                    respuesta.IdEstudiante = estudiante;
                }
                else
                {
                    respuesta.Exito = false;
                    respuesta.Mensaje = "Estudiante no encontrado";
                }
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }


        [HttpPost("Modificar")]
        public IActionResult Modificar([FromBody] Estudiante registroE)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var respuesta = new RespuestaApi();
            try
            {
                _contexto.Estudiantes.Update(registroE);
                _contexto.SaveChanges();

                respuesta.Exito = true;
                respuesta.Mensaje = "Cambios aplicados correctamente";
                respuesta.IdEstudiante = registroE.IdEstudiante;
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }


        [HttpGet("ObtenerEstudianteRecidenciaxanno")]
        public List<EstudiantesProvinciasxaño> Matriculaxsedexanio(string anno)
        {
            var estudiantesPorProvincia = _contexto.EstudiantesProvinciasxaño
            .FromSqlRaw($"EXEC ObtenerEstudiantesPorProvincia @Anio={anno}")
            .ToList();

            return estudiantesPorProvincia;
        }

        [HttpGet("CantTotalEstuxProvAll")]
        public List<EstudiantesProvinciasxaño> CantTotalEstuxProvAll()
        {
            var estudiantesPorProvincia = _contexto.EstudiantesProvinciasxaño
            .FromSqlRaw($"EXEC CantTotalEstuxProvAll")
            .ToList();

            return estudiantesPorProvincia;
        }

        [HttpGet("ObtenerIdSiguiente")]
        public List<CantEstudiantesTransladoxanio> ObtenerIdSiguiente()
        {
            var estudiantesPorProvincia = _contexto.CantEstudiantesTransladoxanio
            .FromSqlRaw($"EXEC ObtenerIdSiguiente")
            .ToList();

            return estudiantesPorProvincia;
        }




    }//namespace
}//Class
