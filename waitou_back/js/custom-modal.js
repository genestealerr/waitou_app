$(document).ready ( function () {

 $(".delete-place").click(function(){

  $(".delete-place").popover('destroy');

  $('.popover-content').html("");
  var deleteButtonObject = $(this);

  var confirm = '<button class="btn btn-success confirmPopover"><span class="glyphicon glyphicon-ok"></span> Confirm</button>';
  var cancel = '<button class="btn btn-danger cancelPopover"><span class="glyphicon glyphicon-remove"></span> Cancel</button>';

  deleteButtonObject.popover('show');
  $('.popover-content').html('<div class="row">'+cancel+" "+confirm+"</div>");

  $(".cancelPopover").click(function(){
    $(deleteButtonObject).popover('destroy');
  });

  $(".confirmPopover").click(function(){

   deleteButtonObject.popover('destroy');
   $(this).closest('.place').hide(400,"swing");
 });
  
});

 $(".uploadImage").click(function(){
  $("#submitPicture").click();
});

//  $("#updateModalFormSubmit").click(function(){
//   $("#updateForm").submit();
//   alert("update Submitted");
// });

$("#addPlaceModalFormSubmit").click(function(){
  var confirm = '<button class="btn btn-success" id="confirmPopover"><span class="glyphicon glyphicon-ok"></span> Confirm</button>';
  var cancel = '<button class="btn btn-danger" id="cancelPopover"><span class="glyphicon glyphicon-remove"></span> Cancel</button>';
  $(this).popover('show');
  $('.popover-content').html('<div class="row">'+cancel+" "+confirm+"</div>");

  $("#cancelPopover").click(function(){
    $('#addPlaceModalFormSubmit').popover('destroy');
  });

  $("#confirmPopover").click(function(){
   $('.img-checkbox.active').each(function(){
    console.log($(this).attr('id'));
  });
   $('#addPlaceForm').submit();
   $('#addPlaceForm')[0].reset()
   $('#addPlaceModalFormSubmit').popover('destroy');
   $('#newPlace').modal('hide');
 });
});

$("#updateModalFormSubmit").click(function(){
  var confirm = '<button class="btn btn-success" id="confirmPopover"><span class="glyphicon glyphicon-ok"></span> Confirm</button>';
  var cancel = '<button class="btn btn-danger" id="cancelPopover"><span class="glyphicon glyphicon-remove"></span> Cancel</button>';
  $(this).popover('show');
  $('.popover-content').html('<div class="row">'+cancel+" "+confirm+"</div>");

  $("#cancelPopover").click(function(){
    $('#updateModalFormSubmit').popover('destroy');
  });

  $("#confirmPopover").click(function(){
   $('.img-checkbox.active').each(function(){
    console.log($(this).attr('id'));
  });
   $('#updateForm').submit();
   $('#updateForm')[0].reset()
   $('#updateModalFormSubmit').popover('destroy');
   $('#updateModal').modal('hide');
 });
});



$("#connectSubmit").click(function(){
  $("#test").click();
});

$("#submitPicture").change(function(){
  var filePath = $("#submitPicture").val();
  var fileName = filePath.split("\\");
  fileName = fileName[fileName.length - 1];
  $("#newPlacePicture").val(fileName);
});

  //updateModals customized

  $('#updateModal').on('show.bs.modal', function (event) {

  var button = $(event.relatedTarget) // Button that triggered the modal
  var placeName = button.data('place-name') // Extract info from data-* attributes
  var placeDescription = button.data('place-description')
  var placePriceRate = button.data('place-price-rate')
  var placeCreatorName = button.data('place-creator-name')
  var placeCreationDate = button.data('place-creation-date')
  var placeLongitude = button.data('place-longitude')
  var placeLattitude = button.data('place-lattitude')
  var placePicture = button.data('place-picture')
  var modal = $(this)

  modal.find('.placeName').text(placeName)
  modal.find('input.placeName').val(placeName)
  modal.find('textarea.placeDescription').val(placeDescription)
  modal.find('input.placePriceRate').val(placePriceRate)
  modal.find('input.placePicture').val(placePicture)
  modal.find('.placeCreatorName').text(placeCreatorName)
  modal.find('.placeCreationDate').text(placeCreationDate)
  modal.find('input.placeLongitude').val(placeLongitude)
  modal.find('input.placeLattitude').val(placeLattitude)
});



});