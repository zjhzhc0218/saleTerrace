package deepdraw.saleterrace.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SalePageController {

    @RequestMapping("/dpgl_index")
    public ModelAndView dpgl_index(ModelAndView mv) {
        mv.setViewName("dpgl_index");
        return mv;
    }


    @RequestMapping("/yhzx_index")
    public ModelAndView yhzx_index(ModelAndView mv) {
        mv.setViewName("yhzx_index");
        return mv;
    }

    @RequestMapping("/syhd_release_index")
    public ModelAndView syhd_release_index(ModelAndView mv) {
        mv.setViewName("syhd_release_index");
        return mv;
    }

    @RequestMapping("/syhd_management_index")
    public ModelAndView syhd_management_index(ModelAndView mv) {
        mv.setViewName("syhd_management_index");
        return mv;
    }

    @RequestMapping("/black_index")
    public ModelAndView black_index(ModelAndView mv) {
        mv.setViewName("black_index");
        return mv;
    }

    @RequestMapping("/ckzd_index")
    public ModelAndView ckzd_index(ModelAndView mv) {
        mv.setViewName("ckzd_index");
        return mv;
    }

    @RequestMapping("/zjgl_index")
    public ModelAndView zjgl_index(ModelAndView mv) {
        mv.setViewName("zjgl_index");
        return mv;
    }

    @RequestMapping("/ptzf_index")
    public ModelAndView ptzf_index(ModelAndView mv) {
        mv.setViewName("ptzf_index");
        return mv;
    }

    @RequestMapping("/tjzjb_index")
    public ModelAndView tjzjb_index(ModelAndView mv) {
        mv.setViewName("tjzjb_index");
        return mv;
    }

    @RequestMapping("/sjxy_index")
    public ModelAndView sjxy_index(ModelAndView mv) {
        mv.setViewName("sjxy_index");
        return mv;
    }

    @RequestMapping("/jnbzj_index")
    public ModelAndView jnbzj_index(ModelAndView mv) {
        mv.setViewName("jnbzj_index");
        return mv;
    }

    @RequestMapping("/yhzx_loginpwd")
    public ModelAndView yhzx_loginpwd(ModelAndView mv) {
        mv.setViewName("yhzx_loginpwd");
        return mv;
    }


    @RequestMapping("/yhzx_zfpwd")
    public ModelAndView yhzx_zfpwd(ModelAndView mv) {
        mv.setViewName("yhzx_zfpwd");
        return mv;
    }

}

