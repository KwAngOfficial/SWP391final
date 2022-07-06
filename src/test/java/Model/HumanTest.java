package Model;

import db.dao.DbDao;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;


class HumanTest {
    DbDao dao= new DbDao();
    Human human=new Human("quangtk","quang123","1",true);
    @BeforeEach
    void setUp() {
        DbDao dao= new DbDao();
    }
    @Test
    void testGetUsername() {
        assertThat(human.getUsername()).isEqualTo("quangtk");
    }

    @Test
    void testGetPassword() {
        assertThat(human.getPassword()).isEqualTo("quang123");
    }

    @Test
    void testGetRole() {
        assertThat(human.getRole()).isEqualTo("1");
    }


}