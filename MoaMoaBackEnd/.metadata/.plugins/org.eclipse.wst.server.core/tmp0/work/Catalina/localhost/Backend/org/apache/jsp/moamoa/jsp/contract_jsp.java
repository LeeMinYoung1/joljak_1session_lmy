/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-06-22 18:04:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.moamoa.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.*;
import java.sql.*;

public final class contract_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/css/bootstrap.min.css\">\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>밀키트 계약</title>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	var openlist;\r\n");
      out.write("	function mealkit_list_open(){\r\n");
      out.write("		window.name = \"parentForm\";\r\n");
      out.write("		parentForm = window.open(\"con_post_list.jsp\", \"post_list\", \"width=800, height= 500, top=50, left=50\");\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	let today = new Date();\r\n");
      out.write("	\r\n");
      out.write("	var year = today.getFullYear();\r\n");
      out.write("	var month = ('0' + (today.getMonth() + 1)).slice(-2);\r\n");
      out.write("	var day = ('0' + today.getDate()).slice(-2);\r\n");
      out.write("\r\n");
      out.write("	var dateString = year + '-' + month  + '-' + day;\r\n");
      out.write("	document.getElementById(\"now_date\").value = dateString;\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"jumbotron\"> \r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<h1 class=\"display-3\">밀키트 계약</h1>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("	<!--action=\"../jsp/postWrite.jsp\"  -->\r\n");
      out.write("		<form method=\"post\" class=\"form-horizontal\" \r\n");
      out.write("			action=\"contractInfo.jsp\">\r\n");
      out.write("			");
      out.write("\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">계약 밀키트</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" id=\"pInput\" name=\"contract_code\" class=\"form-control\" readonly/>\r\n");
      out.write("					<input type=\"button\" name=\"name\" class=\"form-control\" onclick=\"mealkit_list_open();\" value=\"레시피 선택\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("			");

			Date nowTime = new Date();
			SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
			
			
      out.write("\r\n");
      out.write("			\r\n");
      out.write("				<label class=\"col-sm-2\">계약일</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" style=\"width: 90%; border-left-width:0; 　border-right-width:0; 　border-top-width:0; 　border-bottom-width:1;\" id=\"now_date\" name=\"now_date\" class=\"form-control\" value=\"");
      out.print( sf.format(nowTime) );
      out.write("\" readonly />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>	\r\n");
      out.write("			<br>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">계약 사항</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" style=\"width: 90%;border-left-width:0; 　border-right-width:0; 　border-top-width:0; 　border-bottom-width:1;\" name=\"contract_fact\" class=\"form-control\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>	\r\n");
      out.write("			<br>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">밀키트 값 설정</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" style=\"width: 90%;border-left-width:0; 　border-right-width:0; 　border-top-width:0; 　border-bottom-width:1;\" name=\"milkit_registration_amount\" class=\"form-control\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<br>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">계약 금액</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" style=\"width: 90%;border-left-width:0; 　border-right-width:0; 　border-top-width:0; 　border-bottom-width:1;\" name=\"contract_amount\" class=\"form-control\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<br>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<label class=\"col-sm-2\">밀키트 수량</label>\r\n");
      out.write("				<div class=\"col-sm-3\">\r\n");
      out.write("					<input type=\"text\" style=\"width: 90%;border-left-width:0; 　border-right-width:0; 　border-top-width:0; 　border-bottom-width:1;\" name=\"mealkit_count\" class=\"form-control\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>제목 : </strong>\r\n");
      out.write("                                    <input type=\"text\" name=\"mealkit_title\" id=\"mealkit_title\" placeholder=\"제목을 입력해주세요\" style=\"width: 90%;\">\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>재료 : </strong>\r\n");
      out.write("                                    <input type=\"text\" name=\"main_ingredient\" id=\"main_ingredient\" placeholder=\"재료를 입력해주세요 (예 : 사과, 바나나)\" style=\"width: 90%;\">\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>내용 : </strong>\r\n");
      out.write("                                <textarea  name=\"mealkit_content\" id=\"mealkit_content\" rows=\"10\" cols=\"100\" style=\"width: 100%; height: 600px;\"></textarea>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <hr>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>카테고리 : </strong>\r\n");
      out.write("                                    <select name=\"mealkit_sort\" id=\"mealkit_sort\">\r\n");
      out.write("                                        <option value=\"none\">선택</option>\r\n");
      out.write("                                        <option value=\"korean_food\">한식</option>           \r\n");
      out.write("                                        <option value=\"chinese_food\">중식</option>\r\n");
      out.write("                                        <option value=\"japanese_food\">일식</option>\r\n");
      out.write("                                        <option value=\"western_food\">양식</option>\r\n");
      out.write("                                        <option value=\"dessert\">디저트</option>\r\n");
      out.write("                                        <option value=\"etc\">기타</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <!-- <p>\r\n");
      out.write("                                    <strong>해시태그 : </strong>\r\n");
      out.write("                                    <input type=\"text\" placeholder=\"해시태그를 입력하세요\" style=\"width: 30%;\">\r\n");
      out.write("                                    <input type=\"button\" value=\"등록\">\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>첨부파일 : </strong>\r\n");
      out.write("                                    <input type=\"button\" value=\"파일 선택\">\r\n");
      out.write("                                    선택된 파일 없음\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <strong>링크 : </strong>\r\n");
      out.write("                                    <input type=\"text\" placeholder=\"링크를 입력하세요\" style=\"width: 30%;\">\r\n");
      out.write("                                    <input type=\"button\" value=\"등록\">\r\n");
      out.write("                                </p> -->\r\n");
      out.write("                                <hr>\r\n");
      out.write("			<div class=\"form-group row\">\r\n");
      out.write("				<div class=\"col-sm-offset2 col-sm-10\">\r\n");
      out.write("					<input type=\"submit\" class=\"btn btn-primary\" value=\"등록\" />\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}