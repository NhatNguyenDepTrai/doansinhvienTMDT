<?php
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//===========================CLIENT====================================//

Route::get('/','pagesController@trangchu')->name('index');
Route::get('index','pagesController@trangchu')->name('index');
Route::get('login','pagesController@dangnhap')->name('login');
Route::get('contact', function(){

	return view('pages_client.contact');
})->name('contact');


Route::get('tim-kiem',[
	'as'=>'timkiem',
	'uses'=>'pagesController@timkiem'
]);
Route::get('dangki','pagesController@dangki')->name('register.view');
Route::post('dangki','pagesController@post_dangki')->name('register.submit');





Route::get('dangnhap',[
	'as'	=>'dangnhap',
	'uses'	=>'pagesController@dangnhap'
]);
Route::post('dangnhap',[

	'as'	=>'dangnhap',
	'uses'	=>'pagesController@post_dangnhap'
]);
Route::get('dangxuat',[

	'as'	=>'dangxuat',
	'uses'	=>'pagesController@dangxuat'
]);
Route::get('taoshop',[
	'as'	=>'taoshop',
	'uses'	=>'pagesController@taoshop'
]);


Route::post('taoshop',[

	'as'	=>'taoshop',
	'uses'	=>'pagesController@post_createshop'
]);
Route::group(['prefix'=>'index'],function(){
	Route::get('loai-san-pham/{id}','pagesController@loaisanpham');
	Route::get('thuong-hieu/{tenth}','pagesController@thuonghieu');
	Route::get('sanpham/{id}','pagesController@xemSanPham');
	Route::post('danh-gia/{id}','pagesController@danhGia');
	Route::get('don-hang','pagesController@xemDonHang');
	Route::get('chi-tiet-don/{id}','pagesController@chiTietDon');
	Route::get('chitietdon/{id}','pagesController@donHangShop');

	Route::get('gio-hang','pagesController@gioHang');
	Route::post('update-gio-hang','pagesController@updateGioHang');
	Route::get('them-gio-hang/{idsp}','pagesController@themgiohang');
	Route::get('mua-ngay/{idsp}','pagesController@mua_ngay');
	Route::get('xoa-san-pham/{id}','pagesController@xoa_san_pham');
	Route::get('thongtindonhang','pagesController@thongtindonhang');
	Route::post('thongtindonhang','pagesController@postDonhang');
});

//===========================SHOP=====================================//


Route::group(['prefix'=>'qlshop'],function(){

	Route::get('shop/{id}','ShopController@shop');
	Route::group(['prefix'=>'shop/{id}'],function(){
		Route::group(['prefix'=>'thongke'],function()
		{
			Route::get('ban-chay','ShopController@sanPhamBanChay');
			Route::get('binh-chon','ShopController@sanPhamBinhChon');
			Route::get('doanh-thu','ShopController@tongDoanhThu');
		});

		Route::group(['prefix'=>'sanpham'],function(){
			Route::get('danhsach/{id_loaisp}','ShopController@danhsach_sp');

			Route::get('them','ShopController@getProduct');
			Route::post('them','ShopController@postProduct');
			Route::get('sua/{idsp}','ShopController@getUpdate');
			Route::post('sua/{idsp}','ShopController@postUpdate');
		});
		//HẾT QUẢN LÍ SẢN PHẨM

		Route::group(['prefix'=>'donhang'],function(){
			Route::get('danhsach','ShopController@getDonhang');
			Route::get('shiphang/{iddon}','ShopController@getShipHang');
			Route::get('nhanhang/{iddon}','ShopController@getNhanHang');
			Route::get('thongtinkh/{iddon}','ShopController@getThongTinKH');
			Route::get('don-da-thanh-toan','ShopController@getDonDaThanhToan');
			Route::get('chitiet/{iddon}','ShopController@getChitietdon');
		});
			//HẾT QUẢN LÍ ĐƠN HÀNG

		Route::group(['prefix'=>'khuyenmai'],function(){
			Route::get('danhsach','ShopController@getSanphamkhuyenmai');
			Route::get('chapnhan/{idsp}','ShopController@getChapnhan');
			Route::get('capnhat','ShopController@getCapnhat');
			Route::post('capnhat','ShopController@postCapnhat');

			Route::group(['prefix'=>'chienluoc'],function(){
				// Route::get('tile','ShopController@getTile');
				Route::group(['prefix'=>'tile'],function(){
					Route::get('danhsach/{id_loaisp}','ShopController@getDanhSachTiLe');
					Route::get('sanphamkm/{id_sp}','ShopController@getChapnhanSP');
					Route::get('reset/{id_sp}','ShopController@getReSetTiLe');
				});

				// Route::get('donggia','ShopController@getDonggia');
				Route::group(['prefix'=>'donggia'],function(){
					Route::get('danhsach/{id_loaisp}','ShopController@getDanhSachDongGia');
					Route::get('sanphamkm/{id_sp}','ShopController@getChapnhanSP');
					Route::get('reset/{id_sp}','ShopController@getReSetDongGia');
				});
				Route::post('donggia','ShopController@postDonggia');
				Route::post('tile','ShopController@postTile');
			});
			
			Route::get('tichdiem','ShopController@getTichdiem');
		});
		//HẾT QUẢN LÍ KHUYẾN MẠI
		Route::group(['prefix'=>'khohang'],function(){

			Route::get('danhsach/{id_loaisp}','ShopController@getKho');

		});
		//QUAN LI BINH LUAN
		Route::group(['prefix'=>'binhluan'],function(){
			Route::get('danhsach','ShopController@getDanhSachCauHoi');
			Route::get('traloi/{id_cauhoi}','ShopController@TraLoi');
			Route::post('traloi/{id_cauhoi}','ShopController@TraLoi');
			Route::get('xoa/{id_cauhoi}','ShopController@xoaTraLoi');
			Route::get('danhgia','ShopController@danhGia');
		});
		
	});

	
});




//===========================ADMIN====================================//
Route::get('page_admin',[
	'as'	=>'page_admin',
	'uses'	=>'AdminController@page_admin'
]);
Route::get('approve_shop',array(
		'as'=>'approve_shop',
		'uses'=>'AdminController@approve_shop'
));
Route::get('agree_shop/{id}',array(
		'as'=>'agree_shop',
		'uses'=>'AdminController@agree_shop'
));
Route::get('cancel_shop/{id}',array(
		'as'=>'cancel_shop',
		'uses'=>'AdminController@cancel_shop'
));
Route::get('management_shop',array(
		'as'=>'management_shop',
		'uses'=>'AdminController@management_shop'
));
Route::get('quantity_shop/{qt}',array(
		'as'=>'quantity_shop',
		'uses'=>'AdminController@quantity_shop'
));

Route::get('management_user',array(
		'as'=>'management_user',
		'uses'=>'AdminController@management_user'
));
Route::get('delete_user/{id}',array(
		'as'=>'delete_user',
		'uses'=>'AdminController@delete_user'
));
Route::get('danh-sach-binh-luan',array(
		'as'=>'danh-sach-binh-luan',
		'uses'=>'AdminController@BL'
));
Route::get('xoa-binh-luan/{id}',array(
		'as'=>'xoa-binh-luan',
		'uses'=>'AdminController@xoaBL'
));

?>


