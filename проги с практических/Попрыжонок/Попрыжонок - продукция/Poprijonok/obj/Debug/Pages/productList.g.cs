﻿#pragma checksum "..\..\..\Pages\productList.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "773ADC4580CF8993A0DC3A2DC3E38A5EEB9A4C9BB887F80EFD84B116ACD25CF5"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Poprijonok.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Poprijonok.Pages {
    
    
    /// <summary>
    /// productList
    /// </summary>
    public partial class productList : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 60 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox Type;
        
        #line default
        #line hidden
        
        
        #line 70 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cmb_count;
        
        #line default
        #line hidden
        
        
        #line 85 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid productGrid;
        
        #line default
        #line hidden
        
        
        #line 107 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button addButton;
        
        #line default
        #line hidden
        
        
        #line 112 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock full;
        
        #line default
        #line hidden
        
        
        #line 118 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button back;
        
        #line default
        #line hidden
        
        
        #line 119 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel pagin;
        
        #line default
        #line hidden
        
        
        #line 121 "..\..\..\Pages\productList.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button forward;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Poprijonok;component/pages/productlist.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\productList.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 42 "..\..\..\Pages\productList.xaml"
            ((System.Windows.Controls.TextBox)(target)).TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 43 "..\..\..\Pages\productList.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Type = ((System.Windows.Controls.ComboBox)(target));
            
            #line 60 "..\..\..\Pages\productList.xaml"
            this.Type.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.Type_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.cmb_count = ((System.Windows.Controls.ComboBox)(target));
            
            #line 70 "..\..\..\Pages\productList.xaml"
            this.cmb_count.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmb_count_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.productGrid = ((System.Windows.Controls.DataGrid)(target));
            
            #line 85 "..\..\..\Pages\productList.xaml"
            this.productGrid.LoadingRow += new System.EventHandler<System.Windows.Controls.DataGridRowEventArgs>(this.agentGrid_LoadingRow);
            
            #line default
            #line hidden
            
            #line 85 "..\..\..\Pages\productList.xaml"
            this.productGrid.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.productGrid_MouseDown);
            
            #line default
            #line hidden
            return;
            case 6:
            this.addButton = ((System.Windows.Controls.Button)(target));
            
            #line 107 "..\..\..\Pages\productList.xaml"
            this.addButton.Click += new System.Windows.RoutedEventHandler(this.addButton_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.full = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 8:
            this.back = ((System.Windows.Controls.Button)(target));
            
            #line 118 "..\..\..\Pages\productList.xaml"
            this.back.Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.pagin = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 10:
            this.forward = ((System.Windows.Controls.Button)(target));
            
            #line 121 "..\..\..\Pages\productList.xaml"
            this.forward.Click += new System.Windows.RoutedEventHandler(this.Button_Click1);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

