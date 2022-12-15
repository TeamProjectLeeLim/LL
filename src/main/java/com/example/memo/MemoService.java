package com.example.memo;

import java.util.List;

public interface MemoService {
    public int insertMemo(MemoVO vo);
    public int deleteMemo(int seq);
    public int updateMemo(MemoVO vo);
    public MemoVO getMemo(int seq);
    public List<MemoVO> getMemoList();
}