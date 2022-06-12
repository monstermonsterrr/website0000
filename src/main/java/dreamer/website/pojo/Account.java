package dreamer.website.pojo;

import io.swagger.annotations.ApiModelProperty;

import java.util.Date;

public class Account {
    @ApiModelProperty(value = "accIBAN")
    private String accibsn;

    private String accuserid;

    private Integer accsurplus;

    private String accaccountname;

    private String accpass;

    private String acccreateaddress;

    private Date acccreatetime;

    private String accdescription;

    public String getAccibsn() {
        return accibsn;
    }

    public void setAccibsn(String accibsn) {
        this.accibsn = accibsn == null ? null : accibsn.trim();
    }

    public String getAccuserid() {
        return accuserid;
    }

    public void setAccuserid(String accuserid) {
        this.accuserid = accuserid == null ? null : accuserid.trim();
    }

    public Integer getAccsurplus() {
        return accsurplus;
    }

    public void setAccsurplus(Integer accsurplus) {
        this.accsurplus = accsurplus;
    }

    public String getAccaccountname() {
        return accaccountname;
    }

    public void setAccaccountname(String accaccountname) {
        this.accaccountname = accaccountname == null ? null : accaccountname.trim();
    }

    public String getAccpass() {
        return accpass;
    }

    public void setAccpass(String accpass) {
        this.accpass = accpass == null ? null : accpass.trim();
    }

    public String getAcccreateaddress() {
        return acccreateaddress;
    }

    public void setAcccreateaddress(String acccreateaddress) {
        this.acccreateaddress = acccreateaddress == null ? null : acccreateaddress.trim();
    }

    public Date getAcccreatetime() {
        return acccreatetime;
    }

    public void setAcccreatetime(Date acccreatetime) {
        this.acccreatetime = acccreatetime;
    }

    public String getAccdescription() {
        return accdescription;
    }

    public void setAccdescription(String accdescription) {
        this.accdescription = accdescription == null ? null : accdescription.trim();
    }
}