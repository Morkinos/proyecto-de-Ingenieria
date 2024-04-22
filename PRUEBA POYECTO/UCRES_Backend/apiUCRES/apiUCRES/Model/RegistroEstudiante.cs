using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class RegistroEstudiante
    {
        [Key]
        public int IdRegistro { get; set; }
        public int IdEstudiante { get; set; }
        public int IdCarrera { get; set; }
        [Required(ErrorMessage = "Por favor digite el Año- ejm:2000")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(4)] //definir el maximo de caracteres
        [MinLength(4)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Año { get; set; }
        [Required(ErrorMessage = "Por favor digite la Carrera deseada")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string CarreraDeseada { get; set; }


        [Required(ErrorMessage = "Por favor digite el Estado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Estado { get; set; }
    }
}
