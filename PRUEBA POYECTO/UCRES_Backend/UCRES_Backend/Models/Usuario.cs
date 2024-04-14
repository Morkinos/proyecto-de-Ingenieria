using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace UCRES_Backend.Models
{
    public class Usuario
    {
        [Key]
        public int UsuarioID { get; set; }

        public string NombreUsuario { get; set; }

        public string Password { get; set; }
    }
}
