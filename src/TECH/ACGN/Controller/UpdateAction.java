package TECH.ACGN.Controller;

import TECH.ACGN.Entity.BillEntity;
import TECH.ACGN.Service.BillService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.concurrent.SuccessCallback;

import javax.annotation.Resource;

@Controller
@Scope("prototype")
public class UpdateAction extends ActionSupport {
    @Resource(name="BillService")
    BillService billService;

    BillEntity bill;

    public BillService getBillService() {
        return billService;
    }

    public void setBillService(BillService billService) {
        this.billService = billService;
    }

    public BillEntity getBill() {
        return bill;
    }

    public void setBill(BillEntity bill) {
        this.bill = bill;
    }

    @Override
    public String execute() throws Exception {
        billService.Update(bill);
        return SUCCESS;
    }
}
