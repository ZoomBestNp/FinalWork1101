using System;
using System.Collections.Generic;

namespace FinalWork1101.Models;

public partial class OrderProduct
{
    public int OrderID { get; set; }
    public string ProductArticleNumber { get; set; } = null!;
}
