using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Asp_Project_Alamgir.Startup))]
namespace Asp_Project_Alamgir
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
