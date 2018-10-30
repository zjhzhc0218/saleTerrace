package deepdraw.saleterrace.controller;/**
 * Created by hasee on 2018/10/30.
 */

import deepdraw.saleterrace.entity.shop.Merchant;
import deepdraw.saleterrace.service.MerchantService;
import deepdraw.saleterrace.util.JsonUtil;
import deepdraw.saleterrace.util.MD5Util;
import deepdraw.saleterrace.util.ResultUtil;
import deepdraw.saleterrace.util.SixNumberRadom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

/**
 * 对商家表的操作
 * @author zyw
 * @create 2018-10-30 9:11
 **/
@Controller
@RequestMapping("/merchant")
public class MerchantController {

    @Autowired
    private MerchantService merchantService;

    /**
     * 通过账号去查询对应数据 (1.是判断是否存在该用户【新增时候判断是否重复】
     *  2.是判断登录时候带回对应的用户数据放到session中 )
     * @param id 用户id（手机号）
     *
     * @return
     */
    @RequestMapping("/userLogin")
    @ResponseBody
    public String passwordToLogin(HttpServletRequest request, String id, String password,HttpSession session) throws IOException{
        Map<String,Object> map = merchantService.selectMerchantUser(id);
        if(map.get("Merchant")!=null){
            Merchant merchant = (Merchant) map.get("Merchant");
            session=request.getSession();
            session.setMaxInactiveInterval(14400);
            if(merchant.getMerchantPassword().equals(password)){
                session.setAttribute("Merchant",map.get("Merchant"));
                return JsonUtil.object2Json(ResultUtil.success(map.get("message")));
            }else{
                return JsonUtil.object2Json(ResultUtil.success("该账号存在，但是密码错误！请重新输入密码"));
            }
        }else{
            return JsonUtil.object2Json(ResultUtil.success("登录失败，没有该账号"));
        }
    }


    /**
     *新增用户
     * @param request
     * @param merchant 商家用户实体
     * @return
     * @throws IOException
     */
    @RequestMapping("/userRegistered")
    @ResponseBody
    public String registered(HttpServletRequest request, Merchant merchant ) throws IOException {
        String salt = SixNumberRadom.getSixNumberRadom();
        String passwords = MD5Util.inputPassToDbPass("123456abc",salt);
        merchant.setMerchantSalt(salt);
        merchant.setMerchantPassword(passwords);
        merchantService.addMerchant(merchant);
        return JsonUtil.object2Json(ResultUtil.success("请耐心等待，工作人员正在加速处理"));
    }


    /**
     * 禁止登录 恢复登录[这部分涉及的更加多TODO]
     * @param request
     * @param id
     * @param ban
     * @return
     */
    @RequestMapping("/ban")
    @ResponseBody
    public String ban(HttpServletRequest request,String id,Integer ban){
        String message =  "";
        /*传入用户手机号，以及跟禁用还是恢复 登录*/
        message = merchantService.banChange(id, ban);
        return JsonUtil.object2Json(ResultUtil.success(message));
    }

/*    修改商家数据*/
    @RequestMapping("/updateMerchant")
    @ResponseBody
    public String updateMerchant(HttpServletRequest request, Merchant merchant){
        String message = merchantService.update(merchant);
        return JsonUtil.object2Json(ResultUtil.success(message));
    }
}
