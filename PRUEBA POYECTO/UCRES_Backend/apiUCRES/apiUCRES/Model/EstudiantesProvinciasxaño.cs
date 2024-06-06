using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    
    public class EstudiantesProvinciasxaño
        {
         [Key]
        public string Residencia{ get; set; }

        public int Cantidad{ get; set;}
    }
}
