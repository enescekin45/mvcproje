using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcproje1.Models.Entity;

namespace mvcproje1.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        vizeprojeEntities db = new vizeprojeEntities();
        public ActionResult Index()
        {
            var dersler = db.Tab_Dersler.ToList();
            return View(dersler);
        }
        [HttpGet]
        public ActionResult YeniDers()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniDers(Tab_Dersler p)
        {
            db.Tab_Dersler.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var ders = db.Tab_Dersler.Find(id);
            db.Tab_Dersler.Remove(ders);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult DersGetir(int id)
        {
            var ders = db.Tab_Dersler.Find(id);

            return View("DersGetir", ders);
        }
        public ActionResult Guncelle(Tab_Dersler p)
        {
            var drs = db.Tab_Dersler.Find(p.Dersid);
            drs.Dersad = p.Dersad;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}