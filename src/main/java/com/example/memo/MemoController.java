package com.example.memo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/memo")
public class MemoController {


    @Autowired
    MemoService memoService;


    @RequestMapping(value="/list", method = RequestMethod.GET)
    public String memolist(Model model){
        model.addAttribute("list", memoService.getMemoList());
        return "memo/list";
    }

    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String addPost(){ return "memo/addpostform"; }

    @RequestMapping(value="/addok", method = RequestMethod.POST)
    public String addPostOK(MemoVO vo){
        if(memoService.insertMemo(vo)==0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공 ");
        return "redirect:list";
    }

    @RequestMapping(value="/editform/{id}", method = RequestMethod.GET)
    public String editPost ( @PathVariable("id") int id, Model model){
        MemoVO memoVO = memoService.getMemo(id);
        model.addAttribute("u", memoVO);
        return "memo/editform";
    }

    @RequestMapping(value="/editok", method = RequestMethod.POST)
    public String editPostOk(MemoVO vo) {
        if(memoService.updateMemo(vo)==0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/delete_ok/{id}", method = RequestMethod.GET)
    public String deletePostOk ( @PathVariable("id") int id){
        if(memoService.deleteMemo(id)==0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
