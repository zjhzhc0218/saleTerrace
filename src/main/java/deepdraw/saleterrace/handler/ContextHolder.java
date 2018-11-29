package deepdraw.saleterrace.handler;/**
 * Created by hasee on 2018/9/21.
 */

import deepdraw.saleterrace.entity.shop.Merchant;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @ClassName: ContextHolder
 * @Description: 上下文工具类，用于在Server,Dao层获取当前登录用户信息等；
 * @author zyw
 * @create 2018-09-21 10:54
 **/
public class ContextHolder {

    /**
     * SpringMvc下获取request
     *
     * @return
     */
    public static HttpServletRequest getRequest() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return request;

    }
    /**
     * SpringMvc下获取session
     *
     * @return
     */
    public static HttpSession getSession() {
        HttpSession session = getRequest().getSession();
        return session;

    }

    /**
     * 获取当前Merchant登录用户（商家）
     * @return
     */
    public static final Merchant getSessionMerchant() {
        HttpSession session = ContextHolder.getSession();
        return (Merchant) session.getAttribute("Merchant");
    }

    /**
     * 获取当前活动总编号（用于任务创建之后的处理跟修改）
     * @return
     */
    public static final Long getSessionTaskId() {
        HttpSession session = ContextHolder.getSession();
        return  (Long)session.getAttribute("taskId");
    }

}
