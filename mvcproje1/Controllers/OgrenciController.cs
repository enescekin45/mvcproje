using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvcproje1.Models.Entity;
namespace mvcproje1.Controllers
{
    public class OgrenciController : Controller
    {
        // GET: Ogrenci
        private readonly vizeprojeEntities db = new vizeprojeEntities();
        public ActionResult Index()
        {
            var ogrenciler = db.Tab_Ogrenciler.ToList()
;
            return View(ogrenciler);
        }
        [HttpGet]
        public ActionResult YeniOgrenci()
        {
            List<SelectListItem> degerler = (from i in db.Tab_Kulupler.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.OgrKulupad,
                                                 Value = i.OgrKulupid.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View();
        }
        [HttpPost]
        public ActionResult YeniOgrenci(Tab_Ogrenciler p3)
        {
            var klp = db.Tab_Kulupler.Where(m => m.OgrKulupid== p3.Tab_Kulupler.OgrKulupid).FirstOrDefault();
            p3.Tab_Kulupler = klp;
            db.Tab_Ogrenciler.Add(p3);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var ogrenci = db.Tab_Ogrenciler.Find(id);
            db.Tab_Ogrenciler.Remove(ogrenci);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult OgrenciGetir(int id)
        {
            var ogrenci = db.Tab_Ogrenciler.Find(id);

            List<SelectListItem> degerler = (from i in db.Tab_Kulupler.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.OgrKulupad,
                                                 Value = i.OgrKulupid.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;

            return View("OgrenciGetir", ogrenci);
        }
        public ActionResult Guncelle(Tab_Ogrenciler p)
        {
            var ogr = db.Tab_Ogrenciler.Find(p.Ogrid);
            ogr.Ograd = p.Ograd;
            ogr.Ogrsoyad = p.Ogrsoyad;
            ogr.OgrResim = p.OgrResim;
            ogr.OgrKulupid = p.Tab_Kulupler.OgrKulupid;
            ogr.OgrCinsiyet = p.OgrCinsiyet;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
