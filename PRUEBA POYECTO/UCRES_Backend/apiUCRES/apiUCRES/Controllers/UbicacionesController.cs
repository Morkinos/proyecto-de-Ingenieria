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

    public class UbicacionesController : Controller
    {
        public readonly DbContextUCRES _contexto;

        public UbicacionesController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<Ubicacion>> Listado()
        {
            var list = await _contexto.Ubicaciones.ToListAsync();

            return list;
        }

        [HttpGet("{idUbicacion}")]
        public async Task<Ubicacion> GetUbicacion(int idUbicacion)
        {
            var temp = await _contexto.Ubicaciones.FirstOrDefaultAsync(x => x.IdUbicacion == idUbicacion);

            return temp;
        }

        [HttpPut("Agregar")]
        public string Agregar(Ubicacion ubicacion)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Ubicaciones.Add(ubicacion);
                _contexto.SaveChanges();

                mensaje = "ubicacion agregado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(Ubicacion ubicacion)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Ubicaciones.Update(ubicacion);
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
