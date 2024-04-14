using Microsoft.EntityFrameworkCore;
using System;
using UCRES_Backend.Models;

namespace UCRES_Backend.Models
{
    public class UCRESDbcontext : DbContext
    {
        public UCRESDbcontext(DbContextOptions<UCRESDbcontext> options) : base(options)
        {

        }
        //Muy importante crear el DbSet
        public DbSet<Estudiante> Estudiantes { get; set; }

        public DbSet<Traslados> Traslados { get; set; }

        public DbSet<Usuario> Usuarios { get; set; }

    }
}

