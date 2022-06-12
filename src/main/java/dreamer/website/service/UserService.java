package dreamer.website.service;


import dreamer.website.dao.UserMapper;
import dreamer.website.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Kgako
 * @date 2022/5/15 19:38
 * @Version v1.0
 */
@Service(value = "userService")
public class UserService implements UserServiceImpl {
    @Resource
    UserMapper userMapper;
    @Override
    public void insertAccount(User user) {
        userMapper.insert(user);
    }

    @Override
    public int selectByuserandpass(String userName, String userPass) {
        int count = userMapper.selectByuserandpass(userName, userPass);
        return count;
    }

   /* @Resource
    private UserMapper userMapper;

    @Override
    public void insertDate(User user) {
        userMapper.insert(user);
    }

    @Override
    public List<User> selectAll() {
      return   userMapper.selectAll();
    }

    @Override
    public void deleteUserById(int id) {
        userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateUserName(User user) {
        user.setUsername("AnneRose");
        userMapper.updateByPrimaryKey(user);
    }


    public User selectById(int id){
        User user = userMapper.selectByPrimaryKey(id);
        return user;
    }
*/

}
