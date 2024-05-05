@extends('layout_admin.master_admin')
@section('content')
    
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Danh sách bình luận của khách hàng
                            <small></small>
                        </h3>
                        <p style="color: white;">{{$i=1}}</p>
                    </div>
                    
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr align="center">
                                <th>STT</th>
                                <th>Mã KH</th>
                                <th>Tên khách hàng</th>
                                <th>Tên sản phẩm</th>
                                <th>Hình ảnh</th>
                                <th>Nội dung</th>
                                <th>Thời gian bình luận</th>
                                <th>Xóa</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($danhSachBL as $bl)
                            <tr class="odd gradeX" align="center">
                                <td>{{$i++}}</td>
                                <td>{{$bl->user_id}}</td>
                                <td>{{$bl->hoten}}</td>
                                <td>{{$bl->Sanpham->tensanpham}}</td>
                                <td>
                                    <img style="height:50px; " src="upload/{{$bl->Sanpham->hinhanh}}">
                                </td>
                                <td>{{$bl->noidung}}</td>
                                <td>{{$bl->created_at}}</td>
                                
                                <td>
                                    <a href="xoa-binh-luan/{{$bl->id}}" onclick="return confirm('Bạn có thực sự muốn xóa bình luận này?')">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </a>
                                </td>
                                
                            </tr>
                        @endforeach
                            
                        </tbody>
                    </table>
                   
                </div>

                <!-- /.row -->
 
@endsection 