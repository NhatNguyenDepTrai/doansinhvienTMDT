<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +BKHN</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> teamproject2@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/"><img src="eshopper/images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									Hà Nội
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">Ngoại thành</a></li>
									<li><a href="#">Nội thành</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									TP.HCM
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">Quận 1</a></li>
									<li><a href="#">Quận 2</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								@if(Auth::check())
								<li><a href="#"><i class="fa fa-user"></i>{{Auth::User()->name}}</a></li>
								<li><a href="{{route('dangxuat')}}"><i class="fa fa-star"></i>Đăng xuất</a></li>
								<li><a href="index/don-hang"><i class="fa fa-crosshairs"></i>Đơn hàng</a></li>
								<li><a href="index/gio-hang"><i class="fa fa-shopping-cart"></i>Giỏ hàng({{ Cart::count() }})</a></li>
								
								@else
									<li><a href="{{route('register.view')}}"><i class="fa fa-star"></i>Đăng kí</a></li>
									<li><a href="{{route('login')}}"><i class="fa fa-lock"></i>Đăng nhập</a></li>
									<li><a href="index/gio-hang"><i class="fa fa-shopping-cart"></i>Giỏ hàng({{ Cart::count() }})</a></li>
									
								@endif
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index" class="active">Trang chủ</a></li>
                                
                                @if(Auth::check())
                                	<li class="dropdown"><a href="#">Shop của tôi </a>
                                	
	                                	<ul role="menu" class="sub-menu">
	                                		@foreach($list_shop as $ls)
	                                        	<li><a href="qlshop/shop/{{ $ls->id }}">{{$ls->tenshop}}</a></li>
											 @endforeach
	                                    </ul>
	                                
                                	</li>
									<li><a href="{{route('taoshop')}}">Tạo shop mới</a></li>
								@endif
								<li><a href="{{route('contact')}}">Liên hệ</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search pull-right" style="position: relative;">
							<form action="tim-kiem" method = "get">
								<input type="text" name="search"	placeholder="Nhập sản phẩm cần tìm kiếm...."
									 style="width:300px;height: 30px" />
								<button style="position: absolute;top: 0;right: 0;bottom: 0;">	
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->