using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace UCRES_Backend.Models
{
    public class Estudiante
    {
        [Key]
        public int EstudianteID { get; set; }

        public string Nombre { get; set; }

        public string Cedula { get; set; }

        public string Provincia { get; set; }

        public string SedeCercana { get; set; }

        public string SedeIngreso { get; set; }

        public int AñoMatricula { get; set; }
        //es si la carrera era la deseada o no
        public string Carrera { get; set; }
    }
}
