using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Connection.Startup))]
namespace Connection
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            
        }
    }
}
