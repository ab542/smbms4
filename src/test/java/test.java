import com.liying.dao.BaseDao;
import com.liying.dao.show.InsertUserShowDaoImpl;
import com.liying.dao.show.QueryMyShowDaoImpl;
import com.liying.dao.show.ShowDao;
import com.liying.dao.show.ShowDaoImpl;
import com.liying.pojo.User;
import com.liying.pojo.UserShow;
import com.liying.service.show.ToQueryJson;
//import com.liying.service.show.ToQueryJsonImpl;
import com.liying.service.show.ToQueryJsonImpl;
import com.liying.service.user.UserRegisterService;
import com.liying.service.user.UserRegisterServiceImpl;
import com.liying.service.user.UserServiceImpl;
import com.liying.service.user.UserUpdateServiceImpl;
//import com.liying.servlet.show.QueryUserShow;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class test {
    @Test
    public void test() throws SQLException {
        /*
        UserServiceImpl userService = new UserServiceImpl();
        User admin = userService.login("liying", "a123456");
        System.out.println(admin.getUserCode());
        System.out.println(admin.getUserPassword());*/
        /*UserRegisterServiceImpl userRegisterService=new UserRegisterServiceImpl();
        boolean a=userRegisterService.register("baba1","w123456","17373027967");
        System.out.println(a);*/
       /* ShowDaoImpl showDao  = new ShowDaoImpl();
        Connection connection = BaseDao.getConnection();
        List<UserShow> userShowList=showDao.queryUserShowByPage(connection,1,2);
        System.out.println(userShowList);*/
       /* ToQueryJsonImpl toQueryJson = new ToQueryJsonImpl();
        toQueryJson.toJsons("pet_show1",1,2);*/
      /*  LinkedList values = new LinkedList();
        values.add("11");
        values.add("22222");
        LinkedList file1 = new LinkedList();
        file1.add("D:");
        file1.add("D:");
        InsertUserShowDaoImpl insertUserShowDao = new InsertUserShowDaoImpl();
        insertUserShowDao.insertShow(BaseDao.getConnection(),values,file1);*/
       /* String author="作者:baba";
        author= author.substring(3);
        System.out.println(author);
*/
      /*  Connection connection = BaseDao.getConnection();
        QueryMyShowDaoImpl queryMyShowDao= new QueryMyShowDaoImpl();
       LinkedList<UserShow> userShows= queryMyShowDao.queryMyShow1(connection,"baba");
        System.out.println(userShows);*/


    }
}
