package TECH.ACGN.DAO;

import TECH.ACGN.Entity.BillEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import java.util.List;

@Repository("BillDao")
public class BillDao {
    @Resource(name="HibernateTemplate")
    HibernateTemplate ht;
    @Resource(name="sessionFactory")
    SessionFactory sf;

    public SessionFactory getSf() {
        return sf;
    }

    public void setSf(SessionFactory sf) {
        this.sf = sf;
    }

    public HibernateTemplate getHt() {
        return ht;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }

    public boolean AddBill(BillEntity bill){
        ht.save(bill);
        return true;
    }

    public boolean DeleteBill(BillEntity billEntity){
        //todo
        ht.delete(billEntity);
        return true;
    }
    //查询需求默认为0
    public List<BillEntity> Query(BillEntity requre,int page, int pagesize){
        String hql="from BillEntity bill where bill.billYear=:year and bill.billMonth=:month and bill.billDay=:day and bill.billCategory=:category";
        Session session=sf.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("year",requre.getBillYear());
        query.setParameter("month",requre.getBillMonth());
        query.setParameter("day",requre.getBillDay());
        query.setParameter("category",requre.getBillCategory());
        List<BillEntity> result=query
                .setFirstResult((page-1)*pagesize)
                .setMaxResults(pagesize)
                .list();
        session.close();
        return result;
    }

    public List<BillEntity> QueryAll(int page, int pagesize){
        String hql="from BillEntity";
        Session session=sf.openSession();
        Query query = session.createQuery(hql);
        List<BillEntity> result=query
                .setFirstResult((page-1)*pagesize)
                .setMaxResults(pagesize)
                .list();
        return result;
    }

    public boolean Update(BillEntity billEntity){
        //todo
        ht.update(billEntity);
        return true;
    }

    public int findTotalPage(int pageSize) {
        String hql="select count(*)from BillEntity";
        List list = ht.find(hql);
        int rows =Integer.valueOf(list.get(0).toString()) ;
        if(rows%pageSize == 0) {
            return rows/pageSize;
        }else {
            return rows/pageSize+1;
        }
    }

    public List<BillEntity> QueryByID(BillEntity billEntity){
        String hql="from BillEntity bill where bill.id=:id";
        Session session=sf.openSession();
        Query query = session.createQuery(hql);
        query.setParameter("id",billEntity.getId());
        List<BillEntity> result=query.list();
        session.close();
        return result;
    }
}
