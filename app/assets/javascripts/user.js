$( document ).ready(function() {
  $("#name_form").hide();
  $("#location_form").hide();
  $("#mission_form").hide();
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
  $('#edit_mission').click(function() {
    $("#mission_form").show();
    $("#mission_input").hide();
    $("#edit_mission").hide();
  });
});
