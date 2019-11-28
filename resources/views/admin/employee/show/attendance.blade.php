<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.3.1/main.min.css">

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.3.1/main.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.3.1/locales-all.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.3.0/main.min.js"></script>

<script>


  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'dayGrid' ]
    });

    calendar.render();
  });

</script>

<div id="calendar"></div>