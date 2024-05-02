using System.ComponentModel.DataAnnotations;
using System.Security;

namespace apiUCRES.Model
{
    public class CarreraDeseada
    {
        [Key]
        public string carreraDeseada  { get; set; }

        public int Cantidad { get; set; }
    }
}
