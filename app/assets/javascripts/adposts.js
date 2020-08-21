
$(document).ready(function(){
  $('#adposts button').on('click',function(event) {
  event.preventDefault();
    
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
      method: "PATCH",  
      url: '/adposts/' + user_id,  
      data: dataString,
      datatype: 'json',
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
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-price").append(price)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-year").append(year)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-model").append(model)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-serie").append(serie)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-body").append(body)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-gearbox").append(gearbox)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-engine_type").append(engine_type)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-location").append(location)
  	  $("[data-adpost-id=" + adpost_id + "] .adpost-info .adpost-adpost_image").append(adpost_image)
    }); 
    
    });

  });