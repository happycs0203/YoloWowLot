<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- 추가 속성 CSS -->
<link href="/Yolo/css_yolo/cssView/comMarket/fleaList.css" rel="stylesheet">
<link href="/Yolo/css_yolo/cssView/comMarket/listfont.css" rel="stylesheet">


<!-- -----------------여기에 컨텐츠 div넣으세요----------------- -->

<div class="blog-content">
	<div class="home-wrapper">

		<!-- 상품 등록하기 버튼 -->
		<div class="input-btn">
			<a href="1_FleaInput.market" class="btn btn-round btn-green btn-sm">상품
				등록하기</a>
		</div>
		<!-- / 상품 등록하기 버튼 -->

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
				<div class="row bounds padding" >			
					<div class="col-md-12 col-xs-12">
						<h1 id="lec_title" class="tab center bounds padding active">플리마켓/상품</h1>	
					</div>
				</div>
				<hr id="lec_title_hr" class="bounds padding"/>			
				<!-- 플리마켓, 상품 Tab  -->
				<div class="tabsContainer">
					<ul class="nav nav-tabs nav-justified" role="tablist">						
						<li class="active"><a href="#profile" role="tab" data-toggle="tab">
							<span class="icon-handbag"></span> GOODS</a></li>
						<li><a href="#home" role="tab" data-toggle="tab">
							<span class="icon-home"></span>FLEA MARKET</a></li>
					</ul>

					<div class="tab-content">
						<!-- 상품 content -->
						<div class="tab-pane fade in active" id="profile">

							<label><h5>Category</h5></label>
							<div class="checkbox custom-checkbox">
								<div class="row">
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> fashion
										</label>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> living
										</label>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> food
										</label>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> cosmetics
										</label>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> child
										</label>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2 formItem">
										<label> <input type="checkbox"> <span
											class="fa fa-check"></span> others
										</label>
									</div>
								</div>
								<hr>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="/Yolo/comMarket/GoodsDetail.market" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
										<div class="article-category">
											<a href="/Yolo/comMarket/GoodsDetail.market" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="/Yolo/comMarket/GoodsDetail.market">Stylish Modern Ranch Exuding
												a Welcoming Feel</a>
										</h4>
										<div class="footer">
											<a>John Smith</a>, <a href="#">Sep 3, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Private Contemporary Home
												Balancing Openness</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 2, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress4.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Stylish Modern Ranch Exuding a
												Welcoming Feel</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress5.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Private Contemporary Home
												Balancing Openness</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 2, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Modern Two-Level Pool House in
												Los Angeles</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 1, 2014</a>
										</div>
									</div>
								</div>
							</div>
							<div class="blog-pagination">
								<!-- 이전버튼 -->
								<a href="#" class="btn btn-o btn-round btn-green"> <span
									class="fa fa-angle-left"></span> Older Articles
								</a>
								<!-- 다음버튼 -->
								<a href="#" class="btn btn-o btn-round btn-green pull-right">Newer
									Articles <span class="fa fa-angle-right"></span>
								</a>
							</div>
						</div>
						<!-- / 상품 content -->
						
						<!-- 플리마켓 content -->
						<div class="tab-pane fade" id="home">
							<div class="row">
								<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
									<div class="article">
										<a href="/Yolo/comMarket/MarketDetail.market" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress1.PNG" alt="image"></a>
										<div class="article-category">
											<a href="MarketDetail.market" class="text-green">Architecture</a>
										</div>
										<h4 id="oslight" class="osLight">
											<a href="MarketDetail.market">Subtly Twisting Geometry
												Inserted in Raw Nature</a>
										</h4>
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the 1500s, when an unknown
											printer took a galley of type and scrambled it to make a type
											specimen book.</p>
										<div class="footer">
											<a>John Smith</a>, <a href="#">Sep 4, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress6.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Architecture</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Provocative Home Design
												Re-Shaping The Landscape</a>
										</h4>
										<div class="footer">
											<a href="#">Jane Smith</a>, <a href="#">Sep 3, 2014</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress2.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Apartments</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">Luminous 3 Bedroom Apartment
												Flaunting Modern Style</a>
										</h4>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 3, 2014</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
									<div class="article">
										<a href="blog-post.html" class="image"><img
											src="/Yolo/images_yolo/comMarket/dress3.PNG" alt="image"></a>
										<div class="article-category">
											<a href="#" class="text-green">Living Room</a>
										</div>
										<h4 class="osLight">
											<a href="blog-post.html">How Does A Designer Home Look
												Like</a>
										</h4>
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the 1500s, when an unknown
											printer took a galley of type and scrambled it to make a type
											specimen book.</p>
										<div class="footer">
											<a href="#">John Smith</a>, <a href="#">Sep 4, 2014</a>
										</div>
									</div>
								</div>
							</div>
							<div class="blog-pagination">
								<a href="#" class="btn btn-o btn-round btn-green"><span
									class="fa fa-angle-left"></span> Older Articles</a> <a href="#"
									class="btn btn-o btn-round btn-green pull-right">Newer
									Articles <span class="fa fa-angle-right"></span>
								</a>
								<div class="clearfix"></div>
							</div>
						</div>
						<!-- / 플리마켓 content -->
					</div>

				</div>
				<!-- / 플리마켓, 상품 Tab -->
			</div>
			<!-- / col-xs-12 col-sm-12 col-md-9 col-lg-9 -->
		</div>
		<!-- / row -->
	</div>
	<!-- / home-wrapper -->
</div>
<!-- / home-content -->
	<!-- ------------------------------------------------------- -->