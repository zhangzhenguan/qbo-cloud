package com.qbo.educate.admin.rpc.service;

import com.github.wujun234.uid.UidGenerator;
import com.github.wujun234.uid.exception.UidGenerateException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class IdGeneratorService {

    @Resource
    private UidGenerator defaultUidGenerator;

    @Resource
    private UidGenerator cachedUidGenerator;

    public long getUID() throws UidGenerateException {
        return cachedUidGenerator.getUID();
    }

    public String parseUID(long uid) {
        return cachedUidGenerator.parseUID(uid);
    }

}
