<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Management | Pages</title>
		<script type="text/javascript" src="/static/ckeditor/ckeditor.js"></script>
	</head>
	<body>
		<h1>Pages</h1>
		<table>
			<tr>
				<td width="100%">
					<c:choose>
						<c:when test="${empty pages}">
							No pages have been defined.
						</c:when>
						<c:otherwise>
							<table width="100%">
								<tr>
									<td width="25%"><b>Title</b></td>
									<td width="25%"><b>Link Title</b></td>
									<td width="10%"></td>
									<td width="10%"></td>
									<td width="30%"></td>
								</tr>
								<c:forEach items="${pages}" var="page">
									<tr>
										<td>${page.title}</td>
										<td>${page.key}</td>
										<td>
											<form action="/site/management/pages/edit/${page.id}" method="GET">
												<input type="submit" value="edit"/>
											</form>
										</td>
										<td>
											<form action="/site/management/pages/delete/${page.id}" method="POST">
												<input type="submit" value="delete"/>
											</form>
										</td>
										<td>&nbsp;</td>
									</tr>
								</c:forEach>
							</table>
						</c:otherwise>
					</c:choose>
					<br/>
					<form method="post" action="/site/management/pages/add">
						Title: <input type="text" name="title"/><br/>
						Link: <input type="text" name="linkTitle"/></br>
						Body:<br/>
						<textarea cols="80" id="body" name="body" rows="10"></textarea><br/>
						<script type="text/javascript">
						//<![CDATA[
							CKEDITOR.replace( 'body', { toolbar : [ ['Source'], 
								                                    [ 'Bold','Italic','Underline','Strike','-','Subscript','Superscript' ],
							                                        ['NumberedList','BulletedList','-','Outdent','Indent'],
							                                        ['Link','Unlink','Anchor'],
							                                        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
							                                        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'] ] } );
						//]]>
						</script>
						Meta Description:<br/>
						<textarea rows="3" cols="40" name="metaDescription"></textarea><br/>
						Meta Keywords: <input type="text" name="metaKeywords"/><br/>
						Blogger Tags: <input type="text" name="tags"/><br/>
						<input type="submit" value="add"/>
					</form>
				</td>
			</tr>
		</table>
		<br/>
		Return to <a href="/site/management">management menu</a>.
	</body>
</html>