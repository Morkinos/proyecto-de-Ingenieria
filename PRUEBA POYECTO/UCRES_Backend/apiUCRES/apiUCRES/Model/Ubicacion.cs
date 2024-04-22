using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Ubicacion
    {
        [Key]
        public int IdUbicacion { get; set; }

        [Required(ErrorMessage = "Por favor digite la Provincia")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string Provincia { get; set; }
    }
}
