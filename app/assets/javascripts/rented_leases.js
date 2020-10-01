$(document).ready(function(){

  $('.submitrent').bind('click',function(event) {

  $(this).closest(".card").find("form").submit();
  $(this).toggleClass( "highlight" )

  event.stopImmediatePropagation();
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
    contentType: false   // Сообщить jQuery не передавать тип 

    }).done(function() { 

    
    $("#rented_cars").load(location.href+" #rented_cars>*","")
    $(".submitrent highlight").parent().remove();

     
     });

    });
  
  });




