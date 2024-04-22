using apiUCRES.Contexto;
using apiUCRES.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace apiUCRES.Controllers
{
     [ApiController]
    [Route("[Controller]")]
    public class SedesController : Controller
    {
       
        public readonly DbContextUCRES _contexto;

        public SedesController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<Sede>> Listado()
        {
            var list = await _contexto.Sedes.ToListAsync();

            return list;
        }

        [HttpGet("{idSede}")]
        public async Task<Sede> GetSede(int idSede)
        {
            var temp = await _contexto.Sedes.FirstOrDefaultAsync(x => x.IdSede == idSede);

            return temp;
        }
        [HttpGet("Ubicacion/{idUbicacion}")]
        public async Task<Sede> GetSedeUbicaion(int idUbicacion)
        {
            var temp = await _contexto.Sedes.FirstOrDefaultAsync(x => x.IdUbicacion == idUbicacion);

            return temp;
        }
        [HttpPut("Agregar")]
        public string Agregar(Sede sede)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Sedes.Add(sede);
                _contexto.SaveChanges();

                mensaje = "sede agregado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(Sede sede   )
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Sedes.Update(sede);
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
