echo "masukkan nama file txt: "
read nama_file
touch "${nama_file}.txt"

echo "masukkan kalimat kedalam file $nama_file"
read kalimat
echo $kalimat >> $nama_file.txt

echo "memulai enkripsi..."
openssl rsautl -encrypt -inkey public.pem -pubin -in "$nama_file.txt" -out "$nama_file.txt.enc"
echo "berhasil enkrip dengan nama $nama_file.txt.enc"
