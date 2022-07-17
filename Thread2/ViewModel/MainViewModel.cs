using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace Thread2.viewmodel
{
    public class MainViewModel:ViewModelBase
    {
        public MainViewModel() { }

  
        private string fromTxt;
        private string password;

        private bool decrypt;
        
        private int maxvalue;
        private int curvalue;

        public string txtfile { get; set; }

        public CancellationTokenSource Token { get; set; } = new CancellationTokenSource();


        public string FromTxt { get => fromTxt; set
            { 
                fromTxt = value;
                RaisePropertyChanged();
            } 
        }


        public string Password { get => password; set
            { 
                password = value;
                RaisePropertyChanged();
            } 
        }


        private bool encrypt;
        public bool Encrypt { get => encrypt; set
            { 
                encrypt = value;
                RaisePropertyChanged();
            }
        }


        public bool Decrypt
        {
            get => decrypt; set
            {
                decrypt = value;
                RaisePropertyChanged();
            }
        }

        public int Maxvalue
        {
            get => maxvalue; set
            {
                maxvalue = value;
                RaisePropertyChanged();
            }
        }
 
        public int Curvalue
        {
            get => curvalue; set
            {
                curvalue = value;
                RaisePropertyChanged();
            }
        }
 

        public void EncyptDecrypt(CancellationToken token)
        {
            string contents = File.ReadAllText(FromTxt);
            var result = new StringBuilder();
            Maxvalue=contents.Length-1;           
            for (int c = 0; c < contents.Length; c++)
            {
                Curvalue = c;
                
                result.Append((char)((uint)contents[c] ^ (uint)Password[c % Password.Length]));
                if (token.IsCancellationRequested)
                {
                    for (int i = c; i >= 0; i--)
                    {
                        Curvalue=i;                        
                        result.Append((char)((uint)contents[i] ^ (uint)Password[i % Password.Length]));
                        Thread.Sleep(300);
                    }
                    MessageBox.Show("-");
                    Token=new CancellationTokenSource(); 
                    return;
                }
                Thread.Sleep(300);
            }
            File.WriteAllTextAsync(FromTxt, result.ToString());
            MessageBox.Show("+");
            Token = new CancellationTokenSource();
            Password = "";
            FromTxt = "";
        }

  
        public RelayCommand FromBtnCommand {
            get => new RelayCommand(
            () =>
            {
                OpenFileDialog openFileDialog = new OpenFileDialog();
                if (openFileDialog.ShowDialog() == true)
                FromTxt = openFileDialog.FileName;
                
            }); 
        }

        public RelayCommand StartCommand
        {
            get => new RelayCommand(
            () =>
            {
                ThreadPool.QueueUserWorkItem((o) =>
                {
                    EncyptDecrypt(Token.Token);
                });
            });
        }

        public RelayCommand CancelCommand
        {
            get => new RelayCommand(
            () =>
            {
                Token.Cancel();
            });
        }
    }
}
