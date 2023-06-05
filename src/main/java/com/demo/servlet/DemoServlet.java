package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/banana") // 클라이언트에서 특정단어로 요청이 오면 이 클래스로 연결
public class DemoServlet extends HttpServlet {

	
	//get, post메서드를 오버라이드

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//컨텐츠타입, 인코딩타입
		//resp.setContentType("text/html; charset=UTF-8;"); //중요 이해안가면 암기
		resp.setContentType("text/plain; charset=UTF-8;"); //중요 이해안가면 암기
		PrintWriter out = resp.getWriter();
		//out.println("<b>헬로월드</b>");
		out.println("헬로월드");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
	

}
