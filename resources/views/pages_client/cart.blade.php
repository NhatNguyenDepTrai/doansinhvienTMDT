@extends('master_client')
@section('content')
		<p style="color: white;">{{$i=1}}</p>
		<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Giỏ hàng</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Tên sản phẩm</td>
							<td class="description"></td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Tổng tiền</td>
		
							<td class="total">Xóa</td>

						</tr>
					</thead>
					<tbody>
						@foreach($grouped as $shop_id=>$items)
							<tr>
								<td><p>Đơn hàng số {{$i++}}
									của shop {{$items[0]->options->tenshop}}
									</p>
								</td>
							</tr>
							@foreach($items as $item)
							<tr>
								<td class="cart_product">
									<a href=""><img src="upload/{{$item->options->img}}" height=60></a>
								</td>
								<td class="cart_description">
									<h4>
										<a href="">{{$item->name}}</a>

									</h4>
									<i>Shop: {{$item->options->tenshop}}</i>
									
								</td>
								<td class="cart_price">
									<p>{{number_format($item->price)}}đ</p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<form method="post" action="index/update-gio-hang">
						<input type="hidden" name="_token" value="{{csrf_token()}}" >
						<input type="hidden" name="rowId" value="{{$item->rowId}}" >
											<input class="cart_quantity_input" type="text" name="quantity" 
											value='{{$item->qty}}' autocomplete="off" size="2">
											<button type="submit"><i class="fa fa-refresh" aria-hidden="true"></i></button>
										</form>
											
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price">{{number_format($item->price*$item->qty)}}đ</p>
								</td>
							
								<td class="cart_remove">
									<a href="index/xoa-san-pham/{{$item->rowId}}" 
									onclick="return  confirm('Bạn có muốn xóa không?')"
										>X</a>
								</td>
								
							</tr>
							@endforeach
							
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>Thông tin về đơn hàng</h3>
				
			</div>
			<div class="row">
				
				<div class="col-sm-12">
					<div class="total_area">
						<ul>
							<li>Tổng tiền: <i style="color:red;font-size: 150%">
							{{$total_money}} VNĐ</i>
							</li>
							<li>Phí ship:
							@if(floatval(preg_replace('/[^\d.]/', '',$total_money))>=200000)
							 	<i style="color:red;font-size: 150%">Free</i>
							@else
								<i style="color:red;font-size: 150%">{{number_format(20000)}} VNĐ</i>
							@endif
							 </li>
							 <li style="color: green;">Miễn phí ship đối với những đơn hàng trên 200,000 VNĐ</li>
							
						</ul>
							<a class="btn btn-default update" href="index">Tiếp tục mua hàng</a>
							<a class="btn btn-default check_out" href="index/thongtindonhang">Đặt hàng</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
@endsection