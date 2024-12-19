using FinalWork1101.Data;
using FinalWork1101.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoleController : ControllerBase
    {
        private readonly FragrantWorldContext _context;
        private static List<Role> Roles = new List<Role>();

        public RoleController(FragrantWorldContext context)
        {
            _context = context;
            Roles = _context.Roles.ToList();
        }

        // GET: Role
        [HttpGet]
        public ActionResult<IEnumerable<Role>> GetAllOrders()
        {
            return Ok(Roles);
        }

        // GET: api/Role/{id}
        [HttpGet("{id}")]
        public ActionResult<Role> GetById(int id)
        {
            var product = Roles.FirstOrDefault(i => i.RoleId == id);
            if (product == null)
                return NotFound();
            return Ok(product);
        }

        // POST: api/Roles
        [HttpPost]
        public async Task<ActionResult<Role>> Create(Role newRole)
        {
            try
            {
                _context.Roles.Add(newRole);
                await _context.SaveChangesAsync();
                return CreatedAtAction(nameof(GetById), new { id = newRole.RoleId }, newRole);
            }
            catch (Exception ex)
            {
                return StatusCode(500, "An error occurred while processing your request.");
            }
        }

        // PUT: api/Role/{id}
        [HttpPut("{id}")]
        public IActionResult Update(int id, Product updatedRole)
        {
            var role = Roles.FirstOrDefault(i => i.RoleId == id);
            if (role == null)
                return NotFound();

            role.RoleId = updatedRole.ProductId;
            role.RoleName = updatedRole.ProductName;

            _context.SaveChanges();
            return NoContent();
        }

        // DELETE: api/Roles/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var role = Roles.FirstOrDefault(i => i.RoleId == id);
            if (role == null)
                return NotFound();

            _context.Roles.Remove(role);
            await _context.SaveChangesAsync();
            return NoContent();
        }

        private bool RoleExists(int id)
        {
            return _context.Roles.Any(e => e.RoleId == id);
        }
    }
}

