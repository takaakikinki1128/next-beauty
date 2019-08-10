$(function(){
  $("#new_user").validate({
    rules : {
      "user[nickname]": {
        required: true
      },
      "user[email]": {
        required: true
      },
      "user[password]": {
        required: true
      }
    },
    messages: {
      "user[nickname]": {
        required: " 入力してください"
      },
      "user[email]":{
          required: "入力してください"
      },
      "user[password]":{
        required: "入力してください"
      }
    },
    errorPlacement: function(error, element) {
      if(element.attr("name")=="user[nickname]")
      {
        error.insertAfter(".error-signup-1");	
      }
      else if(element.attr("name")=="user[email]") {
        error.insertAfter(".error-signup-2");
      }
      else if(element.attr("name")=="user[password]") {
        error.insertAfter(".error-signup-3");
      }
      else{
        error.insertAfter(element);	
      }
    }
  })
})
