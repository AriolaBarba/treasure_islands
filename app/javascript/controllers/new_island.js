// $(document).ready(function() {
//   $('#booking-form').submit(function(event) {
//     event.preventDefault(); // Prevent form submission
//     var form = $(this);
//     var url = form.attr('action');
//     var method = form.attr('method');
//     var formData = form.serialize();

//     $.ajax({
//       url: url,
//       method: method,
//       data: formData,
//       success: function(response) {
//         $('#new-island-results').html(response); // Update the results container
//       },
//       error: function(xhr) {
//         // Handle error if needed
//       }
//     });
//   });
// });
