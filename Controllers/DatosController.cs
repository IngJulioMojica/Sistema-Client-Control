using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Client_Control_001.Models;


namespace Client_Control_001.Controllers
{
    public class DatosController : Controller
    {
        //
        // GET: /Datos/

        Data_Client_ControlEntities entidad = new Data_Client_ControlEntities();

        public ActionResult Index()
        {
            var listardatos = entidad.Clientes;
            return View(listardatos.ToList());
        }

        [HttpPost]
        public ActionResult buscarCliente(int id)
        {

            var modelo = from p in entidad.Clientes where p.Cod_cli == id 
                         join c in entidad.Ciudades
                          on p.Cod_ciudad equals c.Cod_ciudad
                           join o in entidad.Compras
                            on p.Cod_compra equals o.Cod_compra
                             join e in entidad.Empresas
                               on o.Cod_empresa equals e.Cod_empresa
                                join t in entidad.Empresa_detalle
                                  on o.Cod_empresa equals t.Cod_empresa

                         select new ElCliente
                         {
                            codigo = p.Cod_cli,
                            nombres = p.Nombres, 
                            apellidos  = p.Apellidos,
                            ciudad = c.Nombre_ciudad,
                            empresa = t.Nombre_empresa
                         };

            return View(modelo.ToList());
        
        }


        public ActionResult Listar() 
        {
            var modelo2 = from m in entidad.Compras orderby m.Fecha_compra descending 
                          join p in entidad.Clientes
                            on m.Cod_cli equals p.Cod_cli
                             join c in entidad.Compras
                               on p.Cod_compra equals c.Cod_compra
                                join e in entidad.Empresas
                                  on c.Cod_empresa equals e.Cod_empresa
                                   join d in entidad.Empresa_detalle
                                     on e.Cod_empresa equals d.Cod_empresa

                          select new LaCompra
                          {
                           apellidos = p.Apellidos,
                           nombres = p.Nombres,
                           codigocompra = c.Cod_compra,
                           empresa = e.Cod_empresa,
                           nombempresa = d.Nombre_empresa,
                           fechacompra = c.Fecha_compra

                          };


            return View(modelo2.ToList());
        
        }



        public ActionResult ActualizarCompras(string nombre) 
        {

            var modelo3 = from m in entidad.Compras
                          join p in entidad.Clientes
                            on m.Cod_cli equals p.Cod_cli
                          join c in entidad.Compras
                            on p.Cod_compra equals c.Cod_compra
                          join e in entidad.Empresas
                            on c.Cod_empresa equals e.Cod_empresa
                          join d in entidad.Empresa_detalle
                            on e.Cod_empresa equals d.Cod_empresa
                       

                          select new LaCompra
                          {
                              apellidos = p.Apellidos,
                              nombres = p.Nombres,
                              codigocompra = c.Cod_compra,
                              empresa = e.Cod_empresa,
                              nombempresa = d.Nombre_empresa,
                              fechacompra = c.Fecha_compra

                          };


            return View(modelo3.ToList());
        
        }


        public ActionResult Actualizadatos(int codigo)
        {
            codigo = 1030522;

            var modelo4 = from m in entidad.Compras
                          where m.Cod_empresa == codigo
                          select m;

            return View(modelo4.ToList());

        }

      

        public ActionResult buscar() 
        {

            return View();
        
        }

      





    }
}
