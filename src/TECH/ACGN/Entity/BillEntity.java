package TECH.ACGN.Entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "bill", schema = "home_bill_db", catalog = "")
public class BillEntity {
    private int id;
    private Integer income;
    private Integer expend;
    private Integer billYear;
    private Integer billMonth;
    private Integer billDay;
    private Integer billCategory;
    private String remark;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "income")
    public Integer getIncome() {
        return income;
    }

    public void setIncome(Integer income) {
        this.income = income;
    }

    @Basic
    @Column(name = "expend")
    public Integer getExpend() {
        return expend;
    }

    public void setExpend(Integer expend) {
        this.expend = expend;
    }

    @Basic
    @Column(name = "bill_year")
    public Integer getBillYear() {
        return billYear;
    }

    public void setBillYear(Integer billYear) {
        this.billYear = billYear;
    }

    @Basic
    @Column(name = "bill_month")
    public Integer getBillMonth() {
        return billMonth;
    }

    public void setBillMonth(Integer billMonth) {
        this.billMonth = billMonth;
    }

    @Basic
    @Column(name = "bill_day")
    public Integer getBillDay() {
        return billDay;
    }

    public void setBillDay(Integer billDay) {
        this.billDay = billDay;
    }

    @Basic
    @Column(name = "bill_category")
    public Integer getBillCategory() {
        return billCategory;
    }

    public void setBillCategory(Integer billCategory) {
        this.billCategory = billCategory;
    }

    @Basic
    @Column(name = "remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BillEntity that = (BillEntity) o;
        return id == that.id &&
                Objects.equals(income, that.income) &&
                Objects.equals(expend, that.expend) &&
                Objects.equals(billYear, that.billYear) &&
                Objects.equals(billMonth, that.billMonth) &&
                Objects.equals(billDay, that.billDay) &&
                Objects.equals(billCategory, that.billCategory) &&
                Objects.equals(remark, that.remark);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, income, expend, billYear, billMonth, billDay, billCategory, remark);
    }

    public BillEntity() {
        this.id = 0;
        this.income = 0;
        this.expend = 0;
        this.billYear = 0;
        this.billMonth = 0;
        this.billDay = 0;
        this.billCategory = 0;
        this.remark = null;
    }
}
