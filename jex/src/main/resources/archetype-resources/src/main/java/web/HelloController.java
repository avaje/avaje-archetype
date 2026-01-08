package ${package}.web;

import io.avaje.http.api.Controller;
import io.avaje.http.api.Get;
import io.avaje.http.api.Path;
import io.avaje.http.api.Produces;

@Controller
@Path("/")
final class HelloController {

  @Produces("text/plan")
  @Get
  String hello() {
    return "Hello world!";
  }
}
