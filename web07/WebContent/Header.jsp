<%@page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<div style="background-color:#ccc;color:#000;height:20px;padding: 5px;">
Simple Project
<span style="float:right;">
<a style="color:white;" 
  href="<%=request.getContextPath()%>/project/list.do">도서</a>
<a style="color:white;" 
  href="<%=request.getContextPath()%>/member/list.do">회원</a>  

<c:if test="${empty sessionScope.member or 
              empty sessionScope.member.email}">
<a style="color:white;" 
  href="<%=request.getContextPath()%>/auth/login.do">로그인</a>
</c:if>  
            
<c:if test="${!empty sessionScope.member and 
              !empty sessionScope.member.email}">
${sessionScope.member.name} 님 환영합니다.
(<a style="color:white;" 
  href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a>)
</c:if>
</span>
</div>