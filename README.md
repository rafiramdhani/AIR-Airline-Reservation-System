# AIR-Airline-Reservation-System
AIR Airline ticket reservation adalah aplikasi pemesanan tiket pesawat dari sisi admin yang berbasis java dan Mysql menggunakan Netbeans

## Kelompok Umang umang

Anggota:
- Akhmad Nur Alamsyah (19102190) – Project Manager
- Ikhfal Fauzia Rahman (19102057) – Analyst & Designer
- Ainur Rafi Ramdhani (19102132) – Programmer 

Penjelasan Program

- Database **db.sql**

Merupakan file sql yang berada di folder database yang berisi perintah untuk membuat database dan tabel nya. Pada tabel database ini terdiri dari 4 tabel yaitu customer, flight, ticket, dan user. Dan juga terdapat perintah untuk memasukkan data user default yaitu admin agar user dapat masuk ke form main karena pada saat login hanya terdapat memasukkan user dan password saja. 

- **Login.java** / **Login.form**

Merupakan file yang pertama kali dijalankan pada aplikasi ini. Yaitu berisi user dan password login, jadi admin diharuskan memasukkan user nya. Jika sebelumnya belum ada maka menggunakan user default yang sudah terdapat di dalam database yaitu user admin.

- **Main.java** / **Main.form**

Merupakan file Main atau home pada aplikasi ini yang berarti hampir semua informasi pada aplikasi dapat diakses pada file ini. File ini hanya berisi program untuk membuka dan menutup file ini saja, jadi jika user ingin berpindah ke tab yang lain maka file tersebut terbuka dan file main ini tertutup, lalu pada setiap file yang lain terdapat tombol cancel yang jika ditekan maka akan menutup file yang di buka saat itu lalu membuka file main ini.
Program dibawah merupakan salah satu perintah pada program yang berfungsi untuk membuka file/halaman addCustomer lalu menutup file/halaman main.
```
    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {                                           
        addCustomer cus = new addCustomer();
        this.hide();
        cus.setVisible(true);
    }                   
```

- **userCreation.java** / **userCreation.form**

Merupakan file pembuatan user yang jika admin pertama kali memakai aplikasi ini dan masih menggunakan user default. Admin diharuskan membuat user nya sendiri dan jika ingin menggunakan aplikasi ini lagi maka admin dapat menggunakan user nya tersebut. Dan pada user Creation ini terdapat User Id, First Name, Last Name, User Name, Password. Lalu setelah diinputkan maka akan dimasukkan kedalam database airline dengan tabel user. Dan untuk User ID didapat jika mengikuti banyak user yang telah dibuat jika sudah terdapat user default yaitu admin dan 1 user lagi maka User ID secara otomatis akan menjalankan autoID()* dan menggunakan user ID yang ketiga contohnya U0003.

- **addCustomer.java** / **addCustomer.form**

Merupakan file pembuatan customer atau pelanggan. Pada file ini admin dapat memasukkan data customer atau pelanggan yang ingin memesan tiket pesawat, yang berisi Customer ID, First Name, Last Name, NIC No, Passport ID, Address, Date of Birth, Gender Contact, Photo. Lalu  setelah diinputkan maka akan dimasukkan kedalam database airline dengan tabel customer. Dan nantinya data customer yang dibuat ini dapat digunakan pada saat pemesanan tiket. Pada customer ID yaitu sama menggunakan autoID() seperti userid.

- **searchCustomer.java** / **searchCustomer.form**

Merupakan file untuk mencari data customer atau pelanggan yang telah dibuat atau mengganti data nya jika terdapat kesalahan. Pada file ini untuk mencari data customer yaitu menggunakan customer id yang telah dibuat contohnya jika ingin mengganti data customer dengan id CS002 maka akan mencari dengan id tersebut. Lalu admin dapat mengganti data tersebut jika adanya kesalahan pada data. Dan nantinya akan terupdate di dalam database.

- **addFlight.java** / **addFlight.form**

