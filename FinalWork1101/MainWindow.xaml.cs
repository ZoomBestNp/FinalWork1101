using FinalWork1101.Data;
using FinalWork1101.Models;
using System.Windows;
using System.Windows.Controls;
namespace FinalWork1101
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private FragrantWorldContext _context;
        private List<Product> _products;
        public MainWindow()
        {
            InitializeComponent();
            _context = new FragrantWorldContext();
            LoadData();
        }

        private void LoadData()
        {
            _products = _context.Products.ToList();

            // Установить данные в ComboBox
            var manufacturers = _products
                .Select(p => p.ProductManufacturer)
                .Distinct()
                .OrderBy(m => m)
                .ToList();
            manufacturers.Insert(0, "Все производители");
            ManufacturerComboBox.ItemsSource = manufacturers;
            ManufacturerComboBox.SelectedIndex = 0;

            UpdateProducts();
        }

        private void UpdateProducts()
        {
            var filteredProducts = _products.AsEnumerable();

            // Фильтр по производителю
            if (ManufacturerComboBox.SelectedItem is string selectedManufacturer && selectedManufacturer != "Все производители")
            {
                filteredProducts = filteredProducts.Where(p => p.ProductManufacturer == selectedManufacturer);
            }

            // Фильтр по цене
            if (decimal.TryParse(MinPriceTextBox.Text, out var minPrice))
            {
                filteredProducts = filteredProducts.Where(p => p.ProductCost >= minPrice);
            }

            if (decimal.TryParse(MaxPriceTextBox.Text, out var maxPrice))
            {
                filteredProducts = filteredProducts.Where(p => p.ProductCost <= maxPrice);
            }

            // Поиск по названию
            var searchQuery = SearchTextBox.Text?.ToLower();
            if (!string.IsNullOrEmpty(searchQuery))
            {
                filteredProducts = filteredProducts.Where(p => p.ProductName.ToLower().Contains(searchQuery));
            }

            // Сортировка
            if (SortComboBox.SelectedItem is ComboBoxItem selectedSort)
            {
                if (selectedSort.Content.ToString() == "Цена (по возрастанию)")
                {
                    filteredProducts = filteredProducts.OrderBy(p => p.ProductCost);
                }
                else if (selectedSort.Content.ToString() == "Цена (по убыванию)")
                {
                    filteredProducts = filteredProducts.OrderByDescending(p => p.ProductCost);
                }
            }

            // Обновить данные в таблице
            ProductsDataGrid.ItemsSource = filteredProducts.ToList();

            // Обновить счетчик
            CountTextBlock.Text = $"{filteredProducts.Count()} из {_products.Count}";
        }

        private void FilterChanged(object sender, EventArgs e)
        {
            UpdateProducts();
        }

    }
}