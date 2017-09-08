# TODO-API
Overview
TODO管理をするRESTful API  

## Description
機能詳細  
・登録済みTODOの全件取得   
・登録済みTODOの指定1件取得   
・TODOの新規登録   
　TODOはID, タスク名, 期限日, 作成日時を持つ  
   
 ![database](https://user-images.githubusercontent.com/29883577/30201938-7db0ee30-94b7-11e7-9942-ad3cfcb32bd9.png)
 
使用言語(FW)   
 Ruby(Sinatra)  
 
環境  
 Vagrant  
 
データ保持  
 MySQL
 データベースはtodo_data.sql内のコードで作成しました。
 初期値として仮のレコードを３つ格納しています。

## Demo
初期表示  
URL  
 
![get_first](https://user-images.githubusercontent.com/29883577/30202238-a62d122a-94b8-11e7-81fd-467febbd921b.png)   
  
レスポンス     
  
![response_first](https://user-images.githubusercontent.com/29883577/30202253-afe843ac-94b8-11e7-8ff7-7dc407cd9100.png)   
  
データの追加  
リクエスト  
  
![request](https://user-images.githubusercontent.com/29883577/30202283-d81bc5c4-94b8-11e7-8676-975527fb45dc.png) 
  
追加後データベース     
  
![after_post](https://user-images.githubusercontent.com/29883577/30202284-d9b3e948-94b8-11e7-997b-f0c728dde5cd.png) 
  
レスポンス   
  
![response_after_post](https://user-images.githubusercontent.com/29883577/30202289-dd48ec52-94b8-11e7-9203-454f862e5c54.png)   
  
IDを指定しデータの取得  
URL  
  
![get_1_url](https://user-images.githubusercontent.com/29883577/30202331-0f2e009a-94b9-11e7-8f5d-2c0c45f32f3d.png)  
  
レスポンス   
  
![response_1](https://user-images.githubusercontent.com/29883577/30202371-31574d98-94b9-11e7-9d00-6e299afdddf9.png) 
  
URL  
  
![get_12_url](https://user-images.githubusercontent.com/29883577/30202400-49005390-94b9-11e7-832a-cfeccace4dd9.png)  
  
レスポンス   
  
![response_12](https://user-images.githubusercontent.com/29883577/30202383-37844310-94b9-11e7-8c8f-1af1c233bace.png)   
  
## Author
Shota Itabashi
