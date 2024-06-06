﻿using System.ComponentModel.DataAnnotations;

namespace apiUCRES.Model
{
    public class Traslados
    {
        [Key]
        public int IdTraslado { get; set; }
        public int IdEstudiante { get; set; }

        [Required(ErrorMessage = "Por favor digite el Lugar de Residencia")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string LugarResidencia { get; set; }

        [Required(ErrorMessage = "Por favor digite el Lugar de Traslado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(5)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string LugarDeTraslado { get; set; }

        [Required(ErrorMessage = "Por favor digite el Motivo de Traslado")]
        [DataType(DataType.Text)] //decir el tipo de dato del atributo
        [MaxLength(50)] //definir el maximo de caracteres
        [MinLength(3)]//definir el minimo de caracteres
        [StringLength(50)] //otra manera de definir el tamaño maximo del string
        public string MotivoTraslado { get; set; }
    }
}
