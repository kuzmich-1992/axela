$(document).ready(function(){

  $('#submitcar').on('click',function(event) {
  event.preventDefault();

  var fd = new FormData(document.querySelector("form"));
  fd.append("CustomField", "This is some extra data");



  $.ajax({
    url: '/rented_cars',
    type: "POST",
    data: fd,
    dataType: 'json',
    cache: false,
    processData: false,  // Сообщить jQuery не передавать эти данные
    contentType: false   // Сообщить jQuery не передавать тип контента
    }).done(function (data){
      $("#rented_cars").load(location.href+" #rented_cars>*","");
    });  
  
  });

});
