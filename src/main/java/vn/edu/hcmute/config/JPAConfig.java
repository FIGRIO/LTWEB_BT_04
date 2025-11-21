package vn.edu.hcmute.config;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAConfig {
    private static final EntityManagerFactory factory = Persistence.createEntityManagerFactory("HcmutePU");

    public static EntityManager getEntityManager() {
        return factory.createEntityManager();
    }
    
    public static void main(String[] args) {
        try (EntityManager em = getEntityManager()) {
            System.out.println("Kết nối Database thành công!");
        } catch (Exception e) {
            System.out.println("Lỗi kết nối: " + e.getMessage());
            e.printStackTrace();
        }
    }
}