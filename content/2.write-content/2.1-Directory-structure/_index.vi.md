+++
title = "Cấu trúc thư mục"
date = 2021
weight = 1
chapter = false
pre = "<b> 2.1. </b>"
+++


#### Thư mục *content*
	
Chúng ta tạm quy ước với nhau là sẽ tổ chức bài Lab với 2 cấp độ là tối đa (VD: **2. -> 2.1.** tương ứng với **2.write-content -> 2.1-Directory structure**)
	
Trong mỗi thư mục sẽ bao gồm:
- Các thư mục thứ cấp.
- Tập tin **_index.md** : Chứa nội dung tiếng Anh.
- Tập tin **_index.vi.md** : Chứa nội dung tiếng Việt.
	
{{% notice note %}}
Nếu chỉ đang viết guide tiếng Việt thôi thì sẽ copy **_index.vi.md** ra một bản nữa và đổi tên thành **_index.md** nhá. (Để dịch sau)
{{% /notice %}}
	
#### Thư mục *static/images*
	
Đây sẽ là thư mục chứa ảnh cho Lab Guide. Mọi ảnh đều được bỏ vào trong đây. Có thể phân cấp thư mục cho các ảnh để dễ quản lý ảnh.
	
Các ảnh này sẽ được sử dụng trong bài viết bằng thẻ gán ảnh:
	
```md
![Đây là tên ảnh (Hiển thị khi không load được ảnh)](/images/2.1/SNAG001.png?width=90pc)
```
	
**Kết quả:**
	
![example](/images/2.1/SNAG001.png?width=90pc)
	
{{% notice note %}}
Sử dụng ?width=90pc với các ảnh toàn màn hình và ?width=40pc hoặc ?width=50pc đối với các ảnh crop.
{{% /notice %}}
	
#### Thư mục *public*
	
Đây là thư mục sẽ được tạo ra bởi hugo.
	
Sau khi viết hoàn chỉnh guide hoặc một phần guide mà muốn kiểm tra hiển thị thì có thể chạy lệnh sau để build project
	
```bash
$ hugo
```
	
Sau khi build hoàn thành thì sẽ có thư mục public xuất hiện. Tiến hành chạy server để xem thành quả tại [http://localhost:1313](http://localhost:1313)
	
```bash
$ hugo server
```
	
{{% notice info %}}
Tới đây rồi thì hãy thử xóa thư mục public và chạy thử xem Guide này có hoạt động được không nhá.
{{% /notice %}}


