package com.example.spring02.service.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.spring02.model.board.dao.BoardDAO;
import com.example.spring02.model.board.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	BoardDAO boardDao;
	
	// 01. 寃뚯떆湲��벐湲�
	@Transactional // �듃�옖�옲�뀡 泥섎━ 硫붿꽌�뱶濡� �꽕�젙
	@Override
	public void create(BoardVO vo) throws Exception {
		String title = vo.getTitle();
		String content = vo.getContent();
		String writer = vo.getWriter();
		// *�깭洹몃Ц�옄 泥섎━ (< ==> &lt; > ==> &gt;)
		// replace(A, B) A瑜� B濡� 蹂�寃�
		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		writer = writer.replace("<", "&lt;");
		writer = writer.replace("<", "&gt;");
		// *怨듬갚臾몄옄 泥섎━  
		title = title.replace("  ",	"&nbsp;&nbsp;");
		writer = writer.replace("  ",	"&nbsp;&nbsp;");
		// *以꾨컮轅� 臾몄옄泥섎━
		content = content.replace("\n", "<br>");
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		// 寃뚯떆臾� �벑濡�
		boardDao.create(vo);
		// 寃뚯떆臾쇱쓽 泥⑤��뙆�씪 �젙蹂� �벑濡�
		String[] files = vo.getFiles(); // 泥⑤��뙆�씪 諛곗뿴
		if(files == null) return; // 泥⑤��뙆�씪�씠 �뾾�쑝硫� 硫붿꽌�뱶 醫낅즺
		// 泥⑤��뙆�씪�뱾�쓽 �젙蹂대�� tbl_attach �뀒�씠釉붿뿉 insert
		for(String name : files){ 
			boardDao.addAttach(name);
		}
		
	}
	// 02. 寃뚯떆湲� �긽�꽭蹂닿린
	@Override
	public BoardVO read(int bno) throws Exception {
		return boardDao.read(bno);
	}
	// 03. 寃뚯떆湲� �닔�젙
	@Transactional
	@Override
	public void update(BoardVO vo) throws Exception {
		boardDao.update(vo);
		// 泥⑤��뙆�씪 �젙蹂� �벑濡�
		String[] files = vo.getFiles(); // 泥⑤��뙆�씪 諛곗뿴
		// 泥⑤��뙆�씪�씠 �뾾�쑝硫� 醫낅즺
		if(files == null) return;
		// 泥⑤��뙆�씪�뱾�쓽 �젙蹂대�� tbl_attach �뀒�씠釉붿뿉 insert
		for(String name : files){
			boardDao.updateAttach(name, vo.getBno());
		}
	}
	// 04. 寃뚯떆湲� �궘�젣
	@Override
	public void delete(int bno) throws Exception {
		boardDao.delete(bno);
	}
	// 05. 寃뚯떆湲� �쟾泥� 紐⑸줉
	@Override
	public List<BoardVO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		return boardDao.listAll(start, end, searchOption, keyword);
	}
	
	// 06. 寃뚯떆湲� 議고쉶�닔 利앷�
	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		long update_time = 0;
		// �꽭�뀡�뿉 ���옣�맂 議고쉶�떆媛� 寃��깋
		// 理쒖큹濡� 議고쉶�븷 寃쎌슦 �꽭�뀡�뿉 ���옣�맂 媛믪씠 �뾾湲� �븣臾몄뿉 if臾몄� �떎�뻾X
		if(session.getAttribute("update_time_"+bno) != null){
								// �꽭�뀡�뿉�꽌 �씫�뼱�삤湲�
			update_time = (Long)session.getAttribute("update_time_"+bno);
		}
		// �떆�뒪�뀥�쓽 �쁽�옱�떆媛꾩쓣 current_time�뿉 ���옣
		long current_time = System.currentTimeMillis();
		// �씪�젙�떆媛꾩씠 寃쎄낵 �썑 議고쉶�닔 利앷� 泥섎━ 24*60*60*1000(24�떆媛�)
		 // �떆�뒪�뀥�쁽�옱�떆媛� - �뿴�엺�떆媛� > �씪�젙�떆媛�(議고쉶�닔 利앷�媛� 媛��뒫�븯�룄濡� 吏��젙�븳 �떆媛�)
		if(current_time - update_time > 5*1000){
			boardDao.increaseViewcnt(bno);
			// �꽭�뀡�뿉 �떆媛꾩쓣 ���옣 : "update_time_"+bno�뒗 �떎瑜몃��닔�� 以묐났�릺吏� �븡寃� 紐낅챸�븳 寃�
			session.setAttribute("update_time_"+bno, current_time);
			
		}
	}
	// 07. 寃뚯떆湲� �젅肄붾뱶 媛��닔
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		return boardDao.countArticle(searchOption, keyword);
	}
	
	// 08. 寃뚯떆湲��쓽 泥⑤��뙆�씪 紐⑸줉
	@Override
	public List<String> getAttach(int bno) {
		return boardDao.getAttach(bno);
	}
	// 09. 寃뚯떆湲��쓽 泥⑤��뙆�씪 �궘�젣 泥섎━
	@Override
	public void deleteFile(String fullname) {
		boardDao.deleteFile(fullname);
	}

}
