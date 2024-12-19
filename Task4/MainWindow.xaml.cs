using FinalWork1101.Data;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Task4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private FragrantWorldContext _context;
        public MainWindow()
        {
            InitializeComponent();
            _context = new FragrantWorldContext();
            ProductsDataGrid.ItemsSource = _context.Products.ToList();

        }

        private void OrderButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}