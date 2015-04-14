$(document).ready ( function () {
  $( ".img-checkbox" ).click(function() {
    $(this).toggleClass('active');
  });

  $('#updateModal').on('hide.bs.modal', function (event) {
    $('.img-checkbox.active').toggleClass('active');
  });


  $('#newPlace').on('hide.bs.modal', function (event) {
    $('.img-checkbox.active').toggleClass('active');
  });
});