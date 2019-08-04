<?php

use Illuminate\Database\Seeder;

use App\Models\Skpd;

class SkpdTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Real Content
        $realdata = [
            ['number'=> '001', 'name' => 'Sekretariat Daerah Kota Pontianak'],
            ['number'=> '002', 'name' => 'Sekretariat DPRD Kota Pontianak'],
            ['number'=> '003', 'name' => 'Inspektorat Daerah KotaPontianak'],
            ['number'=> '004', 'name' => 'Dinas Pendidikan dan Kebudayaan'],
            ['number'=> '005', 'name' => 'Dinas Pengendalian Penduduk, Keluarga Berencana, Pemberdayaan Perempuan dan Perlindungan Anak'],
            ['number'=> '006', 'name' => 'Dinas Lingkungan Hidup'],
            ['number'=> '007', 'name' => 'Dinas Penanaman Modal, Tenaga Kerja dan Pelayanan Terpadu Satu Pintu'],
            ['number'=> '008', 'name' => 'Dinas Koperasi, Usaha Mikro dan Perdagangan'],
            ['number'=> '009', 'name' => 'Dinas Perhubungan'],
            ['number'=> '010', 'name' => 'Dinas Kepemudaan, Olahragadan Pariwisata'],
            ['number'=> '011', 'name' => 'Dinas Kesehatan'],
            ['number'=> '012', 'name' => 'Dinas Kependudukan dan Pencatatan Sipil'],
            ['number'=> '013', 'name' => 'Dinas Sosial'],
            ['number'=> '014', 'name' => 'Dinas Pekerjaan Umum dan Penataan Ruang'],
            ['number'=> '015', 'name' => 'Dinas Perumahan Rakyat dan Kawasan Pemukiman'],
            ['number'=> '016', 'name' => 'Dinas Pangan, Pertanian, dan Perikanan'],
            ['number'=> '017', 'name' => 'Dinas Komunikasi dan Informatika'],
            ['number'=> '018', 'name' => 'Satuan Polisi Pamong Praja'],
            ['number'=> '019', 'name' => 'Dinas Perpustakaan'],
            ['number'=> '020', 'name' => 'Badan Keuangan Daerah'],
            ['number'=> '021', 'name' => 'Badan Perencanaan Pembangunan Daerah'],
            ['number'=> '022', 'name' => 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia'],
            ['number'=> '023', 'name' => 'Kecamatan Pontianak Utara'],
            ['number'=> '024', 'name' => 'Kecamatan Pontianak Selatan'],
            ['number'=> '025', 'name' => 'Kecamatan Pontianak Barat'],
            ['number'=> '026', 'name' => 'Kecamatan Pontianak Timur'],
            ['number'=> '027', 'name' => 'Kecamatan Pontianak Tenggara'],
            ['number'=> '028', 'name' => 'Kecamatan Pontianak Kota']
        ];

        foreach ($realdata as $data) {
            Skpd::create(['number' => $data['number'], 'name' => $data['name']]);
        }

        $skpds = Skpd::all();

        $skpds->each(function($u) {
            $u->programs()
                ->saveMany( factory(App\Models\Program::class, 1)->make() )
                ->each(function($program){
                    $program->activities()->saveMany(factory(App\Models\Activity::class, 1)->make() )
                        ->each(function($activity) {
                            $activity->workPackages()->saveMany(factory(App\Models\WorkPackage::class, 2)->make() );
                        });
                });

            $u->locations()
                ->saveMany( factory(App\Models\Location::class, 3)->make() );

            $u->occupations()
                ->saveMany( factory(App\Models\Occupation::class, 2)->make() );
        });
    }
}
