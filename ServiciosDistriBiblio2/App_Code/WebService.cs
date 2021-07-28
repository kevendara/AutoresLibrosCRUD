using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hola a todos";
    }

    [WebMethod]
    public LocalServicesAutorLibro.Autores2[] lista_autores()
    {
        return new LocalServicesAutorLibro.Biblioteca().lista_autores();
    }

    [WebMethod]
    public int insertar_autores_sp(String autor_uno_nombre, String autor_dos_nombre, String autor_tres_nombre)
    {
        return new LocalServicesAutorLibro.Biblioteca().insertar_autores_sp( autor_uno_nombre,  autor_dos_nombre,  autor_tres_nombre);
    }

    [WebMethod]
    public int actualizar_autores_sp(int id_autores, String autor_uno_nombre, String autor_dos_nombre, String autor_tres_nombre)
    {
        return new LocalServicesAutorLibro.Biblioteca().actualizar_autores_sp(id_autores,  autor_uno_nombre,  autor_dos_nombre,  autor_tres_nombre);
    }

    [WebMethod]
    public int delete_autores_sp(int id_autores)
    {
        return new LocalServicesAutorLibro.Biblioteca().delete_autores_sp(id_autores);
    }


    //******************************************* LIBROS ***************************************************

    [WebMethod]
    public LocalServicesAutorLibro.Libros2[] lista_libros()
    {
        return new LocalServicesAutorLibro.Biblioteca().lista_libros();
    }

    [WebMethod]
    public int insertar_libros_sp(string titulo, int id_autores, string editorial,
            string fecha_publicacion, string idioma, int numero_paginas)
    {
        return new LocalServicesAutorLibro.Biblioteca().insertar_libros_sp(titulo, id_autores, editorial,
             fecha_publicacion, idioma, numero_paginas);
    }

    [WebMethod]
    public int actualizar_libros_sp(int id_libro, string titulo, int id_autores, string editorial,
            string fecha_publicacion, string idioma, int numero_paginas)
    {
        return new LocalServicesAutorLibro.Biblioteca().actualizar_libros_sp(id_libro, titulo, id_autores, editorial,
             fecha_publicacion, idioma, numero_paginas);
    }

    [WebMethod]
    public int delete_libro_sp(int id_libro)
    {
        return new LocalServicesAutorLibro.Biblioteca().delete_libro_sp(id_libro);
    }

}
