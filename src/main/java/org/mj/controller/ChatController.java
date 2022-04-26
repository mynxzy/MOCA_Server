package org.mj.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@RequestMapping("/chat")
public class ChatController extends TextWebSocketHandler{
	
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	private Logger logger = LoggerFactory.getLogger(ChatController.class);
	
	  /**
     * websocket 연결 성공 시
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception{
    	System.out.println("TextWebSocketHandler : 연결 생성");
    	sessionList.add(session);
    	logger.info("{} 연결됨", session.getId());
    }
 
    /**
     * websocket 연결 종료 시
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
    	sessionList.remove(session);
    	logger.info("{} 연결됨", session.getId());
    }
    
    /**
     * websocket 메세지 수신 및 송신
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
    	logger.info("{}로 부터 {}받음", session.getId(), message.getPayload());
    	for(WebSocketSession sess : sessionList) {
    		sess.sendMessage(new TextMessage(message.getPayload()));
    	}
    }
}
