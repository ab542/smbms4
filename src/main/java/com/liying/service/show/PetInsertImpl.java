package com.liying.service.show;

import com.liying.dao.BaseDao;
import com.liying.dao.show.PetInsertDao;
import com.liying.dao.show.PetInsertDaoImpl;
import com.liying.pojo.Pet;

import java.sql.Connection;

public class PetInsertImpl implements PetInsert {
    @Override
    public Pet petInsert(Object[] params) {
        Connection connection= BaseDao.getConnection();
        PetInsertDao petInsertDao = new PetInsertDaoImpl();
        int result= petInsertDao.insertPet(connection,params);
        if(result>=1){
            System.out.println("修改成功");
            Pet pet = new Pet();
            pet.setName((String)params[0]);
            pet.setAge((String)params[1]);
            pet.setSterilizationCondition((String)params[2]);
            pet.setSpouse((String)params[3]);
            pet.setAuthor((String)params[4]);
            return pet;
        }else{
            System.out.println("修改失败");
            return null;
        }

    }
}
