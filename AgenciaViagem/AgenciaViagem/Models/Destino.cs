using System.ComponentModel.DataAnnotations;

namespace AgenciaViagem.Models
{
    public class Destino
    {   [Key]
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
        public string Hotel { get; set; }
        public int QuantidadeDias { get; set; }


    }
}
