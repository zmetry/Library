import com.zmetry.pojo.Books;
import com.zmetry.service.BookService;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {

    @Test
    public void test(){

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        BookService bookSerciceImpl = (BookService) context.getBean("BookSerciceImpl");
        List<Books> books = bookSerciceImpl.queryAllBooks();
        for (Books book : books) {
            System.out.println(book);
        }
    }

}
