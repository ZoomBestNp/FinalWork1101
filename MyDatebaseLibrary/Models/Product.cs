using System;
using System.Collections.Generic;

namespace FinalWork1101.Models;

public partial class Product
{
    public string ProductArticleNumber { get; set; } = null!;

    public string ProductName { get; set; } = null!;

    public string ProductDescription { get; set; } = null!;

    public string ProductCategory { get; set; } = null!;

    public byte[] ProductPhoto { get; set; } = null!;

    public string ProductManufacturer { get; set; } = null!;

    public decimal ProductCost { get; set; }

    public int ProductDiscountAmount { get; set; }

    public int ProductQuantityInStock { get; set; }

    public string ProductStatus { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
    public int ProductId { get; set; }
}
