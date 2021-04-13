package by.akimova.trainig.hibernate;

import by.akimova.trainig.hibernate.entity.Author;
import org.hibernate.Session;

public class Start {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        for (Author author:new AuthorHelper().getAuthorList()
             ) {
            System.out.println("author = " + author.getName());
        }
        }
}
