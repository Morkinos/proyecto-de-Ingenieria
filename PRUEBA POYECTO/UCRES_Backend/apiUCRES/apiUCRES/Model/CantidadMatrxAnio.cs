using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class CantidadMatrxAnio
    {
        [Key]
        public int Año { get; set; }
        public int Cantidad { get; set; }
    }
}
