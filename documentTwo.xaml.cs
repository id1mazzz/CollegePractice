using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace OtchetS
{
    /// <summary>
    /// Логика взаимодействия для documentTwo.xaml
    /// </summary>
    public partial class documentTwo : Window
    {
        public documentTwo()
        {
            InitializeComponent();
            data.Content = DateTime.Now.ToString("dd/MM/yyyy");
            using (var db = new Entitiess())
            {


                var octhetTwo = db.Computers.ToList();
                PDFkabinets.ItemsSource = octhetTwo;


            }
        }
        private void pechat_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Report.ExportVisualAsPdf(print);

            }
            finally
            {
                this.IsEnabled = true;
            }
        }
        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
