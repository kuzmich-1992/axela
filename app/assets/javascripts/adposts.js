
$(document).ready(function(){
  $('#submitadv').on('click',function(event) {
  event.preventDefault();

    var dataString = $('#adpost-form-group')
    
    var price = jQuery("#price").val();
    var year = jQuery("#year").val();
    var model = jQuery("#model").val();
    var serie = jQuery("#serie").val();
    var body  = jQuery("#body").val(); 
    var gearbox  = jQuery("#gearbox").val(); 
    var engine_type  = jQuery("#engine_type").val(); 
    var location  = jQuery("#location").val(); 
    var adpost_image = jQuery("#adpost_image").val(); 
    
    $.ajax({
      method: "POST",  
      url: '/adposts',
      data:{ adpost : dataString },
      dataType: 'json',
    }).done(function(data){
    
      console.log('success');

    }).fail(function() {
      
      console.log('fail');

    });
    
    });

  });