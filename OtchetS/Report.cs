using Microsoft.Win32;
using PdfSharp.Xps;
using System.IO;
using System.Windows;
using System.Windows.Media;
using System.Windows.Xps;
using System.Windows.Xps.Packaging;

namespace OtchetS
{
    public static class Report
    {
        const int DIUPerInch = 96;
        private static readonly Thickness defaultMargin = new Thickness(25);
        public static void ExportVisualAsPdf(Visual visual)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog
            {
                DefaultExt = ".pdf",
                Filter = "PDF Documents (.pdf)|*.pdf"
            };

            bool? result = saveFileDialog.ShowDialog();

            if (result != true) return;

            using (MemoryStream memoryStream = new MemoryStream())
            {
                System.IO.Packaging.Package package = System.IO.Packaging.Package.Open(memoryStream, FileMode.Create);
                XpsDocument xpsDocument = new XpsDocument(package);
                XpsDocumentWriter xpsDocumentWriter = XpsDocument.CreateXpsDocumentWriter(xpsDocument);

                xpsDocumentWriter.Write(visual);
                xpsDocument.Close();
                package.Close();

                var pdfXpsDoc = PdfSharp.Xps.XpsModel.XpsDocument.Open(memoryStream);
                XpsConverter.Convert(pdfXpsDoc, saveFileDialog.FileName, 0);
            }
        }
    }
}
