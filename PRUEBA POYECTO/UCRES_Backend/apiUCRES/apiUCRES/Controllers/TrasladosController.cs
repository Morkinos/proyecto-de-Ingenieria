using apiUCRES.Contexto;
using apiUCRES.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace apiUCRES.Controllers
{
    [ApiController]
    [Route("[Controller]")]
    public class TrasladosController : Controller
    {
        public readonly DbContextUCRES _contexto;

        public TrasladosController(DbContextUCRES dbContext)
        {
            _contexto = dbContext;
        }

        [HttpGet("Listado")]
        public async Task<List<Traslados>> Listado()
        {
            var list = await _contexto.Traslados.ToListAsync();

            return list;
        }

        [HttpGet("{idTraslado}")]
        public async Task<Traslados> GetTraslado(int idTraslado)
        {
            var temp = await _contexto.Traslados.FirstOrDefaultAsync(x => x.IdTraslado == idTraslado);

            return temp;
        }

        [HttpPut("Agregar")]
        public string Agregar(Traslados traslados)
        {
            //variable de control para los mensajes de accion
            string mensaje = "";
            try
            {
                _contexto.Traslados.Add(traslados);
                _contexto.SaveChanges();

                mensaje = "Traslado agregado correctamente";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }

            return mensaje;
        }

        [HttpPut("Modificar")]
        public string Modificar(Traslados traslados)
        {
            string mensaje = "No se logró aplicar los cambios";

            try
            {
                _contexto.Traslados.Update(traslados);
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
