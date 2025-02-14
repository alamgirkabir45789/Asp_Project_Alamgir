﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

using Microsoft.AspNet.FriendlyUrls;

namespace Asp_Project_Alamgir
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


            RouteTable.Routes.EnableFriendlyUrls();


            RouteTable.Routes.MapPageRoute(
                routeName:"Account_Info",
                routeUrl: "ContentPages/{id}/DoctorRegistration",
                physicalFile: "~/ContentPages/DoctorRegistration.aspx"
                );



            RouteTable.Routes.MapPageRoute(
              routeName: "Registration_Info",
              routeUrl: "ContentPages/{id}/EmployeeReg",
              physicalFile: "~/ContentPages/EmployeeReg.aspx"
              );

            //Default Route
            RouteTable.Routes.MapPageRoute(
            routeName: "Medico Hospital",
            routeUrl: "",
            physicalFile: "~/ContentPages/Home.aspx"
            );

        }
    }
}