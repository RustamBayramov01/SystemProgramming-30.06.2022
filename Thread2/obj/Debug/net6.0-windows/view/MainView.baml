   M S B A M L   `   `   `  ����>  :No1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Thread2.viewmodelThread2.viewmodel  5   	   +clr-namespace:Thread2.viewThread2.view  5   	       Thread2.view.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6
namespace1clr-namespace:Thread2.viewmodel     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:Thread2.view  5   	     � Title$  MainView��5
   	   $	��250��6   $	��550��6'   .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� $��0��6   $��2��6"    �� Orientation$ 
Horizontal=�63   $��Center=�6L   $
��Left=�6g   .+�5      �� $
��From��6   $
��Bold"�6$   $��20(�66   $��	20,10,0,0q�6D   6Y   �� 5       !  MaterialDesignOutlinedTextBox#��[  5      $��50��5      $	��283��5      $��87,0,0,0q�5       �� AcceptsReturn$
 True��5       �� TextWrapping$
 Wrap=�5      " �� VerticalScrollBarVisibility$
 Auto=�5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$	 Txt��5       ��5      �� *	FromTxt+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�{�5!      �� 	 �� Path$	 	IsChecked�
 �� ElementName$2
 ,MaterialDesignOutlinedTextBoxEnabledComboBox��.��6t   5#      �� 5%       " MaterialDesignRaisedDarkButton#��[ 5'       � ToolTip$8 2Resource name: MaterialDesignRaisedLightDarkButton��5(      $
��File��5)      
���   �$��70��5+      $��10,0,0,0q�5,      ��5&      �� *FromBtnCommand+{�5-      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window5/      �� 51   
   $��1��6   $��2��6"   $ 
Horizontal=�63   $��Center=�6L   $
��Left=�6g   .+�53      �� $��Password��6   $
��Bold"�6(   $��20(�6:   $��	20,10,0,0q�6H   6]   G� 55      -   5         G�Name$ PasswordBox��59      $	��150��56      $��50,0,0,0q�57      $��16(�58      $ Password��5;      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5<      	� 5>       & "MaterialDesignTabRadioButtonBottom#��[ 5?      $��20,4,4,4q�5@      $��Encrypt��5B       d� 	IsChecked 5A      �� *	Encrypt+$ PropertyChanged=�$ TwoWay=�5B      	� 5C      #��[ 5D      $��20,4,4,4q�5E      $��Decrypt��5G       5F      �� *	Decrypt+$ PropertyChanged=�$ TwoWay=�5G      5H      �� 5J   
   $��2��6   $��3��6"   $ 
Horizontal=�63   .+�5L      � -   5         �Name$! DeterminateCircularProgress��5M      $	��100��5P      $��20,0,0,0q�5Q      $��25��5R       � Maximum 5N      �� *
Maxvalue+$ PropertyChanged=�$ TwoWay=� � Value 5O      �� *
Curvalue+$ PropertyChanged=�$ TwoWay=�5T      �� 5X      #��[ 5Z      $8 2Resource name: MaterialDesignRaisedLightDarkButton��5[      $��Start��5\      
���   �$��90��5^      $��35,0,0,0q�5_      ��5Y      �� *StartCommand+{�5`      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window�� 5d      #��[ 5f      $8 2Resource name: MaterialDesignRaisedLightDarkButton��5g      $��Cancel��5h      
���   �$��90��5j      $��10,0,0,0q�5k      ��5e      �� *CancelCommand+{�5l      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5o      5r      5s      