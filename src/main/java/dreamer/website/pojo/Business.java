package dreamer.website.pojo;

import java.util.Date;

public class Business {
    private String busiid;

    private Integer busivolume;

    private String busicreaccibsn;

    private String busidebaccibsn;

    private String busidescription;

    private Date busicreatetime;

    private Date busizerodate;

    private String busiuserid;

    public String getBusiid() {
        return busiid;
    }

    public void setBusiid(String busiid) {
        this.busiid = busiid == null ? null : busiid.trim();
    }

    public Integer getBusivolume() {
        return busivolume;
    }

    public void setBusivolume(Integer busivolume) {
        this.busivolume = busivolume;
    }

    public String getBusicreaccibsn() {
        return busicreaccibsn;
    }

    public void setBusicreaccibsn(String busicreaccibsn) {
        this.busicreaccibsn = busicreaccibsn == null ? null : busicreaccibsn.trim();
    }

    public String getBusidebaccibsn() {
        return busidebaccibsn;
    }

    public void setBusidebaccibsn(String busidebaccibsn) {
        this.busidebaccibsn = busidebaccibsn == null ? null : busidebaccibsn.trim();
    }

    public String getBusidescription() {
        return busidescription;
    }

    public void setBusidescription(String busidescription) {
        this.busidescription = busidescription == null ? null : busidescription.trim();
    }

    public Date getBusicreatetime() {
        return busicreatetime;
    }

    public void setBusicreatetime(Date busicreatetime) {
        this.busicreatetime = busicreatetime;
    }

    public Date getBusizerodate() {
        return busizerodate;
    }

    public void setBusizerodate(Date busizerodate) {
        this.busizerodate = busizerodate;
    }

    public String getBusiuserid() {
        return busiuserid;
    }

    public void setBusiuserid(String busiuserid) {
        this.busiuserid = busiuserid == null ? null : busiuserid.trim();
    }
}