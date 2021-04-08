package by.akimova.trainig.hibernate.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
// когда мы компилируем класс, гет и сет сгенерируются самостоятельно для полей id и name
@Getter
@Setter

public class Author implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //генерация ID через Autoincrement в MySQL
    private long id;

    private String name;


}
