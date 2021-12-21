using Microsoft.EntityFrameworkCore;

namespace AgenciaViagem.Models
{
    public class BancoContext : DbContext
    {
        public DbSet<Destino> Destinos { get; set; }
        public DbSet<Promocao> Promocoes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString: @"Server=(localdb)\mssqllocaldb;Database=AgenciaViagem;Integrated Security=True");
        }
    }
    
}
