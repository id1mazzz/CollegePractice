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
    /// Логика взаимодействия для adminWindow.xaml
    /// </summary>
    public partial class adminWindow : Window
    {
        public adminWindow()
        {
            InitializeComponent();
            passportPage.Visibility = Visibility.Hidden;
            kabinetsPage.Visibility = Visibility.Hidden;
            valueCompPage.Visibility = Visibility.Hidden;
            using (var db = new Entitiess())
            {
                var octhetOne = db.Computers.ToList();
                PDFcomputers.ItemsSource = octhetOne;

                var octhetTwo= db.Computers.ToList();
                PDFkabinets.ItemsSource = octhetTwo;

                var v = db.Otchets.Select(ss => ss.Type).ToList();
                PDFcomputers.ItemsSource = v.ToList();

                var octhetThree = db.ValueComputersInCabinets.ToList();
                PDFvalue.ItemsSource = octhetThree;

            }
        }

        private void vidOtcheta_DropDownClosed(object sender, EventArgs e)
        {
            using (var db = new Entitiess())
            {
                switch (vidOtcheta.SelectedIndex)
                {
                    case 0:
                        passportPage.Visibility = Visibility.Visible; kabinetsPage.Visibility = Visibility.Collapsed; valueCompPage.Visibility = Visibility.Collapsed; var prep = db.Computers.ToList(); PDFcomputers.ItemsSource = prep;  //Выгрузка данных из таблицы в combobox.
                        break;
                    case 1:
                        passportPage.Visibility = Visibility.Collapsed; kabinetsPage.Visibility = Visibility.Visible; valueCompPage.Visibility = Visibility.Collapsed; var p = db.Computers.ToList(); PDFcomputers.ItemsSource = p; 
                        break;
                    case 2:
                        passportPage.Visibility = Visibility.Collapsed; kabinetsPage.Visibility = Visibility.Collapsed; valueCompPage.Visibility = Visibility.Visible; var pp = db.ValueComputersInCabinets.ToList(); PDFvalue.ItemsSource = pp;
                        break;

                }
            }
        }

        private void bt_Print_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new Entitiess())
            {
                Computers sele = PDFcomputers.SelectedItem as Computers;

                if (sele != null)
                {
                    document add = new document();
                    add.num.Content = Convert.ToString(sele.InventNomer);
                    add.name.Content = "Персональный компьютер " + sele.Name;
                    add.nameTwo.Content = (sele.Name);
                    add.kab.Content = Convert.ToString(sele.Kabinet);
                    add.monik.Content = sele.Monitor;
                    add.ozu.Content = sele.infoRam;
                    add.cpu.Content = sele.infoCPU;
                    add.mother.Content = sele.infoMBoard;
                    add.hdd.Content = sele.infoMemory;
                    add.vcard.Content = sele.infoVCard;

                    if (add.ShowDialog() == true)
                    {

                        db.SaveChanges();
                    }

                }

            }
        }

        private void pdfKabBut_Click(object sender, RoutedEventArgs e)
        {
            documentTwo documentTwo = new documentTwo();
            documentTwo.Show();
        }

        private void pdfValueBut_Click(object sender, RoutedEventArgs e)
        {
            documentThree documentThree = new documentThree();
            documentThree.Show();
        }
    }
}
