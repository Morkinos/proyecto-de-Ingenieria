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

        [HttpPost("Agregar")]
        public IActionResult Agregar(RegistroEstudiante registroE)
        {
            var respuesta = new RespuestaApi();
            try
            {
                // Añadir el nuevo registro de estudiante al contexto de la base de datos
                _contexto.RegistroEstudiantes.Add(registroE);
                _contexto.SaveChanges(); // Guardar cambios en la base de datos

                respuesta.Exito = true;
                respuesta.Mensaje = "Estudiante registrado correctamente";
                respuesta.IdEstudiante = registroE.IdEstudiante; // Devolver el ID del estudiante registrado
                return Ok(respuesta); // Retorna un código de estado 200 con los detalles del éxito
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
                return StatusCode(500, respuesta); // Retorna un código de estado 500 con el mensaje de error
            }
        }

        [HttpPost("Eliminar")]
        public async Task<IActionResult> Eliminar([FromBody] int id)
        {
            var respuesta = new RespuestaApi();
            try
            {
                var temp = await _contexto.RegistroEstudiantes.FirstOrDefaultAsync(f => f.IdRegistro == id);

                if (temp != null)
                {
                    temp.Estado = "Inactivo";
                    _contexto.RegistroEstudiantes.Update(temp);
                    await _contexto.SaveChangesAsync();

                    respuesta.Exito = true;
                    respuesta.Mensaje = "Registro " + temp.Estado;
                    respuesta.IdEstudiante = temp.IdEstudiante;
                }
                else
                {
                    respuesta.Exito = false;
                    respuesta.Mensaje = "Registro no encontrado";
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
        public IActionResult Modificar(RegistroEstudiante registroE)
        {
            var respuesta = new RespuestaApi();
            try
            {
                _contexto.RegistroEstudiantes.Update(registroE);
                _contexto.SaveChanges();

                respuesta.Exito = true;
                respuesta.Mensaje = "Cambios aplicados correctamente";
                respuesta.IdEstudiante = registroE.IdEstudiante; // Asegúrate de que Id es la clave primaria y se actualiza correctamente
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }

        [HttpGet("ObternerCantidadCarrerasDeseadas")]
        public List<CarreraDeseada> ObternerCantidadCarrerasDeseadas()
        {
            var cantidadCarreraDeseadaSI = _contexto.CarreraDeseada
                .FromSqlRaw($"EXEC CarreraDeseadaSI").ToList().First();
            var cantidadCarreraDeseadaNo = _contexto.CarreraDeseada
                .FromSqlRaw($"EXEC CarreraDeseadaNO").ToList().First();

            return new List<CarreraDeseada> { cantidadCarreraDeseadaSI, cantidadCarreraDeseadaNo };
        }

        [HttpGet("ObternerCantMatriculasxSedexAnio")]
        public List<Matriculaxsedexanio> ObternerCantMatriculasxSedexAnio(int anio)
        {
            var CantMatricxSed = _contexto.Matriculaxsedexanio
                .FromSqlRaw($"EXEC ObternerCantMatriculasxSedexAnio @Anio={anio}")
                .ToList();

            return CantMatricxSed;
        }

        [HttpGet("ObternerCantMatriculasxAnio")]
        public List<CantidadMatrxAnio> ObternerCantMatriculasxAnio()
        {
            var CantMatricxAnio = _contexto.CantidadMatrxAnio
                .FromSqlRaw($"EXEC ObtenerMatriculasxAnios")
                .ToList();

            return CantMatricxAnio;
        }

        [HttpGet("AniosDisponibles")]
        public List<AniosDisponibles> AniosDisponibles()
        {
            var aniosDisp = _contexto.AniosDisponibles
                .FromSqlRaw($"EXEC AniosDisponibles")
                .ToList();

            return aniosDisp;
        }

        [HttpGet("sedeXCarrera")]
        public List<SedesDisponibles> sedeXCarrera(int idCarrera)
        {
            var CantMatricxSed = _contexto.SedesDisponibles
                .FromSqlRaw($"EXEC sedeXCarrera @idCarrera={idCarrera}")
                .ToList();

            return CantMatricxSed;
        }


    }

    public class RespuestaApi
    {
        public bool Exito { get; set; }
        public string Mensaje { get; set; }
        public int? IdEstudiante { get; set; }
    }

}
