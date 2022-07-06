package Model;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class ProductTest {

    @Test
    void getPid() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getPid()).isEqualTo(3);
    }

    @Test
    void getP_name() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getP_name()).isEqualTo("Door");
    }

    @Test
    void getP_image() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getP_image()).isEqualTo("img3");
    }

    @Test
    void getPrice() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getPrice()).isEqualTo(4.53F);
    }

    @Test
    void getDescription() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getDescription()).isEqualTo("cua go");
    }

    @Test
    void getC_id() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getC_id()).isEqualTo(1);
    }

    @Test
    void getP_new() {
        Product p= new Product(3, "Door","img3", 4.53F, "cua go", 1, 2);
        assertThat(p.getIn_id()).isEqualTo(2);
    }
}