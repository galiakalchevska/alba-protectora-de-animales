// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.base.entidades.personas;

import com.base.entidades.personas.RelacionesALBA;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect RelacionesALBA_Roo_Jpa_Entity {
    
    declare @type: RelacionesALBA: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RelacionesALBA.id;
    
    @Version
    @Column(name = "version")
    private Integer RelacionesALBA.version;
    
    public Long RelacionesALBA.getId() {
        return this.id;
    }
    
    public void RelacionesALBA.setId(Long id) {
        this.id = id;
    }
    
    public Integer RelacionesALBA.getVersion() {
        return this.version;
    }
    
    public void RelacionesALBA.setVersion(Integer version) {
        this.version = version;
    }
    
}
