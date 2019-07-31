<?php

use Illuminate\Database\Seeder;

use App\Models\Position;
use App\Models\PositionCategory;

class PositionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $realdData = [
            [
                'name'      => 'Pekerja Penanganan Prasarana dan Sarana Umum (PPSU)',
                'position'  => [
                    ['name' => 'Pekerja Operasional Kebersihan Kota'],
                    ['name' => 'Pekerja Operasional Taman Kota'],
                    ['name' => 'Pekerja Pemeliharaan Saluran Kota'],
                    ['name' => 'Pekerja Pemeliharaan Jalan Kota'],
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Tata Ruang',
                'position'  => [
                    ['name' => 'Petugas Pengelola Izin Mendirikan Bangunan Gedung/Bangunan'],
                    ['name' => 'Petugas Teknologi Informasi Komputer (SIG)'],
                    ['name' => 'Pembantu Pengawas Tata Bangunan dan Perumahan'],
                    ['name' => 'Petugas Survey, Pengukuran dan Pemetaan'],
                ]
            ], [
                'name'      => 'Pekerja/Petugas Keamanan',
                'position'  => [
                    ['name' => 'Satpam /Penjaga Malam/ Petugas Keamanan'],
                    ['name' => 'Petugas Perlindungan Masyarakat (Untuk Non Aparatur Sipil Negara Satuan Polisi Pamong Praja)']
                ]
            ], [
                'name'      => 'Pekerja/Petugas Pramubakti dan Kebersihan Bangunan Pemerintah:',
                'position'  => [
                    ['name' => 'Petugas Pramubakti'],
                    ['name' => 'Petugas Kebersihan']
                ]
            ], [
                'name'      => 'Pengemudi/Sopir',
                'position'  => [
                    ['name' => 'Pengemudi/Sopir']
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Pangan, Pertanian,Perikanan dan Peternakan',
                'position'  => [
                    ['name' => 'Tenaga Penyuluh Perikanan, Pertanian dan Pangan'],
                    ['name' => 'Petugas Pengawas Bibit Ternak'],
                    ['name' => 'Petugas Pengelolaan, Pengembangan dan Pemeliharaan Bibit Tanaman Pertanian'],
                    ['name' => 'Medik Veteriner'],
                    ['name' => 'Paramedik Veteriner'],
                    ['name' => 'Petugas Pengelola Rumah Potong Hewan'],
                    ['name' => 'Petugas Laboratorium Pengolahan Hasil dan Kultur Jaringan'],
                    ['name' => 'Petugas Pembenihan/Budidaya Ikan'],
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Sosial',
                'position'  => [
                    ['name' => 'Pengasuh pada PLAT/UPRS/P2TP2A'],
                    ['name' => 'Pendamping pada PLAT/UPRS/P2TP2A']
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Kesehatan',
                'position'  => [
                    ['name' => 'Petugas Medis'],
                    ['name' => 'Petugas Paramedis'],
                    ['name' => 'Apoteker'],
                    ['name' => 'Asisten Apoteker'],
                    ['name' => 'Non Paramedis'],
                    ['name' => 'Teknisi Medis'],
                    ['name' => 'Pengemudi Ambulan'],
                    ['name' => 'Petugas Laboratorium'],
                    ['name' => 'Sekretariat Komisi Penanggulangan AIDS'],
                    ['name' => 'Terapist Anak Berkebutuhan Khusus'],
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Perhubungan dan lalu Lintas',
                'position'  => [
                    ['name' => 'Penguji Kendaraan Bermotor'],
                    ['name' => 'Sopir Bus Rapid Transport (BRT)']
                ]
            ], [
                'name'      => 'Pekerja/Petugas Bidang Komunikasi, Informatika dan Statistik',
                'position'  => [
                    ['name' => 'Pekerja/Tenaga Teknologi Informasi'],
                    ['name' => 'Pekerja/Admin PONTIVE CENTER'],
                    ['name' => 'Pekerja/Tenaga Pengolah Informasi dan Multimedia'],
                    ['name' => 'Pekerja/Tenaga Pengolah Informasi dan Multimedia'],
                ]
            ], [
                'name'      => 'Pekerja/Petugas Administrasi',
                'position'  => [
                    ['name' => 'Petugas Administrasi Lulusan Prodi IP'],
                    ['name' => 'Petugas Layanan Operasional'],
                ]
            ], [
                'name'      => 'Tenaga Ahli Fraksi',
                'position'  => [
                    ['name' => 'Tenaga Ahli Fraksi']
                ]
            ], [
                'name'      => 'Pekerja/Petugas Sarana dan Prasarana Milik Pemerintah',
                'position'  => [
                    ['name' => 'Pengawas Kolam renang Ampera'],
                    ['name' => 'Teknisi'],
                    ['name' => 'Pengelola/Juru Parkir'],
                    ['name' => 'Petugas Loket/Karcis'],
                    ['name' => 'Juru Kelola Pontianak Convention Center'],
                ]
            ]
        ];

        foreach($realdData as $data) {
            $category = new PositionCategory();
            $category->name = $data['name'];
            $category->save();

            foreach($data['position'] as $position) {
                $pos = new Position();
                $pos->position_category_id = $category->id;
                $pos->name = $position['name'];
                $pos->save();
            }
        }
    }
}
