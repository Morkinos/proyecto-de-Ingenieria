using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Usuario
    {
        [Key]
       public int IdUsuario { get; set; }

        [Required(ErrorMessage = "Por favor digite el Nombre")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Nombre { get; set; }

        [Required(ErrorMessage = "Por favor digite el Correo Electronico")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Correo { get; set; }

        [Required(ErrorMessage = "Por favor digite la Contraseña")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Password { get; set; }

        [Required(ErrorMessage = "Por favor digite el Estado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Estado { get; set; }
    }
}
