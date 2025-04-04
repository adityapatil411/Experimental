using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class RespRepo
    {
        private static RespRepo repos = new RespRepo();
        private List<GuestResponse> responses = new List<GuestResponse>();

        public static RespRepo GetRepo() { 
            return repos; 
        }

        public IEnumerable<GuestResponse> GetResponses()
        {
            return responses;
        }

        public void AddResponses(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}