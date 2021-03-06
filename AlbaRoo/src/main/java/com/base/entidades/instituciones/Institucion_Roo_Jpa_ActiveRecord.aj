// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.base.entidades.instituciones;

import com.base.entidades.instituciones.Institucion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Institucion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Institucion.entityManager;
    
    public static final EntityManager Institucion.entityManager() {
        EntityManager em = new Institucion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Institucion.countInstitucions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Institucion o", Long.class).getSingleResult();
    }
    
    public static List<Institucion> Institucion.findAllInstitucions() {
        return entityManager().createQuery("SELECT o FROM Institucion o", Institucion.class).getResultList();
    }
    
    public static Institucion Institucion.findInstitucion(String nombre) {
        if (nombre == null || nombre.length() == 0) return null;
        return entityManager().find(Institucion.class, nombre);
    }
    
    public static List<Institucion> Institucion.findInstitucionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Institucion o", Institucion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Institucion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Institucion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Institucion attached = Institucion.findInstitucion(this.nombre);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Institucion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Institucion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Institucion Institucion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Institucion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
