$( document ).ready(function() {
  $("#name_form").hide();
  $("#location_form").hide();
  $('#edit').click(function() {
    $("#name_form").show();
    $("#name_input").hide();
    $("#edit").hide();
  });
  $('#edit_location').click(function() {
    $("#location_form").show();
    $("#location_input").hide();
    $("#edit_location").hide();
  });
});
