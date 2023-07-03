# Tugas Unjuk Ketrampilan

## Rangkuman Materi Algoritma

### 1. Apa itu Algoritma?

![image](materi/1.png)

Algoritma adalah prosedur komputasi yang didefinisikan dengan baik yang
mengambil beberapa nilai sebagai input dan menghasilkan beberapa nilai
sebagai output.

Contoh Algoritma:

![image](materi/2.png)

### 2. Karakteristik Algoritma

- Memiliki batas awal dan akhir
- Instruksi terdefinisi
- Efektif dan Efisien

### Algoritma Dasar

![image](materi/3.png)

### Pseudocode

Contoh kasus:

MENGHITUNG LUAS SEGITIGA

```
1. INPUT Alas and Tinggi
2. CALCULATE Luas = (Alas x Tinggi) / 2
3. PRINT Luas

```

### Flow chart

Flowchart adalah adalah suatu bagan dengan simbol tertentu yang menggambarkan urutan dan hubungan antar proses secara mendetail.

![image](materi/4.png)

Simbol-simbol Flowchart

![image](materi/5.png)

Contoh kasus:


1. MENGHITUNG LUAS SEGITIGA
   
   ![image](materi/6.png)

2. MENENTUKAN BILANGAN GANJIL
   
   ![image](materi/7.png)

3. MENCETAK FAKTOR BILANGAN
   
   ![image](materi/8.png)


## Rangkuman Version Control and Branch Managemt (Git)


### Apa itu Versioning?
untuk mengatur versi dari source code program.


### Tools

- Version Control System (VCS)
- Source Code Manager (SCM)
- Revision Control System (RCS)

### Version Control System 

#### Single User
- SCCS - 1972 Unix only
- RCS - 1982 Cross platform, text only

#### Centralized
- CVS - 1986 File focus
- Perforce - 1995
- Subversion - 2000 - track directory structure
- Microsoft Team Foundation Server - 2005

#### Distributed
- Git - 2005
- Mercurial - 2005
- Bazaar - 2005

### Git
Salah satu version control system populer yang digunakan para developer untuk mengembangkan software secara bersama-bersama.

### Git Install
#### MacBook

Download the latest: https://sourceforge.net/projects/git-osx-installer/files/


```bash
$ git --version
git version 2.9.2
```

#### Windows

Download the latest: https://git-for-windows.github.io/

#### Linux

```bash
$ sudo apt-get update
$ sudo apt-get install git

$ git --version
git version 2.9.2

```


### Setting Up

#### GIT INIT, CLONE, CONFIG

```bash
# git config
$ git config --global user.name “John Done”
$ git config --global user.email “johndoe@email.com”

#start with init
$ git init
$ git remote add <remote_name> <remote_repo_url>
$ git push -u <remote_name> <local_branch_name>

# start with existing project, start working on the project
$ git clone ssh://john@example.com/path/to/my-project.git
$ cd my-project
```


### Saving Changes

#### THE STAGING AREA

![image](materi/9.png)

#### GIT STATUS, ADD, COMMIT

```bash
$ git status
$ git add <directory>
$ git add hello.py
$ git add .
$ git commit -m “add config file”
```

#### GIT DIFF AND STASH

```bash
# git diff
# change file
# add staging area
$ git diff --staged
# stashing your work
$ git stash
# re-applying your stashed changes
$ git stash apply
```

#### FILE .gitignore

| Pattern | Example matches                                                         | Explanation                                                                                                                                                                                          |
| ------- | ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| *.log   | Debug.log foo.log .log logs/debug.log                                   | An asterisk is a wildcard that matches zero or more characters.                                                                                                                                      |
| logs    | logs logs/debug.log logs/latest/foo.bar build/logs build/logs/debug.log | If you don't append a slash, the pattern will match both files and the contents of directories with that name. In the example matches on the left, both directories and files named logs are ignored |


### Inspecting Repository

#### GIT LOG, CHECKOUT

```bash
# viewing an old revision
$ git log --oneline
# b7119f2 Continue doing crazy things
# 872fa7e Try something crazy
# a1e8fb5 Make some important changes to hello.txt
$ git checkout a1e8fb5
```

#### GIT RESET

![image](materi/10.png)


#### GIT RESET

```bash
# viewing an old revision
$ git log --oneline
# b7119f2 Continue doing crazy things
# 872fa7e Try something crazy
# a1e8fb5 Make some important changes to hello.txt
$ git reset a1e8fb5 --soft
```

### Syncing

#### GIT PUSH, FETCH & PULL

