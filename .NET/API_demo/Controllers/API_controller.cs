using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API_demo.Controllers
{
    [Route("api/[controller]")]  // route name API_
    [ApiController]
    public class API_controller : ControllerBase
    {
        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>
        {
          new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},
          new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},
        };
        [HttpGet]

        public IActionResult GetAllStudents()
        {
            return new JsonResult(student_dict);
        }

        [HttpGet("{id}")]
        public IActionResult GetStudentById(string id)
        {
            var student_details = student_dict.FirstOrDefault(p => p["id"] ==id); //first record that satisfies the condition //use of the linked libraries
            if(student_details!=null)
            {
                return new JsonResult(student_details);
            }
            return new JsonResult("no matching found");

        }
    }
}
