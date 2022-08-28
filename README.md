# Sql_Trigger
 SQL Trigger Kullanımı
 
 --Trigger kullanımında 3 tablo ile çalıştım
--bunlardan 1.si blog 2.si bloglara puan verildiğinde hesaplanması için blograting tablosu 3.sü ise bloglara puan verilen kısım olan comment tablosu
--blogRating tablosunu öncelikle Blog tablosu ile haberleşmesi için aşağıdaki trigger kodunu yazıyoruz
--asagidaki kodda blog eklendikce blogRating tablosuna veri ekleniyor
</br>
![image](https://user-images.githubusercontent.com/64663453/187097769-ef65b4e3-077b-4a17-8aaa-598791291e49.png)
 


--daha sonra comments tablosunda blog puanlama işlemi için comments ve blogRatings tablosunun haberleşmesine yarayan sql kodunu yazıyorum

</br>

![image](https://user-images.githubusercontent.com/64663453/187097817-a7f7f987-4b5b-4697-9d54-98f718e02396.png)


</br>


![image](https://user-images.githubusercontent.com/64663453/187097734-a367cfef-efad-4b53-8ce6-93fd6c99936c.png)
</br>
![image](https://user-images.githubusercontent.com/64663453/187097738-e9bd4f10-44c2-468f-957e-c25cca5dee8c.png)
</br>
![image](https://user-images.githubusercontent.com/64663453/187097745-9f36d634-4109-41a7-bca0-488786659fb7.png)

