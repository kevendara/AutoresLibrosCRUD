using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServicesAutorLibro
{
    public class Autores2
    {
        public int id_autores { get; set; }
        public string autor_uno_nombre { get; set; }
        public string autor_dos_nombre { get; set; }
        public string autor_tres_nombre { get; set; }
    }

    public class Libros2
    {
        public int id_libro { get; set; }
        public string titulo { get; set; }
        public int id_autores { get; set; }
        public string editorial { get; set; }
        public string fecha_publicacion { get; set; }
        public string idioma { get; set; }
        public int numero_paginas { get; set; }
    }
}
