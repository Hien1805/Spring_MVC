<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital@1&display=swap');
    
        body {
         font-family: 'Roboto Slab', serif; /* Áp dụng phông chữ Roboto Slab */
  font-style: normal; /* Kiểu bình thường */
  font-weight: 400; 
            background-color: #f9f9fa;
        }

        .flex {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
        }

        @media (max-width: 991.98px) {
            .padding {
                padding: 1.5rem;
            }
        }

        @media (max-width: 767.98px) {
            .padding {
                padding: 1rem;
            }
        }

        .padding {
            padding: 5rem;
        }

        .card {
            box-shadow: none;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            -ms-box-shadow: none;
        }

        .pl-3,
        .px-3 {
            padding-left: 1rem !important;
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid #d2d2dc;
            border-radius: 0;
        }

        .card .card-title {
            color: #000000;
            margin-bottom: 0.625rem;
            font-size: 1.575rem;
            font-weight: 500;
        }

        .card .card-description {
            margin-bottom: .875rem;
            font-weight: 400;
            color: #76838f;
        }

        p {
            font-size: 0.875rem;
            margin-bottom: .5rem;
            line-height: 1.5rem;
        }

        .table-responsive {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
            -ms-overflow-style: -ms-autohiding-scrollbar;
        }

        .table,
        .jsgrid .jsgrid-table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 1rem;
            background-color: transparent;
        }

        .table thead th,
        .jsgrid .jsgrid-table thead th {
            border-top: 0;
            border-bottom-width: 1px;
            font-weight: 500;
            font-size: .875rem;
            text-transform: uppercase;
        }

        .table td,
        .jsgrid .jsgrid-table td {
            font-size: 0.875rem;
            padding: .475rem 0.4375rem;
        }

        .mt-10 {
            padding: 0.875rem 0.3375rem !important;
        }

        button {
            outline: 0 !important;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0rem rgba(0, 123, 255, .25) !important;
        }

        .badge {
            border-radius: 0;
            font-size: 12px;
            line-height: 1;
            padding: .375rem .5625rem;
            font-weight: normal;
            border: none;
        }
    </style>
</head>
<body>
    <div class="page-content page-container" id="page-content">
        <div class="padding">
            <div class="row container d-flex justify-content-center">
                <div class="col-lg-8 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center">Quản Lý Trái Cây</h4>
                            <hr>
                            <div class="table-responsive">
                                <table id="faqs" class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Tên sản phẩm</th>
                                            <th>Xuất xứ</th>
                                            <th>Giá</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <tr>
                                            <td>Chuối</td>
                                            <td>Việt Nam</td>
                                            <td>1245678</td>
                                            <td class="mt-10"><button class="badge badge-danger"><i class="fa fa-trash"></i> Delete</button></td>
                                        </tr>
                                        <tr>
                                            <td>Sầu riêng</td>
                                            <td>Việt Nam</td>
                                            <td>1545678</td>
                                            <td class="mt-10"><button class="badge badge-danger"><i class="fa fa-trash"></i> Delete</button></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" class="form-control" placeholder="name"></td>
                                            <td><input type="text"```html
                                            placeholder="country" class="form-control"></td>
                                            <td><input type="text" class="form-control" placeholder="price"></td>
                                            <td class="mt-10"><button class="badge badge-danger"><i class="fa fa-trash"></i> Delete</button></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-center"><button onclick="addfaqs();" class="badge badge-success"><i class="fa fa-plus"></i> ADD NEW</button></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script>
        var faqs_row = 0;

        function addfaqs() {
            html = '<tr id="faqs-row' + faqs_row + '">';
            html += '<td><input type="text" class="form-control" placeholder="name"></td>';
            html += '<td><input type="text" placeholder="country" class="form-control"></td>';
            html += '<td><input type="text" placeholder="price" class="form-control"></td>';

            html += '<td class="mt-10"><button class="badge badge-danger" onclick="$(\'#faqs-row' + faqs_row + '\').remove();"><i class="fa fa-trash"></i> Delete</button></td>';
            html += '</tr>';

            $('#faqs tbody').append(html);

            faqs_row++;
        }
    </script>
</body>
</html>