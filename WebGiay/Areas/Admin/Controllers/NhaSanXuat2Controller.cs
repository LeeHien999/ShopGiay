using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Areas.Admin.Controllers
{
    public class NhaSanXuat2Controller : Controller
    {
        // GET: Admin/NhaSanXuat2
        public ActionResult Index()
        {
            var ds = NhaSanXuatBUS.DanhSach();
            return View(ds);
        }

        // GET: Admin/NhaSanXuat2/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/NhaSanXuat2/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhaSanXuat2/Create
        [HttpPost]
        public ActionResult Create(NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add insert logic here
                NhaSanXuatBUS.ThemNSX(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaSanXuat2/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/NhaSanXuat2/Edit/5
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

        // GET: Admin/NhaSanXuat2/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/NhaSanXuat2/Delete/5
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
