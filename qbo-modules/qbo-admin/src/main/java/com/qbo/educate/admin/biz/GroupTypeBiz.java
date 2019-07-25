package com.qbo.educate.admin.biz;

import org.springframework.stereotype.Service;

import com.qbo.educate.admin.entity.GroupType;
import com.qbo.educate.admin.mapper.GroupTypeMapper;
import com.qbo.educate.common.biz.BaseBiz;
import org.springframework.transaction.annotation.Transactional;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-12 8:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GroupTypeBiz extends BaseBiz<GroupTypeMapper,GroupType> {
}
