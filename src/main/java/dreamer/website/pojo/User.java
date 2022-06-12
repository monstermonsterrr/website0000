package dreamer.website.pojo;

import java.util.Date;

public class User {
    private String useruserid;

    private String userusername;

    private String userpass;

    private Date userlogintime;

    public String getUseruserid() {
        return useruserid;
    }

    public void setUseruserid(String useruserid) {
        this.useruserid = useruserid == null ? null : useruserid.trim();
    }

    public String getUserusername() {
        return userusername;
    }

    public void setUserusername(String userusername) {
        this.userusername = userusername == null ? null : userusername.trim();
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass == null ? null : userpass.trim();
    }

    public Date getUserlogintime() {
        return userlogintime;
    }

    public void setUserlogintime(Date userlogintime) {
        this.userlogintime = userlogintime;
    }
}