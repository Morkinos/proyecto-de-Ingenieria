using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace UCRES_Backend.Models
{
    public class Traslados
    {
        [Key]
        public int TrasladoID { get; set; }

        public int EstudianteID { get; set; }

        public string Motivo { get; set; }

        [ForeignKey("EstudianteID")]
        public virtual Estudiante Estudiante { get; set; }
    }
}
