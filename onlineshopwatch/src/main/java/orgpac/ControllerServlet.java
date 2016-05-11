package orgpac;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerServlet {

	
	 @RequestMapping("/")
	  public String admin()
	  {
		  return "index";
	  }
}
