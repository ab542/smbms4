package com.liying.service.user;

import java.sql.Connection;

public interface UserRegisterService {
    public boolean register( String userCode, String userPassword, String phone);
}
