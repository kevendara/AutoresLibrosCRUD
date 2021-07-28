using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServicesAutorLibro
{
    public class Biblioteca
    {
        public Autores2[] lista_autores() 
        {
            using (var ctx =new CapaEntityFramework())
            {
                var lst = from d in ctx.autores select d;
                Autores2[] r = new Autores2[lst.Count()];
                int i = 0;

                foreach (var d in lst)
                {
                    r[i++] = new Autores2
                    {
                        id_autores = d.id_autores,
                        autor_uno_nombre = d.autor_uno_nombre,
                        autor_dos_nombre = d.autor_dos_nombre,
                        autor_tres_nombre = d.autor_tres_nombre
                    };
                }
                return r;
            }
        }

        public int insertar_autores_sp(String autor_uno_nombre, String autor_dos_nombre, String autor_tres_nombre)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.create_autor( autor_uno_nombre,  autor_dos_nombre,  autor_tres_nombre);
                return 0;
            }
            
        }

        public int actualizar_autores_sp(int id_autores, String autor_uno_nombre, String autor_dos_nombre, String autor_tres_nombre)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.update_autores(id_autores,  autor_uno_nombre,  autor_dos_nombre,  autor_tres_nombre);
                return 0;
            }

        }

        
        public int delete_autores_sp(int id_autores)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.delete_autor(id_autores);
                return 0;
            }

        }


        //******************************************* LIBROS ***************************************************

        public Libros2[] lista_libros()
        {
            using (var ctx = new CapaEntityFramework())
            {
                var lst = from d in ctx.libros select d;
                Libros2[] r = new Libros2[lst.Count()];
                int i = 0;

                foreach (var d in lst)
                {
                    r[i++] = new Libros2
                    {
                        id_libro = d.id_libro,
                        titulo=d.titulo,
                        id_autores=d.id_autores,
                        editorial=d.editorial,
                        fecha_publicacion=d.fecha_publicacion,
                        idioma=d.idioma,
                        numero_paginas=d.numero_paginas
                    };
                }
                return r;
            }
        }

        public int insertar_libros_sp(string titulo , int id_autores, string editorial,
            string fecha_publicacion, string idioma, int numero_paginas)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.create_libro(titulo ,  id_autores,  editorial,
             fecha_publicacion,  idioma,  numero_paginas);
                return 0;
            }

        }

        public int actualizar_libros_sp(int id_libro, string titulo, int id_autores, string editorial,
            string fecha_publicacion, string idioma, int numero_paginas)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.update_libro(id_libro, titulo, id_autores, editorial,
             fecha_publicacion,  idioma,  numero_paginas);
                return 0;
            }

        }


        public int delete_libro_sp(int id_libro)
        {
            using (var ctx = new CapaEntityFramework())
            {
                ctx.delete_libro(id_libro);
                return 0;
            }

        }
    }
}
