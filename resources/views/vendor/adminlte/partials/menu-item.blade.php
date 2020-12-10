
@if(\Auth::user()->getRoles() == 'superadmin')

    @if (is_string($item))
        <li class="header">{{ $item }}</li>
    @else
        <li class="{{ $item['class'] }}">
            <a href="{{ $item['href'] }}"
            @if (isset($item['target'])) target="{{ $item['target'] }}" @endif
            >
                <i class="fa fa-fw fa-{{ isset($item['icon']) ? $item['icon'] : 'circle-o' }} {{ isset($item['icon_color']) ? 'text-' . $item['icon_color'] : '' }}"></i>
                <span>{{ $item['text'] }}</span>
                @if (isset($item['label']))
                    <span class="pull-right-container">
                        <span class="label label-{{ isset($item['label_color']) ? $item['label_color'] : 'primary' }} pull-right">{{ $item['label'] }}</span>
                    </span>
                @elseif (isset($item['submenu']))
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                @endif
            </a>
            @if (isset($item['submenu']))
                <ul class="{{ $item['submenu_class'] }}">
                    @each('adminlte::partials.menu-item', $item['submenu'], 'item')
                </ul>
            @endif
        </li>
    @endif

@elseif(\Auth::user()->getRoles() == 'adminskpd' && isset($item['text']) && !in_array($item['text'], ['Pengguna', 'API', 'Pengaturan', 'Log & Status', 'SKPD', 'Hari Kerja', 'Penilaian Kinerja', 'Kategori Posisi', 'Posisi', 'Sub-Posisi']))

    @if (is_string($item))
        <li class="header">{{ $item }}</li>
    @else
        <li class="{{ $item['class'] }}">
            <a href="{{ $item['href'] }}"
            @if (isset($item['target'])) target="{{ $item['target'] }}" @endif
            >
                <i class="fa fa-fw fa-{{ isset($item['icon']) ? $item['icon'] : 'circle-o' }} {{ isset($item['icon_color']) ? 'text-' . $item['icon_color'] : '' }}"></i>
                <span>{{ $item['text'] }}</span>
                @if (isset($item['label']))
                    <span class="pull-right-container">
                        <span class="label label-{{ isset($item['label_color']) ? $item['label_color'] : 'primary' }} pull-right">{{ $item['label'] }}</span>
                    </span>
                @elseif (isset($item['submenu']))
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                @endif
            </a>

            @if (isset($item['submenu']))
                <ul class="{{ $item['submenu_class'] }}">
                    @each('adminlte::partials.menu-item', $item['submenu'], 'item')
                </ul>
            @endif
        </li>
    @endif

@elseif(\Auth::user()->getRoles() == 'adminppk' && isset($item['text']) && !in_array($item['text'], ['Pengguna', 'API', 'Pengaturan', 'Log & Status', 'SKPD', 'Hari Kerja']))

    @if (is_string($item))
        <li class="header">{{ $item }}</li>
    @else
        <li class="{{ $item['class'] }}">
            <a href="{{ $item['href'] }}"
            @if (isset($item['target'])) target="{{ $item['target'] }}" @endif
            >
                <i class="fa fa-fw fa-{{ isset($item['icon']) ? $item['icon'] : 'circle-o' }} {{ isset($item['icon_color']) ? 'text-' . $item['icon_color'] : '' }}"></i>
                <span>{{ $item['text'] }}</span>
                @if (isset($item['label']))
                    <span class="pull-right-container">
                        <span class="label label-{{ isset($item['label_color']) ? $item['label_color'] : 'primary' }} pull-right">{{ $item['label'] }}</span>
                    </span>
                @elseif (isset($item['submenu']))
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                @endif
            </a>

            @if (isset($item['submenu']))
                <ul class="{{ $item['submenu_class'] }}">
                    @each('adminlte::partials.menu-item', $item['submenu'], 'item')
                </ul>
            @endif
        </li>
    @endif

@elseif(\Auth::user()->getRoles() == 'operator' && isset($item['text']) && !in_array($item['text'], ['Pengguna', 'API', 'Pengaturan', 'Log & Status', 'Master Data', 'Penilaian Kinerja']))

    @if (is_string($item))
        <li class="header">{{ $item }}</li>
    @else
        <li class="{{ $item['class'] }}">
            <a href="{{ $item['href'] }}"
            @if (isset($item['target'])) target="{{ $item['target'] }}" @endif
            >
                <i class="fa fa-fw fa-{{ isset($item['icon']) ? $item['icon'] : 'circle-o' }} {{ isset($item['icon_color']) ? 'text-' . $item['icon_color'] : '' }}"></i>
                <span>{{ $item['text'] }}</span>
                @if (isset($item['label']))
                    <span class="pull-right-container">
                        <span class="label label-{{ isset($item['label_color']) ? $item['label_color'] : 'primary' }} pull-right">{{ $item['label'] }}</span>
                    </span>
                @elseif (isset($item['submenu']))
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                @endif
            </a>

            @if (isset($item['submenu']))
                <ul class="{{ $item['submenu_class'] }}">
                    @each('adminlte::partials.menu-item', $item['submenu'], 'item')
                </ul>
            @endif
        </li>
    @endif

@endif
