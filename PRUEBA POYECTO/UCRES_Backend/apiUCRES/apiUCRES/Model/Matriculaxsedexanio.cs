using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Matriculaxsedexanio
    {
        [Key]
        public string NombreSede { get; set; }
        public int Cantidad { get; set; }
    }
}
