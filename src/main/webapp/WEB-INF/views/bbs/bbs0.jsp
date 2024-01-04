<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="1" class="table table-bordered table tabel-hover">
    <tr bgcolor="lime">
        <td width=70>행번호</td>
        <td width=90>카테고리</td>
        <td width=200>제목</td>
        <td>내용</td>
        <td>작성자</td>
        <td>추천수</td>
    </tr>
	<c:forEach items="${list}" var="vo">
    <tr>
        <td>${vo.num_id}</td>
        <td>${vo.cate}</td>
        <!--   <td><a href="one?post_id=${vo.post_id}">${vo.title}</a></td>-->
         <td><a href="one?bbs_id=${vo.bbs_id}">${vo.title}</a></td>
        <td>${vo.content}</td>
        <td width=200>${vo.writer}</td>
        <td width=200>${vo.bbs_like}</td>
    </tr>
	</c:forEach>
</table>
<a href="insert.jsp"><button id="b1" class="btn btn-primary">글쓰기</button></a>
