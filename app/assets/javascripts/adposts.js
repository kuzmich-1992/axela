$(document).ready(function(){

  $('#submitadv').on('click',function(event) {
  event.preventDefault();

var fd = new FormData(document.querySelector("form"));
fd.append("CustomField", "This is some extra data");

$.ajax({
  url: '/adposts',
  type: "POST",
  data: fd,
  dataType: 'json',
  processData: false,  // Сообщить jQuery не передавать эти данные
  contentType: false   // Сообщить jQuery не передавать тип контента
});

});

});




// $(document).ready(function(){
//   

//     var dataString = $('#adpost-form-group')
    
//     var price = jQuery("#price").val();
//     var year = jQuery("#year").val();
//     var model = jQuery("#model").val();
//     var serie = jQuery("#serie").val();
//     var body  = jQuery("#body").val(); 
//     var gearbox  = jQuery("#gearbox").val(); 
//     var engine_type  = jQuery("#engine_type").val(); 
//     var location  = jQuery("#location").val();

//     var fd = new FormData();
//     var file = $('#adpost_image');
    
//     fd.append('file',file);
//     fd.append('price',price);
//     fd.append( 'year',year);
//     fd.append( 'model',model);
//     fd.append( 'serie',serie);
//     fd.append( 'body',body);
//     fd.append( 'gearbox',gearbox);
//     fd.append( 'engine_type',engine_type);
//     fd.append( 'location',location);
//     debugger;
//     console.log(fd.data);

//    //  function base64(file, callback){
//    //    var coolFile = {};
//    //    function readerOnload(e){
//    //      var base64 = btoa(e.target.result);
//    //      coolFile.base64 = base64;
//    //      callback(coolFile)
//    //    };

//    //    var reader = new FileReader();
//    //    reader.onload = readerOnload;

//    //    var file = file[0].files[0];
//    //    coolFile.filetype = file.type;
//    //    coolFile.size = file.size;
//    //    coolFile.filename = file.name;
//    //    reader.readAsBinaryString(file);
//    //  };


//    // base64( $("#adpost_image"), function(data){
//    //    console.log(base64.data)
//    // }); 


//     // var dataString = { price:price , year:year , model:model , serie:serie , body:body , gearbox:gearbox , 
//     //                    engine_type:engine_type, location:location , adpost_image:fd };

//     // console.log(dataString);
    
//     $.ajax({
//       method: "POST",  
//       url: '/adposts',
//       data:fd,
//       processData: false,
//       contentType: false,
//       dataType: 'json',
//     }).done(function(data){
    
//       console.log('success');

//     }).fail(function() {
      
//       console.log('fail');

//     });
    
//     });

//   });