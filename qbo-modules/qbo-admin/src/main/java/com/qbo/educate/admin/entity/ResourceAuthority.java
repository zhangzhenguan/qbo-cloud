package com.qbo.educate.admin.entity;

import lombok.Data;

import java.util.Date;
import javax.persistence.*;

@Data
@Table(name = "base_resource_authority")
public class ResourceAuthority {
    @Id
    private Integer id;

    @Column(name = "authority_id")
    private String authorityId;

    @Column(name = "authority_type")
    private String authorityType;

    @Column(name = "resource_id")
    private String resourceId;

    @Column(name = "resource_type")
    private String resourceType;

    @Column(name = "parent_id")
    private String parentId;

    private String path;

    private String description;

    @Column(name = "crt_time")
    private Date crtTime;

    @Column(name = "crt_user")
    private String crtUser;

    @Column(name = "crt_name")
    private String crtName;

    @Column(name = "crt_host")
    private String crtHost;


    public ResourceAuthority(String authorityType, String resourceType) {
        this.authorityType = authorityType;
        this.resourceType = resourceType;
    }

    public ResourceAuthority() {

    }

}