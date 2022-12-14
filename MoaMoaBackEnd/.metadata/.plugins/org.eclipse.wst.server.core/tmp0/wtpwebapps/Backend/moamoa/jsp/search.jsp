<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="moamoa.post.PostDAO"%>
<%@page import="moamoa.post.PostDTO"%>
<%@page import="moamoa.product.ProductDTO"%>
<%@page import="moamoa.search.SearchDAO"%>

<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Recipe Moa Moa</title>
        <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
            rel="stylesheet">

        <!-- CSS Styles -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="https://use.typekit.net/puo4qmu.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../css/mypage/mypage.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/login_signup/signup.css">
        <link
            href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
        <!-- luna herina script start -->
        <script type="text/javascript">
            !function (h, e, a, r, i, n, c) {
                c = function () {};
                i = e.createElement(a);
                i.async = !0;
                i.src = r;
                i.onload = c;
                n = e.getElementsByTagName(a)[0];
                n
                    .parentNode
                    .insertBefore(i, n);
                if (h.hearinaJs) {
                    c();
                    return;
                }
            }(window, document, 'script', '//cdn.hearina.com/js/luna_hearina_v.0.4.js');
        </script>

    </head>
<body>
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#">RECIPE MOA MOA</a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li>
                        <a href="../indcompage/wish_list.html">
                            <i class="fa fa-heart"></i>
                            <span>1</span></a>
                    </li>
                    <li>
                        <a href="../indcompage/order.html">
                            <i class="fa fa-shopping-bag"></i>
                            <span>3</span></a>
                    </li>
                </ul>
                <div class="header__cart__price">??? ????????????
                    <span>15000</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__auth">
                    <a href="./login.html">
                        <i class="fa fa-user"></i>
                        ?????????</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                            <ul>
                                <li class="active">
                                    <a href="../mainpage/index.html">???</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">?????????</a> -->
                                    <a href="../jsp/products.jsp">?????????</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">????????????</a> -->
                                    <a href="../jsp/cart.jsp">????????????</a>
                                </li>
                                <li>
                                    <a href="../jsp/post_list.jsp">?????????</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">?????????</a>
                                        </li>
                                    </ul>
                                </li>
                              </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#">
                    <i class="fa fa-facebook"></i>
                </a>
                <a href="#">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                    <i class="fa fa-linkedin"></i>
                </a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li>
                        <i class="fa fa-envelope"></i>
                        hello@bc.kr</li>
                    <li>10000?????? ????????????</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        hello@bc.kr</li>
                                    <li>10000?????? ????????????</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </div>
                                <!-- <div class="header__top__right__auth">
                                    <a href="../???????????????/ind_login.html">
                                        <i class="fa fa-user"></i>
                                        ??????&nbsp;&nbsp;</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="../????????????????????????????????????/corp_login.html">
                                        ??????&nbsp;&nbsp;</a>
                                </div> -->
                                <div class="header__top__right__auth">
                                    <a href="../jsp/contract.jsp">
                                        ?????????</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a>
                                        ??? ?????????</a> <!--?????????- ??????????????? ?????? ?????? ??? ??? ?????? ????????? ??????-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="../mainpage/index.html"><img src="../img/logo2.png"></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li class="active">
                                    <a href="../mainpage/index.html">???</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">?????????</a> -->
                                    <a href="../jsp/products.jsp">?????????</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">????????????</a> -->
                                    <a href="../jsp/cart.jsp">????????????</a>
                                </li>
                                <li>
                                    <a href="../jsp/post_list.jsp">?????????</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">?????????</a>
                                        </li>
                                    </ul>
                                </li>
                              </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <!-- <div class="header__cart">
                            <ul>
                                <li>
                                    <a href="../indcompage/wish_list.html">
                                        <i class="fa fa-heart"></i>
                                        <span>1</span></a>
                                </li>
                                <li>
                                    <a href="../indcompage/order.html">
                                        <i class="fa fa-shopping-bag"></i>
                                        <span>3</span></a>
                                </li>
                            </ul>
                            <div class="header__cart__price">??? ????????????
                                <span>15000</span></div>
                        </div> -->
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>

        <section class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>????????????</span>
                            </div>
                            <ul>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=korean_food">??????</a>
                                </li>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=western_food">??????</a>
                                </li>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=japanese_food">??????</a>
                                </li>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=chinese_food">??????</a>
                                </li>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=dessert">?????????</a>
                                </li>
                                <li>
                                    <a href="../jsp/category.jsp?category_name=etc">??????</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="../jsp/search.jsp">
                                    <input type="text" name="search_keyword" placeholder="????????? ?????????????????????????">
                                    <button type="submit" class="site-btn">??????</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>010-1234-5678</h5>
                                    <span>?????? 24?????? ?????? ??????</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
            <h2 class="subtitle" id="sub1"style="padding-top:100px !important; ">?????? ??????</h2>
                        <br>
                        <h4>????????? ?????? ??????</h4>
				<%
					String pkeyword = request.getParameter("search_keyword");
					
					SearchDAO dao = new SearchDAO();
					List<PostDTO> presult = dao.findPost(pkeyword);
					//System.out.println(result.size());
				%>
				<table style="text-align: center; border: 1px solid #dddddd ; width: 100%;">
					<thead>
						<tr>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
						</tr>
					</thead>
				<tbody>
					<%for(int i=0; i<presult.size(); i++){%>
						 <tr>
						 	<td><a href="postDetail.jsp?postTitle=<%= presult.get(i).getTitle()%>"><%=presult.get(i).getTitle() %></a></td>
					     	<td><%=presult.get(i).getDate() %></td>
					     	<td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;max-width:280px; padding:20px;" ><%=presult.get(i).getContent() %></td>
					     </tr>
					     <br>
					<%	 
					} 
					%>
				</tbody>
				</table>
				<hr>
				<br>
				<h4>????????? ?????? ??????</h4>
				<br>
				<%
					String mkeyword = request.getParameter("search_keyword");
					List<ProductDTO> mresult = dao.findMealkit(mkeyword);
					//System.out.println(result.size());
				%>
				<table style="text-align: center; border: 1px solid #dddddd ; width: 100%;">
					<thead>
						<tr>
							<th>?????????</th>
							<th>?????????</th>
							<th>??????</th>
							<th>??????</th>
						</tr>
					</thead>
					<tbody>
					<%for(int i=0; i<mresult.size(); i++){%>
						 <tr>
							 <td><a href="product.jsp?productTitle=<%= mresult.get(i).getMealkit_title() %>"><%=mresult.get(i).getMealkit_title() %></a></td>
						     <td><%=mresult.get(i).getMain_ingredient() %></td>
						     <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;max-width:180px; padding:20px;"><%=mresult.get(i).getMealkit_content() %></td>
						     <td><%=mresult.get(i).getMealkit_price() %></td>
						 </tr>
					<%	 
					} 
					%>	
					</tbody>
				</table>
				
					
			</div>
			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>    
            <script src="../js/bootstrap.min.js"></script>
            <script src="../js/jquery.nice-select.min.js"></script>
            <script src="../js/jquery-ui.min.js"></script>
            <script src="../js/jquery.slicknav.js"></script>
            <script src="../js/mixitup.min.js"></script>
            <script src="../js/owl.carousel.min.js"></script>
            <script src="../js/main.js"></script>
            <script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
            <script src="../js/jquery-ui.js"></script>
            <script type="text/javascript" src="../js/jquery.form.min.js"></script>
            <script type="text/javascript" src="../js/clipboard.js"></script>
    
            <script type="text/javascript" src="../js/swiper.min.js"></script>
            <script type="text/javascript" src="../js/slick.min.js"></script>
            <script type="text/javascript" src="../js/ion.rangeSlider.js"></script>
            <script type="text/javascript" src="../js/jquery.countdown.min.js"></script>
            <script type="text/javascript" src="../js/cookie.js"></script>
            <script type="text/javascript" src="../js/script.js"></script>
            <script type="text/javascript" src="../js/custom.js"></script>
            <script type="text/javascript" src="../js/goods.js"></script>
            <script type="text/javascript" src="../js/buy.js"></script>
            <script type="text/javascript" src="../js/member.js"></script>
            <script type="text/javascript" src="../js/order.js"></script>
            <script type="text/javascript" src="../js/site.js"></script>
            <script type="text/javascript" src="../js/giftCard.js"></script>
            <script type="text/javascript" src="../js/scm.js"></script>
            <script type="text/javascript" src="../js/review.js"></script>
            
            <!-- Js Plugins -->
        <script src="../js/slide.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(function(){
                
                $(".open").on('click',function(){
                    $(".popup").show();
                    $(".dim").show();
                });
                $(".popup .close").on('click',function(){
                    $(this).parent().hide();
                    $(".dim").hide();
                });
            });
        </script>
        </body>
</html>