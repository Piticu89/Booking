// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.datetimepicker
//= require jquery.datetimepicker/init
jQuery('#datetimepicker1').datetimepicker({
  lang:'ro',
  i18n:{
    de:{
      months:[
      'Januar','Februar','März','April',
      'Mai','Juni','Juli','August',
      'September','Oktober','November','Dezember',
      ],
      dayOfWeek:[
      "So.", "Mo", "Di", "Mi",
      "Do", "Fr", "Sa.",
      ]
    }
  },
  timepicker:false,
  format:'d.m.Y'
});
