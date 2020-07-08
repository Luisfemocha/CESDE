using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CEEmpleado{
        private int ide;
        private String nome;
        private int edade;
        private String tele;
        private String cargo;

        public int Ide { get => ide; set => ide = value; }
        public string Nome { get => nome; set => nome = value; }
        public int Edade { get => edade; set => edade = value; }
        public string Tele { get => tele; set => tele = value; }
        public string Cargo { get => cargo; set => cargo = value; }
    }
}