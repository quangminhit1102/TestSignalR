using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSignalR.Hubs
{
    [HubName("employeesHub")]
    public class EmployeesHub : Hub
    {
        public static void BroadcastData()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<EmployeesHub>();
            context.Clients.All.refreshEmployeeData();
        }
    }
}