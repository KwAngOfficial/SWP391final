package db.dao;

import Model.Category;
import Model.Product;
import Model.Slides;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class DbDaoTest {
    DbDao dao =new DbDao();
    //@ValueSource(strings = {"1","0"})
    @BeforeEach
    void setUp() {
        DbDao dao =new DbDao();
    }
    // check data not null
    @Test
    void getDataSlide() {
    List<Slides> lst= dao.getDataSlide();
    assertNotNull(lst);
    }
    @Test
    void getDataProduct() {
        List<Product> lst= dao.getDataProduct();
        assertNotNull(lst);
    }
    @Test
    void getDataCateById() {
        List<Category> lst= dao.getDataCate();
        int first_id=lst.get(0).getCid();
        assertThat(1).isEqualTo(first_id);
    }

    @Test
    void getDataNewProduct() {
        List<Product> lst= dao.getDataNewProduct();
        assertNotNull(lst);
    }

    @Test
    void getDataCate() {
        List<Category> lst= dao.getDataCate();
        assertNotNull(lst);
    }
    @ParameterizedTest
    @ValueSource(strings = {"1","2","3","4","5","6","7"})
    void getDataProductByCategoryId(String id) {
        List<Product> lst= dao.getDataProductByCategoryId(id);
        assertNotNull(lst);
    }
    //null
    @ParameterizedTest
    @ValueSource(strings = {"1","2","3","4","5","6","7"})
    void getDataProductById(String id) {
            Product p= dao.getDataProductById(id);
            assertNull(p);
    }
    //not null
    @ParameterizedTest
    @ValueSource(strings = {"11","12","13","14","15","17"})
    void getDataProductByIdNotNull(String id) {
        Product p= dao.getDataProductById(id);
        assertNotNull(p);
    }

    @ParameterizedTest
    @ValueSource(strings = {"11","12","13","14","15","17"})
    void setDataProductById(String id) {
        Product p= dao.getDataProductById(id);
        assertThat(p.getPid()).isEqualTo(Integer.parseInt(id));
    }
//    @Test
//    void getTotalProduct() {
//        int lst = dao.getTotalProduct();
//        assertNotNull(lst);
//        System.out.println(lst);
//    }
    @ParameterizedTest
    @ValueSource(strings = {"1","2","3","4","5","6","7"})
    void pagingProduct(int index) {
        List<Product> lst= dao.pagingProduct(index);
        assertNotNull(lst);
        for (Product a:lst) {
            System.out.println(a);
        }
    }

    @Test
    public void testSaveNewProduct() {
        Product p= new Product("iPhone 10", 1099);
        assertThat(p.getP_name()).isEqualTo("iPhone 10");
    }
    @Test
    void setDataSlide() {
        List<Slides> lst= dao.getDataSlide();
        Slides sl= new Slides(1, "img1", "Hello my friend","This is my test");
        lst.set(1,sl);
        assertThat(1).isEqualTo(1);
    }
}