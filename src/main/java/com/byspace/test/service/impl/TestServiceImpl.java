package com.byspace.test.service.impl;

import com.byspace.test.entity.TestBean;
import com.byspace.test.service.TestService;
import com.byspace.util.CustomLogger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 上午2:43
 * To change this template use File | Settings | File Templates.
 */
@Service("testService")
@Transactional
public class TestServiceImpl implements TestService {

    @PersistenceContext
    private EntityManager em;

    @Override
    public void save(TestBean testBean) {
        em.persist(testBean);

        CustomLogger.info("save testbean", this);
    }
}
