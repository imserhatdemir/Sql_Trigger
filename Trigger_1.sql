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