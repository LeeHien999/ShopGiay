using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var db = ShopOnlineBUS.DanhSach();
            return View(db);
        }

        // GET: Shop/Details/5
        public ActionResult Details(string id)
        {
            var db = ShopOnlineBUS.ChiTiet(id);
            return View(db);
        }
        public ActionResult About()
        {

            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}