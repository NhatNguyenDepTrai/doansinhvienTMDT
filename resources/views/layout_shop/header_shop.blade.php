

      <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background: #d0ffc0;">
           
             <marquee>
               <h3>
                   <blink>   Shop  
                   <i style="color: blue;" class="fa fa-bolt" aria-hidden="true"></i>
                    <i style="color: blue;" class="fa fa-bolt" aria-hidden="true"></i>
                   : <b>{{$shop->tenshop}}</b>
                        - 
                        <i style="color: red;" class="fa fa-heart" aria-hidden="true"></i>
                        <i style="color: red;" class="fa fa-heart" aria-hidden="true"></i>
                        Admin:{{$shop->name}}
                    </blink>
               </h3>     
                    
            </marquee>
            <div class="navbar-header">
            </div>
            <!-- /.navbar-header -->
            
            
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation" style="margin-top: 0">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="">

                                <i class="fa fa-bars" aria-hidden="true"></i>
                                <b >DANH  MỤC</b>
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Thống kê<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/thongke/ban-chay">Sản phẩm bán chạy nhất</a>
                                </li>
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/thongke/binh-chon">Sản phẩm bình chọn nhiều nhất</a>
                                </li>
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/thongke/doanh-thu ">Tổng doanh thu Shop</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-apple" aria-hidden="true"></i> Quản lí sản phẩm<span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="">Danh sách sản phẩm</a>
                                     <ul class="nav nav-third-level">
                                        @foreach($loaisp as $lsp)
                                            <li>
                                                <a href="qlshop/shop/{{$shop->id}}/sanpham/danhsach/{{$lsp->id}}">
                                                    {{$lsp->tenloaisanpham}}
                                                </a>
                                            </li>
                                        @endforeach
                                       
                                     </ul>
                                </li>
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/sanpham/them">Thêm sản phẩm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-cc" aria-hidden="true"></i>
                                    Quản lí khuyến mại<span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/khuyenmai/danhsach">Danh sách sản phẩm khuyến mại</a>
                                </li>
                                <li>
                                    <a href="">Chiến lược giảm giá</a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="qlshop/shop/{{$shop->id}}/khuyenmai/chienluoc/tile">Theo tỉ lệ</a>
                                            <ul class="nav nav-four-level">
                                                 @foreach($loaisp as $lsp)
                                                    <li>
                                                        <a href="qlshop/shop/{{$shop->id}}/khuyenmai/chienluoc/tile/danhsach/{{$lsp->id}}">
                                                            {{$lsp->tenloaisanpham}}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="qlshop/shop/{{$shop->id}}/khuyenmai/chienluoc/donggia">Đồng giá</a>
                                            <ul class="nav nav-four-level">
                                                 @foreach($loaisp as $lsp)
                                                    <li>
                                                        <a href="qlshop/shop/{{$shop->id}}/khuyenmai/chienluoc/donggia/danhsach/{{$lsp->id}}">
                                                            {{$lsp->tenloaisanpham}}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                       
                                     </ul>
                                </li>
                                
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="#">
                                <i class="fa fa-gift" aria-hidden="true"></i>
                                Quản lí đơn hàng<span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/donhang/danhsach">Đơn hàng </a>
                                </li>
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/donhang/don-da-thanh-toan">Đơn hàng đã giao</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pie-chart" aria-hidden="true"></i>Quản lí kho<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="">Sản phẩm kho</a>
                                     <ul class="nav nav-third-level">
                                        @foreach($loaisp as $lsp)
                                            <li>
                                                <a href="qlshop/shop/{{$shop->id}}/khohang/danhsach/{{$lsp->id}}">
                                                    {{$lsp->tenloaisanpham}}
                                                </a>
                                            </li>
                                        @endforeach
                                       
                                     </ul>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="#">
                                <i class="fa fa-comments" aria-hidden="true"></i>
                                Quản lí bình luận<span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/binhluan/danhsach">Danh sách câu hỏi</a>
                                </li>
                                <li>
                                    <a href="qlshop/shop/{{$shop->id}}/binhluan/danhgia">Danh sách đánh giá</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


        