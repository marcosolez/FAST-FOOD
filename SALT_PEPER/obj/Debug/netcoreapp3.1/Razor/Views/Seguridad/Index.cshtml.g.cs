#pragma checksum "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Seguridad\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3a3c16318a1c2c23be962d9b5e0359e1b1de42dc"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Seguridad_Index), @"mvc.1.0.view", @"/Views/Seguridad/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\_ViewImports.cshtml"
using SALT_PEPER;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\_ViewImports.cshtml"
using SALT_PEPER.ENTIDADES;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\_ViewImports.cshtml"
using SALT_PEPER.ENTIDADES.DTOs;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\_ViewImports.cshtml"
using SALT_PEPER.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3a3c16318a1c2c23be962d9b5e0359e1b1de42dc", @"/Views/Seguridad/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2372399713542fdece761e2ad19abaa8322bdab8", @"/Views/_ViewImports.cshtml")]
    public class Views_Seguridad_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<ApplicationUser>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
    <h1>Listad</h1>

    <div class=""card"">
        <div class=""card-body"">
            <table class=""table table-bordered"">
                <thead>
                    <tr>
                        <td>Usuario</td>
                        <td>Email</td>
                    </tr>
                </thead>  
                <tbody>
");
#nullable restore
#line 15 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Seguridad\Index.cshtml"
                     foreach (var item in Model)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <tr>\r\n                        <td>");
#nullable restore
#line 18 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Seguridad\Index.cshtml"
                       Write(item.UserName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 19 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Seguridad\Index.cshtml"
                       Write(item.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                       \r\n                    </tr>\r\n");
#nullable restore
#line 22 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Seguridad\Index.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<ApplicationUser>> Html { get; private set; }
    }
}
#pragma warning restore 1591