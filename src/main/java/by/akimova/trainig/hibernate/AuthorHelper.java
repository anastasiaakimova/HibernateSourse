package by.akimova.trainig.hibernate;

import by.akimova.trainig.hibernate.entity.Author;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class AuthorHelper {
    private SessionFactory sessionFactory;

    public AuthorHelper() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    public List<Author> getAuthorList() {


        // открываем сессию
        Session session = sessionFactory.openSession();

        session.get(Author.class, 1L); // получение объекта по id

        //подготовка запроса
        // объект-конструктор запросов для criteria API
        CriteriaBuilder cb = session.getCriteriaBuilder(); // построитель запросов

        CriteriaQuery cq = cb.createQuery(Author.class); // специальный объект с помощью которого формируем запрос

        Root<Author> root = cq.from(Author.class);  // корневой ентити основная таблица

        //не обязательный
        cq.select(root); // возврат всех данных таблицы

        // выполнение запроса
        Query query = session.createQuery(cq);

        List<Author> authorList = query.getResultList();// возвращает коллекцию объектов типа автора

        session.close();

        return authorList;

    }
    public  Author getAuthor(String name){return null;}
}
