package com.qbo.educate.admin.biz;

import com.qbo.educate.admin.entity.ResourceAuthority;
import com.qbo.educate.admin.mapper.ResourceAuthorityMapper;
import com.qbo.educate.common.biz.BaseBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Ace on 2017/6/19.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ResourceAuthorityBiz extends BaseBiz<ResourceAuthorityMapper,ResourceAuthority> {
}
