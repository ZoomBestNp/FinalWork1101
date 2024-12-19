using FinalWork1101.Models;
using FinalWork1101.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using Microsoft.Data.SqlClient;

using System.Collections.Generic;
using System.Data.SqlClient;

public class ProductService
{
    private readonly string _connectionString;

    public ProductService(string connectionString)
    {
        _connectionString = connectionString;
    }

    public List<Product> GetAllProducts()
    {
        var products = new List<Product>();

        using (var connection = new SqlConnection(_connectionString))
        {
            connection.Open();
            var command = new SqlCommand("SELECT ProductName, ProductDescription, ProductManufacturer, ProductCost FROM Products", connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    var product = new Product
                    {
                        ProductName = reader.GetString(1),
                        ProductDescription = reader.GetString(2),
                        ProductManufacturer = reader.GetString(3),
                        ProductCost = reader.GetDecimal(4)
                    };
                    products.Add(product);
                }
            }
        }

        return products;
    }
}