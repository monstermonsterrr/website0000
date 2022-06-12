package dreamer.website.controller;

import dreamer.website.pojo.Business;

import dreamer.website.service.BusinessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author AnneRose
 * @date 2022/6/10 7:04
 * @Version v1.0
 */
@Controller
public class BusinessController {
    @Resource
    BusinessService businessService;

    @RequestMapping("/addTran")
    public String addTran(HttpServletRequest request){
        String busiCreAccIbsn = request.getParameter("busiCreAccIbsn");
        String busiDebAccIbsn = request.getParameter("busiDebAccIbsn");
        String busiVolume = request.getParameter("busiVolume");
        String busiDescription = request.getParameter("busiDescription");
        String busiZeroDate = request.getParameter("busiZeroDate");
        Business bs = new Business();
        bs.setBusicreaccibsn(busiCreAccIbsn);
        bs.setBusidebaccibsn(busiDebAccIbsn);
        bs.setBusidescription(busiDescription);
        bs.setBusivolume(2000);
        bs.setBusizerodate(new Date());
        bs.setBusiuserid("51aa216a-e7ce-11ec-9864-e00af6354038");
        businessService.insertTransaction(bs);
        return "redirect:AccountTransaction";

    }

    @RequestMapping("/AccountTransaction")
    public void selectAll(Model model){
        List<Business> bsList = businessService.selectAll();
        model.addAttribute("businessList",bsList);

    }
}
