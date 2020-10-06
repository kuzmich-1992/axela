$(document).ready(function(){

  $('.submitrent').on('click',function(event) {

  event.stopPropagation();
  event.preventDefault();
  // $(this).parent().remove();
  $(this).parent().replaceWith( '<div class="card-rentnow"><p>car already rent</p></div>' );
  
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
    processData: false,  
    contentType: false,   

    }).done(function() { 

     // $(".message").html("Your Alert Message");
     // $(".rented_cars").load(location.href+" .rented_cars>*","");
     

     
    });

  });
  
});




