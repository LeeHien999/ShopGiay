using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(String id, int page = 1, int pagesize = 8)
        {
            //-------Lấy tên nhà sản xuất-----------
            var thongTinNhaSanXuat = NhaSanXuatBUS.LayThongTinNhaSanXuat(id);
            ViewBag.TenNhaSanXuat = thongTinNhaSanXuat.TenNhaSanXuat;

            var ds = NhaSanXuatBUS.ChiTiet(id).ToPagedList(page, pagesize);
            return View(ds);
        }


    }
}