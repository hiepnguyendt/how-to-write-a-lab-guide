+++
title = "Thứ tự làm Guide"
date = 2021
weight = 2
chapter = false
pre = "<b> 2.2. </b>"
+++


### Về thứ tự làm một Guide theo kinh nghiệm cá nhân của người viết là như sau:
	
1. **Thực hiện bài Hand-on Lab một lần** để nắm các bước cần phải làm. (Ghi chú lại những bước lỗi do thiếu (có thể là IAM Role, Permissions,...))
2. **Lên cấu trúc** cho Lab Guide (phân theo từng bước). Đây (có thể) cũng chính là cấu trúc thư mục của bài thực hành.
3. **Clean up** và **thực hiện lại** bài Lab lần thứ 2. Lần này quay phim lại (có thể sử dụng **Active Presenter**) hoặc screenshot từng bước và đánh số thứ tự hình ảnh (có thể dùng **SnagIt**)
4. Viết phần nội dung text cho Lab Guide. (Để sẵn các placeholder cho hình ảnh)
5. Nếu quay phim thì trích xuất hình ảnh từ video ra (có thể sử dụng **VLC Player** có mục **Screenshot**) và đặt hình ảnh vào những vị trí đã xác định.
6. Crop hình ảnh **loại bỏ** đi khung viền của browser (Nếu sử dụng SnagIt thì **xác định vùng chụp cố định** bỏ đi khung viền browser)
7. **Kiểm tra** và **format** lại nội dung với các [Notice](https://learn.netlify.app/en/shortcodes/notice/), bổ sung các [Tập tin đính kèm](https://learn.netlify.app/en/shortcodes/attachments/) (nếu có)

____

#### Phần tiêu đề
	
Ở đầu mỗi trang đều có phần header này để hiển thị **tiêu đề** và xác định điều hướng ở bên **Navigation panel bên trái trang**.
	
- ```title = "Viết nội dung"```: Để nội dung ngắn gọn súc tích để vừa 1 dòng ở bên **Navigation panel bên trái**.
- ```chapter = false``` : Để mặc định là false. Title ở trên cũng sẽ hiển thị là h1 ở trong bài viết.
- ```pre = "<b>2. </b>"``` : Đây là đánh số cho trang hiển thị ở **Navigation panel bên trái**.
	
```
+++
title = "Viết nội dung"
date = 2020
weight = 2
chapter = false
pre = "<b>2. </b>"
+++

```
	
#### Phần heading
	
Chúng ta sẽ thống nhất việc dùng tiêu đề cho các section trong 1 trang sẽ sử dụng h4 (####).
	
Ví dụ chính là heading của phần này.
	
#### Phần Table of Contents (TOC)
	
Sau khi viết xong nội dung (hoặc liệt kê xong các Heading của 1 trang), chúng ta có thể xây dựng **Table of Contents (TOC)** tự động bằng plug-in.
	
Sử dụng tổ hợp phím ```Ctrl + Shift + P``` sau đó gõ vào **Create Table of Contents** rồi chọn lựa chọn của plug-in **Markdown All in One**. Enter.
	
Chúng ta sẽ có một cái TOC như sau:
	
```text
Nội dung:
- [Về thứ tự làm một Guide theo kinh nghiệm cá nhân của người viết là như sau:](#về-thứ-tự-làm-một-guide-theo-kinh-nghiệm-cá-nhân-của-người-viết-là-như-sau)
  - [Phần tiêu đề](#phần-tiêu-đề)
  - [Phần heading](#phần-heading)
  - [Phần Table of Contents (TOC)](#phần-table-of-contents-toc)
  - [Phần ghi chú](#phần-ghi-chú)
  - [Phần tập tin đính kèm](#phần-tập-tin-đính-kèm)
  - [Phần vẽ bảng](#phần-vẽ-bảng)
  - [Phần hình ảnh](#phần-hình-ảnh)
- [Update config.toml](#update-configtoml)

```
	
#### Phần ghi chú
	
Trong bài viết có thể sẽ có các đoạn cần làm nổi bật lên như Ghi chú, Cảnh báo,... thì sẽ dùng shortcode theo hướng dẫn tại [đây](https://learn.netlify.app/en/shortcodes/notice/)
	
{{% notice note %}}
Đây là Note
{{% /notice %}}
	
{{% notice info %}}
Đây là Info
{{% /notice %}}
	
{{% notice tip %}}
Đây là Tip
{{% /notice %}}
	
{{% notice warning %}}
Đây là Warning
{{% /notice %}}

#### Phần tập tin đính kèm
	
Phần này sẽ thực hiện theo hướng dẫn tại [đây](https://learn.netlify.app/en/shortcodes/attachments/)
	
**Vị trí đặt tập tin sẽ là trong thư mục tương ứng với tên trang md.**
	
VD: 
- **_index.md** ---> **_index.files**
- **_index.vi.md** ---> **_index.vi.files**
	
{{% notice info %}}
Nghĩa là nếu có nhiều ngôn ngữ thì mỗi ngôn ngữ 1 thư mục như vậy cho 1 trang.
{{% /notice %}}
	
	
**Sử dụng shortcode sau để tạo phần đính kèm:**
	
- **title** : Tiêu đề phần đính kèm
- **pattern** : Xác định các tập tin được hiện ra trong box (có thể để tên tập tin hoặc pattern để xác định theo đuôi)
	
Ví dụ lọc tập tin Dockerfile:
	
```
{{%/*<attachments title="Dockerfile" pattern="Dockerfile"/*/%}}
```
	
Sẽ được như vầy:
	
{{%attachments title="Dockerfile" pattern="Dockerfile"/%}}
	
Ví dụ lọc tập tin theo đuôi:
	
```
{{%/*attachments title="Build Scripts" pattern=".*(ps1|sh)"/*/%}}
```
	
Sẽ được như vầy:
	
{{%attachments title="Build Scripts" pattern=".*(ps1|sh)"/%}}
	
#### Phần vẽ bảng
	
Để đơn giản hóa việc vẽ bảng, người viết thường sử dụng công cụ [Tables Generator](https://www.tablesgenerator.com/markdown_tables)
	
1. Truy cập tới trang.
2. Nhập nội dung xong bấm **Generate** rồi **Copy to clipboard**.
3. Xong vô đây **Paste** vào thôi.
	
#### Phần hình ảnh
	
1. **Phần mềm chụp màn hình khuyên dùng:** SnagIt (2019/2020)
	
2. **Thiết kế hình ảnh:**
	
Để tạo sự đồng nhất và dễ hiểu cho người xem, chúng ta định hình ra một chuẩn chung như sau:
	
 - Về Screenshot Console: 
 - **Trình duyệt:** Chrome tắt Bookmark bar (khuyên dùng)
 - **Zoom:** Mặc định không zoom in (100%)
 - **Độ phân giải màn hình:** FullHD (1920 x 1080)
 - **Định dạng:** PNG (Khuyên dùng)
 - Về Font chữ ghi trên hình:
 - **Font:** Arial Black
 - **Size:** 18
 - **Không** bật Shadow.
- Về Khung đánh dấu khu vực cần chú ý:
  - **Màu:** Trùng với màu chữ ghi chú
  - **Độ dày (Thickness):** 1 px
  - **Độ mờ (Opacity):** 100%
	
Hình ảnh tham khảo:
	
![example](/images/2/SNAG001.png)

	
### Update config.toml

```conf
[Languages.en]
title = "How to Write a Lab Guide"
weight = 1
languageName = "English"
	
[Languages.vi]
title = "Cách viết một Lab Guide"
weight = 2
languageName = "Tiếng Việt"
```



