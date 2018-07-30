package service.service.impl;

import dao.MarkDao;
import dao.dao.impl.MarkDaoImpl;
import domain.Mark;
import domain.User;
import service.MarkService;

import java.sql.SQLException;
import java.util.List;

/**
 * @ClassName MarkServiceImpl
 * @Description TODO
 * @Author Yixiang Zhao
 * @Date 2018/7/30 19:11
 * @Version 1.0
 */
public class MarkServiceImpl implements MarkService {

    MarkDao dao = new MarkDaoImpl();

    @Override
    public void createMark(User user, Mark mark) throws SQLException {
        dao.createMark(user, mark);
    }

    @Override
    public List<Mark> listMark(User user) throws SQLException {
        return dao.listMark(user);
    }
}
