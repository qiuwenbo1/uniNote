package dao.dao.impl;

import dao.NoteDao;
import domain.Note;
import domain.Notebook;
import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.JDBCUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * @ClassName NoteDaoImpl
 * @Description TODO
 * @Author Yixiang Zhao
 * @Date 2018/7/23 15:29
 * @Version 1.0
 */
public class NoteDaoImpl implements NoteDao {
    @Override
    public void createNote(User user, Note note) throws SQLException {
        String sql = "insert into note values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] params = {note.getId(), user.getId(), note.getContent(), note.getCreateTime(),
                            note.getUpdateTime(), note.getMarkID(), note.getNotebookID(), note.getRemindTime(),
                            note.getIsStart(), note.getIsShare(), note.getIsdelete(), note.getSharedpeople(),
                            note.getTitle()};
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        qr.update(sql, params);
    }

    @Override
    public List<Note> listNote(User user, Notebook notebook) throws SQLException {
        String sql = "select * from note where userid = ? and notebookID = ?";
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        return qr.query(sql, new BeanListHandler<Note>(Note.class), user.getId(), notebook.getId());
    }

    @Override
    public Note findContent(int noteID) throws SQLException {
        String sql = "select * from note where id = ?";
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        return qr.query(sql, new BeanHandler<Note>(Note.class), noteID);
    }
}
