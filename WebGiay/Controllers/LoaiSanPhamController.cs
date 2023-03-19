using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGiay.Models.BUS;

namespace WebGiay.Controllers
{
    public class LoaiSanPhamController : Controller
    {
        // GET: LoaiSanPham
        public ActionResult Index(String id, int page = 1, int pagesize = 8)
        {
            var ds = LoaiSanPhamBUS.ChiTiet(id).ToPagedList(page, pagesize);

            //---Lay them ten loai sp de get len view
            var thongTinLoaiSanPham = LoaiSanPhamBUS.LayThongTinLoaiSanPham(id);
            ViewBag.TenLoaiSanPham = thongTinLoaiSanPham.TenLoaiSanPham;
            //----------------------------------------

            return View(ds);

        }
    }
}