using apiUCRES.Model;
using Microsoft.EntityFrameworkCore;
//using apiUCRES.Model;

namespace apiUCRES.Contexto
{
    //Este objeto hereda de la clase padre DbContext
    public class DbContextUCRES  : DbContext //manera de decirle que herede
    {
        //Constructor con parametros
        public DbContextUCRES(DbContextOptions<DbContextUCRES> options) : base(options)
        {

        }

        public DbSet<Carrera> Carreras { get; set; }
        public DbSet<Estudiante> Estudiantes { get; set; }
        public DbSet<RegistroEstudiante> RegistroEstudiantes { get; set; }
        public DbSet<Sede> Sedes { get; set; }
        public DbSet<EstudiantesProvinciasxaño> EstudiantesProvinciasxaño { get; set; }
        public DbSet<CarreraDeseada> CarreraDeseada { get; set; }
        public DbSet<Traslados> Traslados{ get; set; }
        public DbSet<Ubicacion> Ubicaciones { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Matriculaxsedexanio> Matriculaxsedexanio { get; set; }
        public DbSet<CantEstudiantesTransladoxanio> CantEstudiantesTransladoxanio { get; set; }

        public DbSet<CantidadMatrxAnio> CantidadMatrxAnio { get; set; }
        public DbSet<AniosDisponibles> AniosDisponibles { get; set; }
        
    }
}
