$(document).ready(function(){

  $('.submitrent').on('click',function(event) {

  event.stopPropagation();
  event.preventDefault();
  console.log(this.id);
  $(this).parent().remove();

  // $(this).closest(".card").find("form").submit();
  // $(event.currentTarget).toggle(); 
  // $(this).toggleClass( "highlight" );
 
  var theId = (this.id);
  console.log(this.id);
  var fd = new FormData(document.querySelector(`#new_rent_${theId}`));
 
  fd.append("CustomField", "This is some extra data");

  $.ajax({
    url: '/rented_leases',
    type: "POST",
    data: fd,
    dataType: 'json',
    cache: false,
    processData: false,  // Сообщить jQuery не передавать эти данные
    contentType: false,   // Сообщить jQuery не передавать тип 

    }).done(function() { 

    
     // $("#rented_cars").load(location.href+" #rented_cars>*","");
     // $(this).parent().remove();

     
     });

    });
  
  });




