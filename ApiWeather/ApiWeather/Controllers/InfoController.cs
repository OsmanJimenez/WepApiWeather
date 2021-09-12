using ApiWeather.Context;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiWeather.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class InfoController : ControllerBase
    {
        private readonly AppDbContext _db;

        public InfoController(AppDbContext db)
        {
            _db = db;
        }

        [HttpGet]
        public async Task<IActionResult> GetNews()
        {
            var list = await _db.News.OrderBy(c => c.City_id).ToListAsync();
            return Ok(list);
        }

        [HttpGet("{id:int}")]
        public async Task<IActionResult> GetNewsCity(int id)
        {
            var NewOnly = await _db.News.FirstOrDefaultAsync(c => c.City_id == id);

            if (NewOnly == null)
            {
                return NotFound();
            }

            return Ok(NewOnly);

        }

    }
}
