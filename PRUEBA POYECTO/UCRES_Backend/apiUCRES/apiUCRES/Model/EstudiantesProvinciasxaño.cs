using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    
    public class EstudiantesProvinciasxaño
        {
         [Key]
        public string Recidencia{ get; set; }

        public int Cantidad{ get; set;}
    }
}
