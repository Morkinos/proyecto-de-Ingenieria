using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Infosedes
    {
        [Key]
        public int idCarrera { get; set; }

        public string Nombre { get; set; }

        public string NombreSede { get; set; }
    }
}
