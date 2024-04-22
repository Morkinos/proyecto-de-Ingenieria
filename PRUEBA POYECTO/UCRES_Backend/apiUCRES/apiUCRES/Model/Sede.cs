using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Sede
    {
        [Key]
        public int IdSede { get; set; }
        public int IdUbicacion { get; set; }

        [Required(ErrorMessage = "Por favor digite el Nombre de la sede")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string NombreSede { get; set; }
    }
}
