using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Client_Control_001.Models;

namespace Client_Control_001.Controllers
{
    public class MantenimientoController : Controller
    {
        private Data_Client_ControlEntities db = new Data_Client_ControlEntities();

        //
        // GET: /Mantenimiento/

        public ActionResult Index()
        {
            var compras = db.Compras.Include(c => c.Empresas);
            return View(compras.ToList());
        }

        //
        // GET: /Mantenimiento/Details/5

        public ActionResult Details(int id = 0)
        {
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            return View(compras);
        }

        //
        // GET: /Mantenimiento/Create

        public ActionResult Create()
        {
            ViewBag.Cod_empresa = new SelectList(db.Empresas, "Cod_empresa", "Cod_empresa");
            return View();
        }

        //
        // POST: /Mantenimiento/Create

        [HttpPost]
        public ActionResult Create(Compras compras)
        {
            if (ModelState.IsValid)
            {
                db.Compras.Add(compras);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Cod_empresa = new SelectList(db.Empresas, "Cod_empresa", "Cod_empresa", compras.Cod_empresa);
            return View(compras);
        }

        //
        // GET: /Mantenimiento/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            ViewBag.Cod_empresa = new SelectList(db.Empresas, "Cod_empresa", "Cod_empresa", compras.Cod_empresa);
            return View(compras);
        }

        //
        // POST: /Mantenimiento/Edit/5

        [HttpPost]
        public ActionResult Edit(Compras compras)
        {
            if (ModelState.IsValid)
            {
                db.Entry(compras).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Cod_empresa = new SelectList(db.Empresas, "Cod_empresa", "Cod_empresa", compras.Cod_empresa);
            return View(compras);
        }

        //
        // GET: /Mantenimiento/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            return View(compras);
        }

        //
        // POST: /Mantenimiento/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Compras compras = db.Compras.Find(id);
            db.Compras.Remove(compras);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}