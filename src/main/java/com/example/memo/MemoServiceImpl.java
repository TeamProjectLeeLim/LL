package com.example.memo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MemoServiceImpl implements MemoService {
    @Autowired
    MemoDAO memoDAO;
    @Override
    public int insertMemo(MemoVO vo){
        return memoDAO.insertMemo(vo);
    }
    @Override
    public int deleteMemo(int seq){
        return memoDAO.deleteMemo(seq);
    }
    @Override
    public int updateMemo(MemoVO vo){
        return memoDAO.updateMemo(vo);
    }
    @Override
    public MemoVO getMemo(int seq){
        return memoDAO.getMemo(seq);
    }
    @Override
    public List<MemoVO> getMemoList(){
        return memoDAO.getMemoList();
    }
}

