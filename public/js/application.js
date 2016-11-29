$(document).ready(function() {
  $('#login-form-div').hide();
  $('#register-form-div').hide();

  // login form dropdown
  $('body').find("a[href='/sessions/new']").on('click', function(event){
    event.preventDefault();
    $("#login-form-div").slideDown();
    $("#register-form-div").slideUp();
  });

  // register form dropdown
  $('body').find("a[href='/users/new']").on('click', function(event){
    event.preventDefault();
    $("#register-form-div").slideDown();
    $("#login-form-div").slideUp();
  });

  // login submit
  // $('#login-form').on('submit', function(event){
  //   event.preventDefault();
  //   var $form = $(this);
  //   var formData = $form.serialize();

  //   $.ajax({
  //     url: $form.attr("action"),
  //     type: $form.attr("method"),
  //     data: formData
  //   })
  //   .done(function(response) {
  //     console.log(response);
  //   })
  //   .fail(function() {
  //     console.log("error");
  //   });
  // });



});
