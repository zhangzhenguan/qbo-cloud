package com.qbo.educate.common.msg.auth;

import com.qbo.educate.common.constant.RestCodeConstants;
import com.qbo.educate.common.msg.BaseResponse;

/**
 * Created by ace on 2017/8/25.
 */
public class TokenForbiddenResponse  extends BaseResponse {
    public TokenForbiddenResponse(String message) {
        super(RestCodeConstants.TOKEN_FORBIDDEN_CODE, message);
    }
}
