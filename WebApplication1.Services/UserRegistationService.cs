using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplication1.Services.Models;

namespace WebApplication1.Services
{
    public class UserRegistationService
    {
        public void Add(UserInfo user)
        {
            using (var connection = new SqlConnection(@"Data Source=WAIANGDESK13\MSSQLSERVER01;Initial Catalog=SampleStore;Integrated Security=True"))
            {
                connection.Open();
                var query = "insert into personss(firstname,lastname,dob,education,gender,address)values(@firstname,@lastname,@dob,@education,@gender,@address)";
                var command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@firstname", user.firstname);
                command.Parameters.AddWithValue("@lastname", user.lastname);
                command.Parameters.AddWithValue("@dob", user.dob);
                command.Parameters.AddWithValue("@education", user.education);
                command.Parameters.AddWithValue("@gender", user.gender);
                command.Parameters.AddWithValue("@address", user.address);

                command.ExecuteNonQuery();
            }
        }
    }
}
