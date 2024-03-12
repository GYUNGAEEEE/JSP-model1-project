package exammvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		commandHandlerMap.put("/add", new AddHandler());
		commandHandlerMap.put("/min", new MinHandler());
	}
	
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Controller가 요청 분석");
		String requestURI = req.getRequestURI().toString();
		System.out.println("요청 URI: " + requestURI);
		
		String command = requestURI.substring(req.getContextPath().length());
		System.out.println("command: " + command);
		
		CommandHandler handler = null;
		String viewPage = null;
		
		if(requestURI.indexOf(req.getContextPath()) == 0) {
			handler = commandHandlerMap.get(command);
			viewPage = handler.handlerAction(req, resp);
			System.out.println("Model관련(비즈니스 로직) 동작");
		}
		
		System.out.println("Controller가 결과 데이터를 보여줄 뷰로 포워딩");
		req.getRequestDispatcher(viewPage).forward(req, resp);
	}
	
}
