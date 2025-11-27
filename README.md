# Dbimbing-Week-17-Advance-SQL-query
Tugas Mas Thosan Dbimbing Week 17 Advance SQL query dari Hacker Rank


Reflection Questions

1. Ketika membangun solusi untuk setiap studi kasus, bagaimana Anda menentukan struktur query yang paling efektif (misalnya memutuskan kapan menggunakan CTE, kapan cukup dengan subquery, atau kapan window function lebih tepat dibanding agregasi biasa)? Jelaskan bagaimana pertimbangan tersebut membantu Anda menghasilkan query yang lebih terstruktur, mudah diuji, dan efisien.
2. Setelah mengerjakan seluruh soal, teknik SQL lanjutan apa yang menurut Anda paling memberi dampak pada cara Anda menganalisis dan memproses data (misalnya range join, window function, nested aggregation, atau CASE WHEN)? Jelaskan bagaimana teknik tersebut dapat membantu Anda menyelesaikan masalah data yang lebih kompleks di pekerjaan nyata.
---------------------------------------------------------------------------------------------------------------------------------------------

1. Menentukan Struktur Query yang Efektif

Pemilihan struktur query yang tepat bergantung pada kompleksitas logika data yang ingin diproses:
CTE digunakan ketika query memiliki banyak tahapan pemrosesan atau subquery berulang, sehingga lebih modular dan mudah diuji per bagian.
Subquery menjadi alternatif ketika environment (seperti HackerRank) tidak mendukung CTE, meskipun struktur bisa lebih panjang.
Window function dipilih ketika analisis membutuhkan perhitungan yang tetap mempertahankan detail baris, seperti ranking atau running metrics.
Agregasi biasa tetap dipakai ketika hanya butuh hasil ringkasan.
Pendekatan ini membantu menghasilkan query yang tidak hanya berjalan benar, tetapi juga efisien dan mudah dirawat.

---------------------------------------------------------------------------------------------------------------------------------------------

2. Beberapa teknik memberikan dampak besar pada kemampuan analisis data lanjutan:
CASE WHEN + BETWEEN sangat membantu mengategorikan nilai dan menerapkan logika bisnis langsung dalam query.
CTE memudahkan pemisahan proses perhitungan menjadi tahap-tahap yang jelas dan reusable.
Window function memberikan kemampuan analisis yang lebih advance seperti ranking dan top-N per grup, sehingga cocok untuk analisis user, transaksi, hingga scoring sistem.
Teknik-teknik ini meningkatkan efisiensi kerja dan kemampuan menyelesaikan masalah data yang lebih kompleks di dunia nyata.

------------------------------------------------------------------------------------------------------------------------------------------------

Pertimbangan platform dalam pemilihan teknik

Dalam beberapa platform seperti HackerRank, terdapat batasan penggunaan fitur tertentu. Misalnya pada soal Contest Leaderboard, penggunaan CTE dan beberapa window function tidak diizinkan oleh environment yang tersedia. Oleh karena itu, solusi harus disesuaikan menggunakan subquery sebagai alternatif, meskipun hasil akhir logikanya tetap sama.
Fleksibilitas ini merupakan bagian penting dari praktik SQL di dunia nyata — yaitu mampu menyesuaikan teknik dengan keterbatasan platform, engine SQL, dan performa database.
