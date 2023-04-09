using System.Linq;
using System.Windows;

namespace OtchetS
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void logBut_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new Entitiess())
            {
                var usern = db.Users.FirstOrDefault
                    (u => u.Login == logBox.Text && 
                    u.Password == passBox.Password);

                if (usern == null)
                {
                    MessageBox.Show("Введите верно логин и пароль");
                }

                else
                {
                    if (usern.RoleID == 1)                                                     //вход администратора
                    {
                        adminWindow adminWindow = new adminWindow();
                        adminWindow.Show();
                        this.Close();
                    }
                }
            }
        }
    }
}
