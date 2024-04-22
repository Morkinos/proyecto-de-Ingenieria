using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Carrera
    {
        [Key]

        public int IdCarrera { get; set; }

        [Required(ErrorMessage = "Por favor digite el Nombre")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Nombre { get; set; }


        [Required(ErrorMessage = "Por favor digite la Sede")]
        public int IdSede { get; set; }


        [Required(ErrorMessage = "Por favor digite el titulo")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(5)] //definir el maximo de caracteres
        [MinLength(1)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Creditos { get; set; }
    }
}
