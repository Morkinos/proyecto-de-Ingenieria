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

        [HttpPost("Agregar")]
        public IActionResult Agregar(Traslados traslados)
        {
            var respuesta = new RespuestaApi();
            try
            {
                _contexto.Traslados.Add(traslados);
                _contexto.SaveChanges();

                respuesta.Exito = true;
                respuesta.Mensaje = "Traslado agregado correctamente";
                respuesta.IdEstudiante = traslados.IdTraslado; // Asegúrate de que Id es la clave primaria y se genera al guardar
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }


        [HttpPost("Modificar")]
        public IActionResult Modificar(Traslados traslados)
        {
            var respuesta = new RespuestaApi();
            try
            {
                _contexto.Traslados.Update(traslados);
                _contexto.SaveChanges();
                respuesta.Exito = true;
                respuesta.Mensaje = "Traslado agregado correctamente";
                respuesta.IdEstudiante = traslados.IdTraslado; // Asegúrate de que Id es la clave primaria y se genera al guardar
            }
            catch (Exception ex)
            {
                respuesta.Exito = false;
                respuesta.Mensaje = "Error: " + ex.Message;
            }

            return Ok(respuesta);
        }

        //--------------------Aca comiensal las solicitudes de los SP 

        //Esto devuelve la cantidad de Estudiantes que se trasladaron por cada año 

        [HttpGet("ObtenerCantEstudiantesTransladoxanio")]
        public List<CantEstudiantesTransladoxanio> ObtenerCantEstudiantesTransladoxanio(int anio)
        {
            var CantEstTraslad = _contexto.CantEstudiantesTransladoxanio
           .FromSqlRaw($"EXEC ObtenerCantEstudiantesTransladoxanio @Anio={anio}")
           .ToList();


            return CantEstTraslad;

        }

        //Esto devuelve la Cantidad de Estudaintes trasladodo por cada Sede
        [HttpGet("ObtenerCantEstudiantesTransladoxSede")]
        public List<Matriculaxsedexanio> ObtenerCantEstudiantesTransladoxSede()
        {
            var CantEstTraslad = _contexto.Matriculaxsedexanio
               .FromSqlRaw($"EXEC ObtenerCantEstudiantesTransladoxsede")
               .ToList();

            return CantEstTraslad;
        }

        //Esto devuelve la cantidad de tralados que Si querian la carrera y lo que no 

        [HttpGet("CantTrasladxCarrDeseadSIYNO")]
        public List<CarreraDeseada> CantTrasladxCarrDeseadSIYNO()
        {
            var cantidadCarreraDeseadaSI = _contexto.CarreraDeseada
            .FromSqlRaw($"EXEC CantTrasladxCarrDeseadSi").ToList().First();

            var cantidadCarreraDeseadaNo = _contexto.CarreraDeseada
           .FromSqlRaw($"EXEC CantTrasladxCarrDeseadNo").ToList().First();



            return new List<CarreraDeseada> { cantidadCarreraDeseadaSI, cantidadCarreraDeseadaNo };
        }

        //Esto devuelve la cantidad de Estudaintes qye se trasladaron de sede por que la carrera si era la que deseaba
        [HttpGet("CantEstudxCarrDeseadSixSede")]
        public List<Matriculaxsedexanio> CantEstudxCarrDeseadSixSede()
        {
            var CantEstTraslad = _contexto.Matriculaxsedexanio
               .FromSqlRaw($"EXEC CantEstudxCarrDeseadSixSede")
               .ToList();

            return CantEstTraslad;
        }


        //Esto devuelve la cantidad de Estudaintes qye se trasladaron de sede por que la carrera No era la que deseaba
        [HttpGet("CantEstudxCarrDeseadNoxSede")]
        public List<Matriculaxsedexanio> CantEstudxCarrDeseadNoxSede()
        {
            var CantEstTraslad = _contexto.Matriculaxsedexanio
               .FromSqlRaw($"EXEC CantEstudxCarrDeseadNoxSede")
               .ToList();

            return CantEstTraslad;
        }

        //Esto devuelve la cantidad de Estudaintes por sede qeu se trasladaron 
        [HttpGet("CantDeMatrXTransladxSede")]
        public List<Matriculaxsedexanio> CantDeMatrXTransladxSede()
        {
            var CantEstTraslad = _contexto.Matriculaxsedexanio
               .FromSqlRaw($"EXEC CantDeMatrXTransladxSede")
               .ToList();

            return CantEstTraslad;
        }



    }//fin del namespace
}//fin de la clase 
