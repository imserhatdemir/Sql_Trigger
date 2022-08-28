# Sql_Trigger
 SQL Trigger Kullanımı
 
 --Trigger kullanımında 3 tablo ile çalıştım
--bunlardan 1.si blog 2.si bloglara puan verildiğinde hesaplanması için blograting tablosu 3.sü ise bloglara puan verilen kısım olan comment tablosu
--blogRating tablosunu öncelikle Blog tablosu ile haberleşmesi için aşağıdaki trigger kodunu yazıyoruz
--asagidaki kodda blog eklendikce blogRating tablosuna veri ekleniyor

Create Trigger AddBlogInRatingTable
On blogs
After Insert
As
Declare @ID int
Select @ID=BlogID from inserted
Insert Into blogRatings(BlogID,BlogTotalScore,BlogRaytingCount)
Values(@ID,0,0)


--daha sonra comments tablosunda blog puanlama işlemi için comments ve blogRatings tablosunun haberleşmesine yarayan sql kodunu yazıyorum

Create Trigger AddScoreInComment
On comments
After Insert
As
Declare @ID int
Declare @Score int
Declare @RatingCount int
Select @ID=BlogID,@Score=PointScore from inserted
Update blogRatings Set BlogTotalScore=BlogTotalScore+@Score, BlogRaytingCount+=1
Where BlogID=@ID

![image](https://user-images.githubusercontent.com/64663453/187097734-a367cfef-efad-4b53-8ce6-93fd6c99936c.png)
<br/>
![image](https://user-images.githubusercontent.com/64663453/187097738-e9bd4f10-44c2-468f-957e-c25cca5dee8c.png)
<br/>
![image](https://user-images.githubusercontent.com/64663453/187097745-9f36d634-4109-41a7-bca0-488786659fb7.png)

