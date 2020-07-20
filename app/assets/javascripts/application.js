// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-datepicker
//= require jquery-ui
//= require moment
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(document).on('turbolinks:load', function() {
  $( ".booking-start_day" ).change(function() {
    day = moment($(this).val());
    day.add(gon.days, 'd')
    $('.booking-end_day').val(day.format("YYYY-MM-DD"));
  });
  $('#booking_start_day').datepicker({
		minDate: 0,
		dateFormat: 'yy-mm-dd'
  });
});

