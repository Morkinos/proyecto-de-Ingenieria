using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using apiUCRES.Model;
using Microsoft.EntityFrameworkCore;
using apiUCRES.Contexto;
using Microsoft.AspNetCore.Cors;

namespace apiUCRES.Controllers
{
    [ApiController]
    [Route("[Controller]")]
    [EnableCors("MyPolicy")]
    public class CarrerasController : Controller
    {
        public readonly DbContextUCRES _contexto;

        public CarrerasController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        [EnableCors("MyPolicy")]
        public async Task<List<Carrera>> Listado()
        {
            var list = await _contexto.Carreras.ToListAsync();

            return list;
        }

        [HttpGet("{idCarrera}")]
        public async Task<Carrera> GetCarrera(int idCarrera)
        {
            var temp = await _contexto.Carreras.FirstOrDefaultAsync(x => x.IdCarrera == idCarrera);

            return temp;
        }

        [HttpGet("Carreraxsede/{idSede}")]
        public async Task<List<Carrera>> GetCarreraxSede(int idSede)
        {
            var carreras = await _contexto.Carreras
                                           .Where(c => c.IdSede == idSede)
                                           .ToListAsync();

            return carreras;
        }

        [HttpPut("Agregar")]
        public string Agregar(Carrera carrera)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Carreras.Add(carrera);
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
        public async Task<string> Eliminar(int id)
        {
            string mensaje = "No se ha podido eliminar la carrera";
            try
            {
                var temp = await _contexto.Carreras.FirstOrDefaultAsync(f => f.IdCarrera == id);

                if (temp != null)
                {
                    _contexto.Carreras.Remove(temp);
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
        public string Modificar(Carrera carrera)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Carreras.Update(carrera);
                _contexto.SaveChanges();

                mensaje = "Cambios aplicados correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }


        [HttpGet("MostrarCarrerasPorSedeYCantMatr")]
        public List<CarrerasXSede> MostrarCarrerasPorSedeYCantMatr(string nombresede)
        {
            var carrerasPorSede = _contexto.CarrerasXSede
                .FromSqlRaw("EXEC MostrarCarrerasPorSedeYCantMatr @NombreSede = {0}", nombresede)
                .ToList();

            return carrerasPorSede;
        }


        [HttpGet("CarrerasXSedes")]
        public List<CantEstudiantesTransladoxanio> CarrerasXSedes()
        {
            var carrerasPorSede = _contexto.CantEstudiantesTransladoxanio
                .FromSqlRaw("EXEC ObtenerIdSiguiente")
                .ToList();

            return carrerasPorSede;
        }

    }
}
