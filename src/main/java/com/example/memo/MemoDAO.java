package com.example.memo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemoDAO {

    @Autowired
    private SqlSession sqlSession;


    public int insertMemo(MemoVO vo){
        int result = sqlSession.insert("Memo.insertMemo", vo);
        return result;
    }

    public int deleteMemo(int seq) {
        int result = sqlSession.delete("Memo.deleteMemo",seq);
        return result;
    }

    public int updateMemo(MemoVO vo) {
        int result = sqlSession.update("Memo.updateMemo",vo);
        return result;
    }


    public MemoVO getMemo(int seq) {
        MemoVO one = sqlSession.selectOne("Memo.getMemo",seq);
        return one;
    }

    public List<MemoVO> getMemoList(){
        List<MemoVO> list = sqlSession.selectList("Memo.getMemoList");
        return list;
    }
}