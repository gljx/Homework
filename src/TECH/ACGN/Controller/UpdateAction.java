package TECH.ACGN.Controller;

import TECH.ACGN.Entity.BillEntity;
import TECH.ACGN.Service.BillService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
@Scope("prototype")
public class UpdateAction extends ActionSupport {
    @Resource(name="BillService")
    BillService billService;

    BillEntity bill;
}
