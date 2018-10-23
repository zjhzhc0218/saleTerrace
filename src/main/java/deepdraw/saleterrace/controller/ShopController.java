package deepdraw.saleterrace.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ShopController {

    @RequestMapping("/shopIndex")
    public ModelAndView shopIndex(ModelAndView mv) {
        mv.setViewName("bindStore");
        return mv;
    }

}
