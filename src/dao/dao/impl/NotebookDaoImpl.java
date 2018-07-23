package dao.dao.impl;

import dao.NotebookDao;
import domain.Notebook;
import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @ClassName NotebookDaoImpl
 * @Description TODO
 * @Author Yixiang Zhao
 * @Date 2018/7/20 16:04
 * @Version 1.0
 */
public class NotebookDaoImpl implements NotebookDao {

    @Override
    public Notebook createNotebook(Notebook notebook, User user) throws SQLException {
        String sql = "insert into notebook values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        Object[] params = {notebook.getId(), user.getId(), notebook.getBookName(),
                            notebook.getIsShare(), notebook.getIsDelete(), notebook.getCreateTime(),
                            notebook.getUpdateTime(), notebook.getIsStart(), notebook.getNoteNumber(),
                            notebook.getSharedpeople()};
        qr.update(sql, params);
        return notebook;
    }
}