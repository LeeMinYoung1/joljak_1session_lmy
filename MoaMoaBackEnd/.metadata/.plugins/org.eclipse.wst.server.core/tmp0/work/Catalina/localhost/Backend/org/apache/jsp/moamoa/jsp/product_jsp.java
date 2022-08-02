/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-06-22 08:25:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.moamoa.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import moamoa.product.ProductDTO;
import moamoa.product.ProductDAO;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("moamoa.product.ProductDAO");
    _jspx_imports_classes.add("moamoa.product.ProductDTO");
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
      			"exceptionNoProductId.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <!-- id값이 유효하지 않으면 에러페이지로 이동시킨다. -->\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
 request.setCharacterEncoding("UTF-8"); 
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <title>상품 상세 정보</title>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("   <div class=\"jumbotron\">\r\n");
      out.write("      <div class=\"contaner\">\r\n");
      out.write("         <h1 class=\"display-3\">상품 정보</h1>\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   ");

      //넘어온 상품 아이디값을 얻었다.
      String title =request.getParameter("productTitle");
      //넘어온 상품아이디값을 이용해 실제 해당되는 Product객체를 얻음.
      ProductDTO product = new ProductDAO().getProductByTitle(title);
   
      out.write("\r\n");
      out.write("   <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("         <div class=\"col-md-6\">\r\n");
      out.write("        \r\n");
      out.write("            <h3><b>상품 이름 :</b><span class=\"badge badge-danger\" >");
      out.print(product.getMealkit_title() );
      out.write("<span></b></h3>\r\n");
      out.write("            <p><b>주 재료 : </b>");
      out.print(product.getMain_ingredient() );
      out.write("</p>\r\n");
      out.write("            <p><b>재고 수 : </b>");
      out.print(product.getMealkit_count() );
      out.write("</p>\r\n");
      out.write("            <p><b>설명 : </b>");
      out.print(product.getMealkit_content() );
      out.write("</p>\r\n");
      out.write("            \r\n");
      out.write("            <h4>");
      out.print(product.getMealkit_price() );
      out.write("원</h4>\r\n");
      out.write("            <p><form name=\"addForm\" action=\"./cart.jsp\" method=\"post\">\r\n");
      out.write("            <!-- 상품 주문을 클릭하면 자바스크립트 핸들러 함수 addToCart()호출 -->\r\n");
      out.write("               <!-- <a href=\"#\" class=\"btn btn-info\" onclick=\"addToCart()\">상품 주문&raquo;</a> -->\r\n");
      out.write("               <!-- 장바구니 버튼 추가, 클릭시 /cart.jsp로 이동함 -->\r\n");
      out.write("               <a href=\"./cart.jsp?productTitle=");
      out.print(product.getMealkit_title() );
      out.write("\" class=\"btn btn-warning\">장바구니&raquo;</a>\r\n");
      out.write("               <a href=\"./products.jsp\" class=\"btn btn-secondary\">상품 목록&raquo;</a>\r\n");
      out.write("            </form>\r\n");
      out.write("            <!--\r\n");
      out.write("            <p><a href=\"addProduct.jsp\" class=\"btn btn-info\">상품 등록&raquo;</a></p>\r\n");
      out.write("            <a href=\"./products.jsp\" class=\"btn btn-secondary\">상품 목록&raquo;</a>\r\n");
      out.write("            -->\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <hr>\r\n");
      out.write("   </div>\r\n");
      out.write("   ");
      out.write("\r\n");
      out.write("   <script type=\"text/javascript\">\r\n");
      out.write("      /* 장바구니에 추가하기 위한 헨들러 함수 */\r\n");
      out.write("      function addToCart() {\r\n");
      out.write("         if(confirm('해당 상품을 장바구니에 추가하겠습니까?')) {   /* confirm() : 사용자가 선택할 때 이용(확인, 취소) */\r\n");
      out.write("            document.addForm.submit();\r\n");
      out.write("         }\r\n");
      out.write("         else {\r\n");
      out.write("            document.addForm.reset();\r\n");
      out.write("         }\r\n");
      out.write("      }\r\n");
      out.write("   </script>\r\n");
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