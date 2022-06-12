package dreamer.website.controller;

import dreamer.website.pojo.Account;
import dreamer.website.service.AccountService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @author AnneRose
 * @date 2022/6/10 8:40
 * @Version v1.0
 */
@Api(tags = {"账户接口"})
@RestController
@Controller
@ApiModel(value = "controller", description = "关于账户")
public class AccountController {

    @Resource
    AccountService accountService;


    @RequestMapping("/addAccount")
    @ApiOperation(value = "新增账户",notes = "详细描述")
    public String accountAdd(){
        return "AccountAdd";
    }

    @RequestMapping("/Accadd")
    public String addAccount(HttpServletRequest request){
        String accIBSN = request.getParameter("accIBSN");
        String accSurplus = request.getParameter("accSurplus");
        String accAccountName = request.getParameter("accAccountName");
        String accPass = request.getParameter("accPass");
        String accCreateAddress = request.getParameter("accCreateAddress");
        String accDescription = request.getParameter("accDescription");
        Account account = new Account();
        account.setAccibsn(accIBSN);
        account.setAccsurplus(50);
        account.setAccaccountname(accAccountName);
        account.setAccpass(accPass);
        account.setAcccreateaddress(accCreateAddress);
        account.setAccdescription(accDescription);
        accountService.addAccount(account);
        return "/AccountAdd";
    }
}
