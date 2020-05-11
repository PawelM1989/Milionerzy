package dao;


import entity.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateUtil;

import java.util.List;


public class UserDao{


    public User findById(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.find(User.class,id);
        session.close();
        return user;
    }

    public User findById(String id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.find(User.class,id);
        session.close();
        return user;
    }


    public void insert (User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.persist(user);
        session.flush();
        session.close();
    }

    public void delete(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(user);
        session.flush();
        session.close();
    }

    public void update(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        if(session.find(User.class, user.getLogin()) != null) {
            session.merge(user);
        }
        session.flush();
        session.close();
    }




    ///////////////////////////

//    public List<Question> findByMark(String mark){
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Query<Question> query = session.createQuery("select o from Car o where o.mark=:mark", Question.class)
//                .setParameter("mark", mark);
//        List<Question> foundQuestions = query.getResultList();
//        session.close();
//        return foundQuestions;
//    }
//
//    public User findByEmail(String email){
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Query<User> query = session.createQuery("select o from User o where o.email=:email", User.class)
//                .setParameter("email", email);
//        List<User> foundUsers = query.getResultList();
//        User user =null;
//        if (foundUsers.size()>0){
//            user = foundUsers.get(0);}
//        System.out.println("------"+ user);
//        session.close();
//        return user;
//    }
//
//    public List<Question> findAll(){
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        Query<Question> query = session.createQuery("SELECT E FROM Car E");
//
//
//        query.setReadOnly(true);
//        List<Question> foundQuestions = query.getResultList();
//        session.close();
//        return foundQuestions;
//    }

}
