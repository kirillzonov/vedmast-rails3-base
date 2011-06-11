// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  $('li.products').hover(
    function() { $('ul', this).css('display', 'block'); },
    function() { $('ul', this).css('display', 'none'); }
  );

  $('#show_help').click(function(){
    $('#order_help').show();
  });

  $('#close_help').click(function(){
    $('#order_help').hide();
  });
});
