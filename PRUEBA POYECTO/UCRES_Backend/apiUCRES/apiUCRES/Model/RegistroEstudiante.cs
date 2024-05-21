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
        public int Año { get; set; }
        [Required(ErrorMessage = "Por favor digite la Carrera deseada")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [StringLength(2)] //otra manera de definir el tamaño maximo del string
        public string CarreraDeseada { get; set; }


        [Required(ErrorMessage = "Por favor digite el Estado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MinLength(1)]//definir el minimo de caracteres
        [StringLength(8)] //otra manera de definir el tamaño maximo del string
        public string Estado { get; set; }
    }
}
