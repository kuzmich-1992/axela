$(document).ready(function(){

  $('#submitrent').on('click',function(event) {
  debugger;
  event.stopPropagation();
  event.preventDefault();
 
  

  var fd = new FormData(document.querySelector("#new_rented_lease"));
  fd.append("CustomField", "This is some extra data");

  $.ajax({
    url: '/rented_leases',
    type: "POST",
    data: fd,
    dataType: 'json',
    async: true,
    

    }).done(function (){  
      $(".submitrent").hide();
      $("#rented_cars").load(location.href+" #rented_cars>*","")
    }).fail(function() {
       alert( "error" );
    }).always(function() {
      $(".submitrent").hide();
      $("#rented_cars").load(location.href+" #rented_cars>*","")
    });
  
  });

});


// var jqxhr = $.ajax( "example.php" )
//   .done(function() {
//     alert( "success" );
//   })
//   .fail(function() {
//     alert( "error" );
//   })
//   .always(function() {
//     alert( "complete" );
//   });