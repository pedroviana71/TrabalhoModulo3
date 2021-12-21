using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AgenciaViagem.Models
{
    public class Promocao
    {   [Key]
        public int ID { get; set; }
        public double Valor { get; set; }
        public double Desconto { get; set; }
        

        public int DestinoID { get; set; }

        [ForeignKey("DestinoID")]

        public virtual Destino Destino{ get; set; }


    }
}
