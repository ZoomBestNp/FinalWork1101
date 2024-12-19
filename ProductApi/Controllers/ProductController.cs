using FinalWork1101.Data;
using FinalWork1101.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using Microsoft.EntityFrameworkCore;
using static NuGet.Packaging.PackagingConstants;

namespace ProductApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly FragrantWorldContext _context;
        private static List<Product> Products = new List<Product>();
        public ProductController(FragrantWorldContext context)
        {
            _context = context;
            Products = _context.Products.ToList();
        }

        // GET: Order
        [HttpGet]
        public ActionResult<IEnumerable<Product>> GetAllOrders()
        {
            return Ok(Products);
        }

        // GET: api/Product/{id}
        [HttpGet("{id}")]
        public ActionResult<Product> GetById(int id)
        {
            var product = Products.FirstOrDefault(i => i.ProductId == id);
            if (product == null)
                return NotFound();
            return Ok(product);
        }

        // POST: api/Products
        [HttpPost]
        public async Task<ActionResult<Product>> Create(Product newProduct)
        {
            try
            {
                _context.Products.Add(newProduct);
                await _context.SaveChangesAsync();
                return CreatedAtAction(nameof(GetById), new { id = newProduct.ProductId }, newProduct);
            }
            catch (Exception ex)
            {
                return StatusCode(500, "An error occurred while processing your request.");
            }
        }

        // PUT: api/Product/{id}
        [HttpPut("{id}")]
        public IActionResult Update(int id, Product updatedProduct)
        {
            var product = Products.FirstOrDefault(i => i.ProductId == id);
            if (product == null)
                return NotFound();

            product.ProductManufacturer = updatedProduct.ProductManufacturer;
            product.ProductName = updatedProduct.ProductName;
            product.ProductPhoto = updatedProduct.ProductPhoto;
            product.ProductId = updatedProduct.ProductId;
            product.ProductDescription = updatedProduct.ProductDescription;
            product.ProductCategory = updatedProduct.ProductCategory;
            product.ProductDiscountAmount = updatedProduct.ProductDiscountAmount;
            product.ProductCost = updatedProduct.ProductCost;
            product.ProductStatus = updatedProduct.ProductStatus;
            product.ProductQuantityInStock = updatedProduct.ProductQuantityInStock;

            _context.SaveChanges();
            return NoContent();
        }

        // DELETE: api/Products/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var product = Products.FirstOrDefault(i => i.ProductId == id);
            if (product == null)
                return NotFound();

            _context.Products.Remove(product);
            await _context.SaveChangesAsync();
            return NoContent();
        }

        private bool ProductExists(int id)
        {
            return _context.Products.Any(e => e.ProductId == id);
        }
    }
}