Merupakan file untuk menambahkan data penerbangan. Pada file ini admin dapat menambahkan data peneerbangan yang nantinya customer inginkan, yang berisi Flight ID, Flight Name, Source, Departure, Date, Dep Time, Arr Time, Flight Charge. Lalu setelah diinputkan maka akan dimasukkan kedalam database airline dengan tabel flight. Pada flight ID yaitu sama menggunakan autoID() seperti userid dan customer id.

- **ticket.java** / **ticket.form**

Merupakan file untuk pemesanan tiket pesawat. Pada file ini untuk pemesanan tiket dengan menginputkan Source / Asal dan Departure / Tujuan, lalu nanti data penerbangannya akan ditampilkan di tabel penerbangan. Lalu menginputkan data user dengan menginputkan customer id yang ingin dipesankan tiketnya. Lalu setelah itu memilih penerbangan yang ingin dipesan pada tabel .Dan juga pada file ticket ini juga terdapat Ticket Id untuk setiap pemesanan tiket nya .Lalu nanti data tersebut akan dimasukkan ke dalam database airline dengan tabel ticket. Pada Ticket ID yaitu sama menggunakan autoID() seperti user ID, customer ID, dan user ID.

- **ticketReport.java** / **ticketReport.form**

Merupakan file untuk menampilkan data pemesanan tiket yang telah dilakukan tadi di halaman ticket berupa tabel. Pada file ini hanya terdapat informasi saja untuk mengetahui berapa banyak ticket yang telah dipesan menggunakan tabel.

**AutoID()**

Merupakan script yang ada di file userCreation.java, addCustomer.java, addFlight.java, dan ticket.java. Script ini penting pada aplikasi ini karena pada tiap halaman nya menggunakan di untuk setiap datanya jadi pengguna untuk mengingat id yang akan digunakan atau mengecek nya seperti pada search customer. Yang berfungsi untuk men-generate kode yang digunakan setiap halaman nya. Pada script ini berjalan mengikuti data pada database yang telah dibuat sebelumnya, dan jika sebelumnya belum ada pemasukan data nya atau datanya kosong maka secara otomatis id nya XX001. dan jika sudah terdapat data nya, akan mengikuti data yang sudah terisi pada database.
Script dibawah merupakan salah satu contoh script untuk men-generate customerID.
```
    public void autoID(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/airline","root","");
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("select MAX(id) from customer");
            rs.next();
            rs.getString("MAX(id)");
            if(rs.getString("MAX(id)") == null){
                txtid.setText("CS001");
            }else {
                long id = Long.parseLong(rs.getString("MAX(id)").substring(2,rs.getString("MAX(id)").length()));
                id++;
                 txtid.setText("CS" + String.format("%03d", id));
                
                
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addCustomer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }                   
```

> Contoh hasil Eksport database terdapat di folder database dengan file airline.sql


Hasil Running Program:


**Login**
![Login](https://user-images.githubusercontent.com/35266075/128621325-a4984e11-7ab6-4565-9356-b505bf7003eb.png)


**Main**
![Main](https://user-images.githubusercontent.com/35266075/128621327-4dceac06-9544-4f8b-bd0b-284f48cfa91d.png)


**User Creation**
![User_Creation](https://user-images.githubusercontent.com/35266075/128621319-88d5e2a1-ca85-44d7-8f4a-d4e416e092b3.png)


**Add Customer**
![Add_Customer](https://user-images.githubusercontent.com/35266075/128621322-88639121-02d5-4531-b356-1a5cc27481c0.png)


**Search Customer**
![Search_Customer](https://user-images.githubusercontent.com/35266075/128621330-006d4ba1-9fa3-419a-87bc-a4b77c080696.png)


**Add Flight**
![Flight](https://user-images.githubusercontent.com/35266075/128621324-28fb2809-ef7b-4849-a7db-9c29ead230de.png)


**Book Ticket**
![Ticket](https://user-images.githubusercontent.com/35266075/128621312-93267fe1-d355-4c0c-8eea-3f105edbb8f0.png)


**Ticket Report**
![Ticket_Report](https://user-images.githubusercontent.com/35266075/128621316-ea36d0d7-154e-4caf-a1b1-a65ab770e678.png)

