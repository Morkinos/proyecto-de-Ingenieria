using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class CarrerasXSede
    {
        [Key]
        public string NombreCarrera { get; set; }

        public int Cantidad { get; set; }
    }
}
