// $(document).ready(function () {
//   $("#btnSubmit").click(function (event) {
//     event.preventDefault();
//       var form = $('#carform')[0];
//       var data = new FormData(form)

//       $.ajax({
//             type: "POST",
//             enctype: 'multipart/form-data',
//             url: "/adposts",
//             data: data,
//             processData: false,
//             contentType: false,
//             cache: false,
//             timeout: 600000,
//             success: function (data) {

//                 $("#result").text(data);
//                 console.log("SUCCESS : ", data);
//                 $("#btnSubmit").prop("disabled", false);

//             },
//             error: function (e) {

//                 $("#result").text(e.responseText);
//                 console.log("ERROR : ", e);
//                 $("#btnSubmit").prop("disabled", false);

//             }
//         });

//     });

// });



$(document).ready(function(){

    $("#btnSubmit").click(function(){

        var fd = new FormData();
        var files = $('#file')[0].files[0];
        var form = $('#carform')[0];
        fd.append('file',files);
        fd.append('carform');

        $.ajax({
            url: '/adposts',
            type: 'post',
            dataType: 'json',
            data: fd,
            contentType: false,
            processData: false,
            success: function (data) {

                
                console.log("SUCCESS : ", data);
               
            },
            error: function (e) {

                console.log("ERROR : ", e);
              
            },
        });
    });
}); 