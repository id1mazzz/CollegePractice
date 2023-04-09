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
    /// Логика взаимодействия для document.xaml
    /// </summary>
    public partial class document : Window
    {
        public document()
        {
            InitializeComponent();
            data.Content = DateTime.Now.ToString("dd/MM/yyyy");
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
