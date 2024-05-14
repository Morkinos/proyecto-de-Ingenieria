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

        [HttpPut("Agregar")]
        public string Agregar(Estudiante estudiante)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Estudiantes.Add(estudiante);
                _contexto.SaveChanges();

                mensaje = "Estudiante agregado correctamente";
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
            string mensaje = "No se ha podido eliminar el estudiante";
            try
            {
                var temp = await _contexto.Estudiantes.FirstOrDefaultAsync(f => f.IdEstudiante == id);

                if (temp != null)
                {
                    temp.Estado = "Deshabilitado";
                    _contexto.Estudiantes.Update(temp);
                    _contexto.SaveChanges();

                    mensaje = "Estudiante " + temp.Nombre + " eliminado correctamente";
                }
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(Estudiante estudiante)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Estudiantes.Update(estudiante);
                _contexto.SaveChanges();

                mensaje = "Cambios aplicados correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
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
