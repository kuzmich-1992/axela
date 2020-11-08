$(window).on('load',function(){

  $(document).on ("click", ".submitrent", function (event) {

  $(this).parent().replaceWith( '<div class="card-rentnow"><div class="card-body" style="background-color: #FF0000;"><p>car already rent</p></div></div>' );
  event.stopPropagation();
  event.preventDefault();
 
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

      
     
    });

  });
  
});


