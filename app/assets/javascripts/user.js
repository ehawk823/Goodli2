$( document ).ready(function() {
  $("#name_form").hide();
  $('#edit').click(function() {
    $("#name_form").show();
    $("#name_input").hide();
    $("#edit").hide();
  });
});
