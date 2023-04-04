using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Controllers
{
    public class ShopController : Controller
    {
        // GET: Shop
        public ActionResult Index(int page = 1, int pagesize = 8, string SearchString = "")
        {
            if (SearchString != "")
            {
                var db2 = ShopOnlineBUS.SearchSP(SearchString);
                return View(db2.ToPagedList(page, pagesize));
            }
            var db = ShopOnlineBUS.DanhSach().ToPagedList(page, pagesize);
            return View(db);
        }

        // GET: Shop/Details/5
        public ActionResult Details(string id)
        {
           
            object db = ShopOnlineBUS.ChiTiet(id);
            //---Lay them ten loai sp de get len view
            var thongTinNhaSanXuat = ShopOnlineBUS.LayThongTinNhaSanXuat(ShopOnlineBUS.ChiTiet(id).MaNhaSanXuat.ToString());
            ViewBag.TenNhaSanXuat = thongTinNhaSanXuat.TenNhaSanXuat;
            return View(db);
        }

        // GET: Shop/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Shop/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Shop/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Shop/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Shop/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Shop/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
