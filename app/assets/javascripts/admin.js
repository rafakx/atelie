//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree ./admin

function previewImages(input){
  var fileList = input.files;

  var anyWindow = window.URL || window.webkitURL;
  
  $('#image_preview').css('display', 'block');
  $('#image_preview').empty();

  for(var i = 0; i < fileList.length; i++){
    var objectUrl = anyWindow.createObjectURL(fileList[i]);
    $('#image_preview').append('<img class="img-thumbnail" src="' + objectUrl + '" /></div>');
    window.URL.revokeObjectURL(fileList[i]);
  }
}