package dreamer.website.service;

import dreamer.website.pojo.User;

import java.util.List;

/**
 * @author Kgako
 * @date 2022/5/15 19:37
 * @Version v1.0
 */
public interface UserServiceImpl {
  /* void insertDate(User user);

   List<User> selectAll();

   void deleteUserById(int id);

   void updateUserName(User user);

   User selectById(int id);*/
    void insertAccount(User user);

    int selectByuserandpass(String userName,String userPass);
}
