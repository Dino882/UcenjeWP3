using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{

    [ApiController]
    [Route("E01")]
    public class E01UlazIzlaz: ControllerBase
    {

        [HttpGet]
        [Route("Hello")]

        public string HelloWorld()
        {
            return "Hello";

        }


    }
}
