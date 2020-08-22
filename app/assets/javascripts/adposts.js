
$(document).ready(function(){
  $('#submitadv').on('click',function(event) {
  event.preventDefault();

    var $li = $(event.target.parentNode)
    const adpost_id = $li.data('adpostId');
    
    var price = jQuery("#price").val();
    var year = jQuery("#year").val();
    var model = jQuery("#model").val();
    var serie = jQuery("#serie").val();
    var body  = jQuery("#body").val(); 
    var gearbox  = jQuery("#gearbox").val(); 
    var engine_type  = jQuery("#engine_type").val(); 
    var location  = jQuery("#location").val(); 
    var adpost_image = jQuery("#adpost_image").val(); 
        
    var dataString = 'price='+ price + '&year=' + year + '&model=' + model + '&serie=' + serie + 
                     '&body=' + body + '&gearbox=' + gearbox + '&engine_type=' + engine_type +
                     '&location=' + location + '&adpost_image=' + adpost_image; 
    
    $.ajax({
      method: "POST",  
      url: '/adposts' => 'adposts#create',
      data: dataString,
      datatype: 'json',
      success: function (textStatus, status) {
        console.log(textStatus);
        console.log(status);
      },
      error: function(xhr, textStatus, error) {
        console.log(xhr.responseText);
        console.log(xhr.statusText);
        console.log(textStatus);
        console.log(error);
      },
    }).done(function(data){
      const price = data.price;
  	  const year = data.year;
  	  const model = data.model;
  	  const serie = data.serie;
  	  const body = data.body;
  	  const gearbox = data.gearbox;
  	  const engine_type = data.engine_type;
  	  const location = data.location;
  	  const adpost_image = data.adpost_image;
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-price").append(price)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-year").append(year)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-model").append(model)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-serie").append(serie)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-body").append(body)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-gearbox").append(gearbox)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-engine_type").append(engine_type)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-location").append(location)
  	  $("[data-adpost-id=" + adpost_id + "] .adposts .adpost-adpost_image").append(adpost_image)
    }); 
    
    });

  });