
$(document).ready(function(){

function getUniqueId() {

    //get all the ids in this document
    var ids = new Array();
    $('[id]').each(function() { //Get elements that have an id=
      ids.push($(this).attr("id")); //add id to array
    });


    //give some random value to uniqueId
    //if this value is in ids array, then assign a different id and recheck the condition
    var uniqueId;
    while(true) {
        uniqueId = 'some-prefix-' + Math.floor(Math.random() * 10000);
        if($.inArray(uniqueId , ids) == -1) {
            break;
         }
     }
     return uniqueId;
  }

});