```bash
# git remote
$ git remote -v
$ git remote add origin http://dev.example.com/john.git
# fetch and pull
$ git fetch
$ git pull origin master
# push
$ git push origin master
$ git push origin feature/login-user
```


### Branches

#### GIT BRANCHING

```bash
# show all branch
$ git branch --list
# create a new branch called <branch>
$ git branch <branch>
# force delete the specified branch
$ git branch -D <branch>
# list remote branch
$ git branch -a
```


#### GIT MERGE

```bash
# Start a new feature
git checkout -b new-feature master
# Edit some files
git add <file>
git commit -m "Start a feature"
# Edit some files
git add <file>
git commit -m "Finish a feature"
# Merge in the new-feature branch
git checkout master
git merge new-feature
git branch -d new-feature
```

### Pull Request

![image](materi/11.png)

![image](materi/12.png)


## Rangkuman Bahasa Pemrograman Dart

### 1. Apa dan Mengapa Dart?

Bahasa pemrograman yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat. Aplikasi yang dibuat dengan Dart adalah aplikasi yang berjalan disisi client (frontend), seperti:

- WEB 
- Desktop
- Mobile

Dart memiliki keunggulan:
- Type safe : menjamin konsistensi tipe data
- Null safety: memberi keamanan dari data bernilai hampa (null)
- Rich standard library: hadir dengan banyak dukungan library internal
- Multiplatform: mampu berjalan pada berbagai jenis perangkat

### 2. Fungsi Main

- Bagian yang dijalankan pertama kali
- Dapat memiliki tipe data void atau int
- Memiliki nama main
- Perintah print digunakan untuk menampilkan data ke layar

```dart
void main(){
   print("Selamat Datang di Bahasa Pemrograman Dart!");
}
```

### 3. Komentar

Baris kode yang tidak dijalankan dengan tujuan:
- memberi catatan pada kode
- mencegah perintah dijalankan

```dart
void main(){
   // ini komentar
   print("Selamat Datang di Bahasa Pemrograman Dart!");
   /*
   Ini juga komentar
   */
}
```

### 4. Variabel

- Digunakan untuk menyimpan data
- Memiliki nama
- Memiliki tipe data

##### Deklarasi Variabel

Proses pembuatan variabel

![Image](materi/13.png)


Menggunakan var dan diikuti nama variabel secara otomatis tipe data variabel tersebut adalah Null.

```dart
void main(){
   var usia;
}
```

##### Memberi Nilai pada Variabel
Menggunakan tanda sama dengan (=).

```dart
void main(){
   var usia;
   usia = 18;
}
```

##### Inisiasi Variabel
Deklarasi dan memberi nilai variabel secara bersamaan.

```dart
void main(){
   var usia = 18;
}
```

##### Konstanta

- Digunakan untuk menyimpan data
- Memiliki nama
- Memiliki tipe data
- Nilai tetap (tidak dapat diubah)

##### Membuat Konstanta
Menggunakan final, diikuti nama, dan diberikan nilai secara langsung.

```dart
void main(){
   final usia = 18;
}
```

### 5. Tipe Data

- Jenis data yang dapat dikelola
- Tipe data sederhana disebut primitive data type


#### Jenis
- int : bilangan bulat
- double : bilangan pecahan
- bool : true/false
- string : teks

#### int
Menggantikan var dengan int dan data harus bilangan bulat.

```dart
void main(){
   int usia = 18;
}
```


#### double
- Menggantikan var dengan double dan data harus bilangan pecahan
- Penulisan pecahan menggunakan tanda titik

```dart
void main(){
   double beratBadan = 55.8;
}
```

#### bool
Menggantikan var dengan bool dan data harus true atau false

```dart
void main(){
   bool pria = false;
}
```

#### string
- Menggantikan var dengan string dan data berupa teks
- Penulisan teks diawali dan diakhiri tanda kutip

```dart
void main(){
   String nama = 'Alex';
}
```

### 6. Operator

- Digunakan untuk operasi pengolahan data
- Data yang dikelola disebut operand

#### Arithmetic
untuk perhitungan matematis ```+, -, *, /, %```

```dart
void main(){
   print(1+2);
}
```


#### Assignment
memberi nilai pada variabel ```=, +=, -=, *=, /=, %=```

```dart
void main(){
   var usia = 18;
   usia = 19;
}
```

#### Comparison
membandingkan kesetaraan nilai ```==, <, <=, >, >=```

```dart
void main(){
   print(1==2);
}
```

#### Logical
menggabungkan beberapa kondisi ```&&, ||, !```

```dart
void main(){
   print(1==2 && 2==1);
}
```
