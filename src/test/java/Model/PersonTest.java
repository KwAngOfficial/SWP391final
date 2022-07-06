package Model;

import db.dao.DbDao;
import org.junit.jupiter.api.Test;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class PersonTest {
DbDao dao=new DbDao();
Person person = new Person("quangtk","quang123","quangtkhe151424@fpt.edu.vn","Kieu Quang","01235324","img2","ChiLong");
    @Test
    void getAddress() {
    assertThat(person.getAddress()).isEqualTo("ChiLong");
    }

    @Test
    void setAddress() {
        person.setAddress("abc");
        assertThat(person.getAddress()).isEqualTo("abc");
    }

    @Test
    void getUsername() {
        assertThat(person.getUsername()).isEqualTo("quangtk");
    }

    @Test
    void getPass() {
        assertThat(person.getPass()).isEqualTo("quang123");
    }

    @Test
    void getEmail() {
        assertThat(person.getEmail()).isEqualTo("quangtkhe151424@fpt.edu.vn");
    }

    @Test
    void getFullname() {
        assertThat(person.getFullname()).isEqualTo("Kieu Quang");
    }

    @Test
    void getPhone() {
        assertThat(person.getPhone()).isEqualTo("01235324");
    }

    @Test
    void getImage() {
        assertThat(person.getImage()).isEqualTo("img2");
    }

    @Test
    void setUsername() {
        person.setUsername("abc");
        assertThat(person.getUsername()).isEqualTo("abc");
    }

    @Test
    void setPass() {
        person.setPass("abc");
        assertThat(person.getPass()).isEqualTo("abc");
    }

    @Test
    void setEmail() {
        person.setEmail("abc");
        assertThat(person.getEmail()).isEqualTo("abc");
    }

    @Test
    void setFullname() {
        person.setFullname("abc");
        assertThat(person.getFullname()).isEqualTo("abc");
    }

    @Test
    void setPhone() {
        person.setPhone("abc");
        assertThat(person.getPhone()).isEqualTo("abc");
    }

    @Test
    void setImage() {
        person.setImage("abc");
        assertThat(person.getImage()).isEqualTo("abc");
    }
}