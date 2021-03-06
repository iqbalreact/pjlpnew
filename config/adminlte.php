<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Title
    |--------------------------------------------------------------------------
    |
    | The default title of your admin panel, this goes into the title tag
    | of your page. You can override it per page with the title section.
    | You can optionally also specify a title prefix and/or postfix.
    |
    */

    'title' => 'AdminLTE 2',

    'title_prefix' => '',

    'title_postfix' => '',

    /*
    |--------------------------------------------------------------------------
    | Logo
    |--------------------------------------------------------------------------
    |
    | This logo is displayed at the upper left corner of your admin panel.
    | You can use basic HTML here if you want. The logo has also a mini
    | variant, used for the mini side bar. Make it 3 letters or so
    |
    */

    'logo' => '<b>E-PJLP</b> PONTIANAK',

    'logo_mini' => '<b>PJLP</B>',

    /*
    |--------------------------------------------------------------------------
    | Skin Color
    |--------------------------------------------------------------------------
    |
    | Choose a skin color for your admin panel. The available skin colors:
    | blue, black, purple, yellow, red, and green. Each skin also has a
    | ligth variant: blue-light, purple-light, purple-light, etc.
    |
    */

    'skin' => 'black',

    /*
    |--------------------------------------------------------------------------
    | Layout
    |--------------------------------------------------------------------------
    |
    | Choose a layout for your admin panel. The available layout options:
    | null, 'boxed', 'fixed', 'top-nav'. null is the default, top-nav
    | removes the sidebar and places your menu in the top navbar
    |
    */

    'layout' => null,

    /*
    |--------------------------------------------------------------------------
    | Collapse Sidebar
    |--------------------------------------------------------------------------
    |
    | Here we choose and option to be able to start with a collapsed side
    | bar. To adjust your sidebar layout simply set this  either true
    | this is compatible with layouts except top-nav layout option
    |
    */

    'collapse_sidebar' => false,

    /*
    |--------------------------------------------------------------------------
    | URLs
    |--------------------------------------------------------------------------
    |
    | Register here your dashboard, logout, login and register URLs. The
    | logout URL automatically sends a POST request in Laravel 5.3 or higher.
    | You can set the request to a GET or POST with logout_method.
    | Set register_url to null if you don't want a register link.
    |
    */

    'dashboard_url' => '/admin/dashboard',

    'logout_url' => 'logout',

    'logout_method' => null,

    'login_url' => 'login',

    'register_url' => null,

    /*
    |--------------------------------------------------------------------------
    | Menu Items
    |--------------------------------------------------------------------------
    |
    | Specify your menu items to display in the left sidebar. Each menu item
    | should have a text and and a URL. You can also specify an icon from
    | Font Awesome. A string instead of an array represents a header in sidebar
    | layout. The 'can' is a filter on Laravel's built in Gate functionality.
    |
    */

    'menu' => [
        'MENU UTAMA',
        [
            'text' => 'Dashboard',
            'icon' => 'dashboard',
            'route'=> 'dashboard',
            'url'  => 'admin/dashboard'
        ],
        [
            'text'  => 'PJLP',
            'icon'  => 'user',
            'route' => 'employee',
            'url'   => 'admin/employee'
        ],
        [
            'text' => 'Kontrak Kerja',
            'icon' => 'book',
            'url'  => 'admin/contract'
        ],
        [
            'text' => 'Kehadiran',
            'icon' => 'book',
            'url'  => '/admin/attendance'
        ],
        [
            'text' => 'Cuti',
            'icon' => 'book',
            'url'  => '/admin/leaveEmployee'
        ],
        [
            'text' => 'Penilaian Kinerja',
            'icon' => 'check-circle-o',
            'url'  => '/admin/assessment'
        ],
        [
            'text' => 'Penggajian',
            'icon' => 'dollar',
            'url'  => '/admin/payroll'
        ],
        [
            'text' => 'Laporan',
            'icon'    => 'book',
            'submenu' => [
                [
                    'text' => 'Pemeriksaan Pekerjaan',
                    'url'  => '/admin/workInspection'
                ],
                [
                    'text' => 'Serah Terima PJLP ke PPKOM',
                    'url'  => '/admin/workHandover'
                ],
                [
                    'text' => 'Pemeriksaan Administrasi',
                    'url'  => '/admin/workAdministration'
                ],
                [
                    'text' => 'Serah Terima PPKOM ke PA',
                    'url'  => '/admin/workHandoverPpkom'
                ],
                [
                    'text' => 'Pembayaran',
                    'url'  => '/admin/paymentLetter'
                ]
                // ,
                // [
                //     'text' => 'Surat Perintah Mulai Kerja',
                //     'url'  => '/admin/startWorkingLetter'
                // ],
            ]
        ],
        'SISTEM',
        [
            'text' => 'Pengguna',
            'icon' => 'user',
            'url'  => 'admin/account'
        ],
        [
            'text' => 'Master Data',
            'icon'    => 'share',
            'submenu' => [
                [
                    'text' => 'SKPD',
                    'url'  => 'admin/skpd'
                ],
                [
                    'text' => 'Program',
                    'url'  => 'admin/program'
                ],
                [
                    'text' => 'Kegiatan',
                    'url'  => 'admin/activity'
                ],
                [
                    'text' => 'Paket Pekerjaan',
                    'url'  => 'admin/workPackage'
                ],
                [
                    'text' => 'Pejabat',
                    'url'  => 'admin/functionary'
                ],
                [
                    'text' => 'Jabatan',
                    'url'  => 'admin/occupation'
                ],
                [
                    'text' => 'Kategori Posisi',
                    'url'  => 'admin/positionCategory'
                ],
                [
                    'text' => 'Posisi',
                    'url'  => 'admin/position'
                ],
                [
                    'text' => 'Sub-Posisi',
                    'url'  => 'admin/subPosition'
                ],
                [
                    'text' => 'Lokasi',
                    'url'  => 'admin/location'
                ],
                [
                    'text' => 'Hari Kerja',
                    'url'  => 'admin/workDay'
                ],
                [
                    'text' => 'Komponen Gaji',
                    'url'  => 'admin/salaryComponent'
                ]
            ]
        ],
        [
            'text' => 'API',
            'icon' => 'fire',
            'url'  => '#'
        ],
        [
            'text' => 'Pengaturan',
            'icon' => 'gear',
            'url'  => '#'
        ],
        [
            'text' => 'Log & Status',
            'icon' => 'history',
            'url'  => 'admin/log'
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Menu Filters
    |--------------------------------------------------------------------------
    |
    | Choose what filters you want to include for rendering the menu.
    | You can add your own filters to this array after you've created them.
    | You can comment out the GateFilter if you don't want to use Laravel's
    | built in Gate functionality
    |
    */

    'filters' => [
        JeroenNoten\LaravelAdminLte\Menu\Filters\HrefFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ActiveFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\SubmenuFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ClassesFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\GateFilter::class,
    ],

    /*
    |--------------------------------------------------------------------------
    | Plugins Initialization
    |--------------------------------------------------------------------------
    |
    | Choose which JavaScript plugins should be included. At this moment,
    | only DataTables is supported as a plugin. Set the value to true
    | to include the JavaScript file from a CDN via a script tag.
    |
    */

    'plugins' => [
        'datatables' => true,
        'select2'    => true,
        'chartjs'    => true
    ],

];
