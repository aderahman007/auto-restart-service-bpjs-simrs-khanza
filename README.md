# BASH SCRIPT SHELL BY ADE RAHMAN || ADEOFFICIAL.COM 

### Cara menggunakan crontab 
1. letakan file script ini pada home/default user directory
2. Buka terminal dan beri akses dengan perintah
```
sudo chmod +x auto-restart-service-bpjs-simrs-khanza.sh
```
4. Buka terminal baru dan jalankan perintah di bawah
```
crontab -e
```
3. Tambahkan script dibawah ini Dengan asumsi bahwa script dijalankan setiap jam 00:35
```
35 0 * * * /path/to/file/script.sh >> /tmp/cronjob.log 2>&1
```

#### NOTE : 
- Jika waktu cronjob di ubah sesuaikan juga pada timeout pada script di baris 32 dan 36
- Testing dilakukan pada linux desktop cinnamon, jika anda menggunakan jenis desktop ubuntu lain maka sesuaikan perintah terminal nya *gnome-terminal*.

# Support me
Donation to give me a Gift   
Saweria : https://saweria.co/aderahman007

Follow me :  
**Instagram** : [@aderahman_007](https://www.instagram.com/aderahman_007) || [@adeofficial007](https://www.instagram.com/adeofficial007)

#### Script MIT Lisence
Script ini bersifat **Open Source** siapa pun dapat menggunakan, mengembangkan dan berkontribusi.
Dilarang keras untuk memperjual belikan/mengambil keuntungan dari script ini dalam bentuk apapun tanpa seizin Developper.
