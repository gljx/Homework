package TECH.ACGN.Controller;

import TECH.ACGN.Entity.BillEntity;
import TECH.ACGN.Service.BillService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
@Scope("prototype")
public class DeleteAction extends ActionSupport {
    @Resource(name="BillService")
    BillService billService;

    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String execute() throws Exception {
        System.out.println(id);
        billService.delete(new BillEntity(id));
        return SUCCESS;
    }
}
