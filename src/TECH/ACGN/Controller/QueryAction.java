package TECH.ACGN.Controller;

import TECH.ACGN.Entity.BillEntity;
import TECH.ACGN.Service.BillService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller
@Scope("prototype")
public class QueryAction extends ActionSupport {
    List<BillEntity> list;
    @Resource(name="BillService")
    BillService billService;

    BillEntity bill;

    int pagesize;
    int page;
    int totalPage;

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<BillEntity> getList() {
        return list;
    }

    public void setList(List<BillEntity> list) {
        this.list = list;
    }

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

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String execute(){
        pagesize=10;
        page=1;
        this.list=billService.QueryBill(bill,page,pagesize);
        this.totalPage=billService.findTotalPage(pagesize);
        return SUCCESS;
    }
}
