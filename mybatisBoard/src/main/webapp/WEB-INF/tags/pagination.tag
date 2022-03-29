<%@ tag description="pagination" pageEncoding="UTF-8"%>
<%@ tag import="java.util.ArrayList" %>
<%@ attribute name="recordCount" type="java.lang.Integer" required="true" %>
<%@ attribute name="pageSize" type="java.lang.Integer" required="true" %>
<%@ attribute name="queryStringName" type="java.lang.String" required="true" %>
<%!
private class Page {
	
	int page;
	String label;
	Page(int page, String label) {
		this.page = page;
		this.label = label;
	}
	
}
%>

<%
int recordCount = (Integer)jspContext.getAttribute("recordCount");
int pageSize = (Integer)jspContext.getAttribute("pageSize");
String name = (String)jspContext.getAttribute("queryStringName");

int currentPage = 1;
if (request.getParameter(name) != null)
	currentPage = Integer.parseInt(request.getParameter(name));

int pageCount = recordCount / pageSize;
if (pageCount * pageSize < recordCount ) pageCount++;

String queryString = request.getQueryString();
if (queryString == null){
	queryString = name + "=@@@";
}else if(queryString.matches(".*" + name + "=[0-9]+.*")){
	queryString = queryString.replaceAll(name + "=[0-9]+", name + "=@@@");
}else{
	queryString = queryString + "&" + name + "=@@@";
}
String url = request.getAttribute("javax.servlet.forward.request_uri") + "?" + queryString;

if(currentPage > pageCount) currentPage = pageCount;
int base = ((currentPage - 1) / 5) * 5;

ArrayList<Page> pages = new ArrayList<Page>();
if(base > 0) pages.add(new Page(base, "&It;"));

for(int i=1; i<=5; i++){
	int n = base + i;
	if (n > pageCount) break;
	pages.add(new Page(n, String.valueOf(n)));
}
int n = base + 6;
if (n <= pageCount)
	pages.add(new Page(n, "&gt;"));
%>
<!-- 화면 하단에 페이지 번호 목록을 출력하기 위한 확장 태그 구현 -->
<table class="pagination">
	<tr>
	<%for (Page p : pages) { %>
	<td class='<%=p.page == currentPage ? "active" : "" %>'>
		<a href='<%=url.replace("@@@", String.valueOf(p.page)) %>'><%=p.label %></a>
	</td><%} %>
	</tr>
</table>