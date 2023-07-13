echo "Masukkan nama file txt yang ingin di-dekripsi tanpa ekstensi:"
read nama_file

# Menemukan file dengan ekstensi .txt pada direktori tertentu
file=$(find -name "$nama_file.txt.enc" -type f -print -quit)

# Menampilkan path file yang ditemukan
echo "File yang ditemukan: $file"

output_file="${nama_file}_dec.txt"

# Memproses file yang ditemukan (contoh: menampilkan isi file)
if [ -f "$file" ]; then
    openssl rsautl -decrypt -inkey private.pem -in "$file" -out "$output_file"
    echo "Berhasil dekripsi. File hasil: $output_file"
else
    echo "File tidak ditemukan."
fi

