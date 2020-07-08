using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEEnfermedad
    {
        private int idenf;
        private String nomenf;
        private String sintenf;
        private String cuidenf;
        private String especs;

        public int Idenf { get => idenf; set => idenf = value; }
        public string Nomenf { get => nomenf; set => nomenf = value; }
        public string Sintenf { get => sintenf; set => sintenf = value; }
        public string Cuidenf { get => cuidenf; set => cuidenf = value; }
        public string Especs { get => especs; set => especs = value; }
    }
}