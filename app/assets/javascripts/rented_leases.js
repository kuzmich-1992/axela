$(document).ready(function(){

  $('#submitrent').on('click',function(event) {

  event.stopPropagation();
  event.preventDefault();
 
  

  var fd = new FormData(document.querySelector("#new_rented_lease"));
  fd.append("CustomField", "This is some extra data");

  $.ajax({
    url: '/rented_leases',
    type: "POST",
    data: fd,
    dataType: 'json',
    cache: false,
    processData: false,  // Сообщить jQuery не передавать эти данные
    contentType: false   // Сообщить jQuery не передавать тип контент
    }).done(function (data){

      $("#submitrent").hide();
      
    });  
  
  });

});