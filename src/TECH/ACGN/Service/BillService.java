package TECH.ACGN.Service;

import TECH.ACGN.DAO.BillDao;
import TECH.ACGN.Entity.BillEntity;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("BillService")
public class BillService {
    @Resource(name="BillDao")
    BillDao billDao;

    public BillDao getBillDao() {
        return billDao;
    }

    public void setBillDao(BillDao billDao) {
        this.billDao = billDao;
    }

    public void AddBill(BillEntity bill){
        billDao.AddBill(bill);
    }

    public List<BillEntity> QueryBill(BillEntity requre,int page,int pagesize){
        if(requre==null){
            return billDao.QueryAll(page,pagesize);
        }else{
            return billDao.Query(requre,page,pagesize);
        }
    }

    public int findTotalPage(int pagesize){
        return billDao.findTotalPage(pagesize);
    }
}
