bước 1: import db

tạo csdl tên news -> sau đó import file news.sql

Bước 2 : run server

chạy file run.bat

==========================


Cách sử dụng api

Lấy toàn bộ tin tức

	GET http://localhost:8080/news

	GET tin tuc theo id

	http://localhost:8080/news/{id}

lấy tin tức theo tags

GET http://localhost:8080/tags/{param}

trong đó param là id của tag hoặc slug của tag

lấy tin tức theo category

GET http://localhost:8080/categories/{param}
trong đó param là id của tag hoặc slug của category


=====
Comment

POST http://localhost:8080/news/{id}/comment
	id là id của bài viết
	trong đó gửi đi
	name là tên người comment
	content là nội dung comment
