<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css" />

<div id="calendar"></div>

@section('jscalendar')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.min.js"></script>

<script>
			
  $(document).ready(function() {
    var calendar = $('#calendar').fullCalendar({
      header:{
        left:'prev,next',
        center:'title',
        right:''
      },
      eventSources: [
        {
          url: '/admin/calendar/attendance',
          method: 'POST',
          data: {
            employee_id: "{{ $data->id }}"
          },
          failure: function() {
            alert('there was an error while fetching events!');
          }
        },
        {
          url: '/admin/calendar/ceremony',
          method: 'POST',
          data: {
            employee_id: "{{ $data->id }}"
          },
          failure: function() {
            alert('there was an error while fetching events!');
          }
        }
      ]
    });
  });
			
</script>
@endsection