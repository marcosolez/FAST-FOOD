#pragma checksum "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5cc9eb21e772cadaf6190e3517158bf548ddeeef"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Platillo_Index), @"mvc.1.0.view", @"/Views/Platillo/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5cc9eb21e772cadaf6190e3517158bf548ddeeef", @"/Views/Platillo/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2372399713542fdece761e2ad19abaa8322bdab8", @"/Views/_ViewImports.cshtml")]
    public class Views_Platillo_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<TblPlatilloBebida>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CrearPlatillos", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary float-sm-end btn-sm waves-effect waves-light"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary btn-sm"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
            WriteLiteral("\r\n    <div class=\"card\">\r\n        <div class=\"card-body\">\r\n\r\n            <h4>Listado de platillos</h4>\r\n          \r\n\r\n            <div class=\"button-items \">\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5cc9eb21e772cadaf6190e3517158bf548ddeeef4691", async() => {
                WriteLiteral("\r\n                    <i class=\"bx bx-restaurant\" aria-hidden=\"true\"></i>\r\n                    Nuevo\r\n                ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n            <table class=\"table\">\r\n                <thead class=\"table-light\">\r\n                    <tr>\r\n                        <th>\r\n                            ");
#nullable restore
#line 20 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.Imagen));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n                        <th>\r\n                            ");
#nullable restore
#line 23 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.Nombre));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n                        <th>\r\n                            ");
#nullable restore
#line 26 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.Descripcion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n                        <th>\r\n                            Categoría\r\n                        </th>\r\n                        <th>\r\n                            ");
#nullable restore
#line 32 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.Precio));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n                        <th>Acciones</th>\r\n                    </tr>\r\n                </thead>\r\n                <tbody>\r\n");
#nullable restore
#line 38 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                     foreach (var item in Model)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <tr>\r\n                            <td>\r\n                                <img");
            BeginWriteAttribute("src", " src=\"", 1501, "\"", 1526, 2);
            WriteAttributeValue("", 1507, "images/", 1507, 7, true);
#nullable restore
#line 42 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
WriteAttributeValue("", 1514, item.Imagen, 1514, 12, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" width=\"100\"");
            BeginWriteAttribute("alt", " alt=\"", 1539, "\"", 1545, 0);
            EndWriteAttribute();
            WriteLiteral(" />\r\n                            </td>\r\n                            <td>\r\n                                ");
#nullable restore
#line 45 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Nombre));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n                                ");
#nullable restore
#line 48 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Descripcion));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n                                ");
#nullable restore
#line 51 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.FkcategoriaplatilloNavigation.Nombre));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n                                ");
#nullable restore
#line 54 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Precio));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5cc9eb21e772cadaf6190e3517158bf548ddeeef10330", async() => {
                WriteLiteral("\r\n                                    <i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i>\r\n                                    Editar\r\n                                ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 57 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                                                                 WriteLiteral(item.Pk);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
            WriteLiteral("                            </td>\r\n                        </tr>\r\n");
#nullable restore
#line 71 "D:\PROYECTOS\SALT_PEPER\SALT_PEPER\Views\Platillo\Index.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<TblPlatilloBebida>> Html { get; private set; }
    }
}
#pragma warning restore 1591
