using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Estudiante
    {
        [Key]
        public int IdEstudiante { get; set; }

        [Required(ErrorMessage = "Por favor digite el Nombre")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [StringLength(100)] //otra manera de definir el tamaño maximo del string
        public string Nombre { get; set; }

        [Required(ErrorMessage = "Por favor digite el Cedula")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(9)]//definir el minimo de caracteres
        [StringLength(12)] //otra manera de definir el tamaño maximo del string
        public string Cedula { get; set; }

        [Required(ErrorMessage = "Por favor digite el Correo")]
        [DataType(DataType.EmailAddress)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Correo { get; set; }

        [Required(ErrorMessage = "Por favor digite la Residencia")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(1)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Residencia { get; set; }

        [Required(ErrorMessage = "Por favor digite el Telefono")]
        [DataType(DataType.PhoneNumber)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(1)]//definir el minimo de caracteres
        [StringLength(9)] //otra manera de definir el tamaño maximo del string
        public string Telefono { get; set; }

        [Required(ErrorMessage = "Por favor digite el Estado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(8)] //otra manera de definir el tamaño maximo del string
        public string Estado { get; set; }

        [Required(ErrorMessage = "Por favor digite el Carnet de Estudiantes")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(1)]//definir el minimo de caracteres
        [StringLength(15)] //otra manera de definir el tamaño maximo del string
        public string carnetEstudiante { get; set; }
    }
}
