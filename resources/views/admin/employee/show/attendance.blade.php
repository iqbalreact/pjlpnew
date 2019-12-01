{{-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.3.1/main.min.css"> --}}

<link href='/vendor/fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='/vendor/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />

<div id="calendar"></div>

@section('jscalendar')

<script src='/vendor/fullcalendar/packages/core/main.js'></script>
<script src='/vendor/fullcalendar/packages/daygrid/main.js'></script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'dayGrid' ],
      defaultDate: '2019-12-02',
      events: [
				{
					title: 'All Day Event',
					start: '2019-12-02'
				},
				{
					title: 'Long Event',
					start: '2019-12-02'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-06-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-06-16T16:00:00'
				},
				{
					title: 'Meeting',
					start: '2014-06-12T10:30:00',
					end: '2014-06-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2014-06-12T12:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2014-06-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2014-06-28'
				}
			]

    });

    calendar.render();
  });
</script>  
@endsection