$(function(){
  $("#new_product").validate({
    rules : {
      "product[shop_name]": {
        required: true
      },
      "product[text]": {
        required: true
      },
      "product[video]": {
        required: true
      },
      "product[stylest_name]": {
        required: true
      },
      "stylegenre_id": {
        required: true
      },
      "item_id": {
        required: true
      },
      "color_id": {
        required: true
      },
      "perm_id": {
        required: true
      },
    },
    messages: {
      "product[shop_name]": {
        required: " 入力してください"
      },
      "product[text]":{
          required: "入力してください"
      },
      "product[video]":{
        required: "入力してください"
      },
      "product[stylest_name]":{
        required: "入力してください"
      },
      "stylegenre_id":{
        required: "入力してください"
      },
      "item_id":{
        required: "入力してください"
      },
      "color_id":{
        required: "入力してください"
      },
      "perm_id":{
        required: "入力してください"
      },
    },
    errorPlacement: function(error, element) {
      if(element.attr("name")=="product[shop_name]")
      {
        error.insertAfter(".error-new-1");	
      }
      else if(element.attr("name")=="product[text]") {
        error.insertAfter(".error-new-2");
      }
      else if(element.attr("name")=="product[video]") {
        error.insertAfter(".error-new-3");
      }
      else if(element.attr("name")=="product[stylest_name]") {
        error.insertAfter(".error-new-4");
      }
      else if(element.attr("name")=="stylegenre_id") {
        error.insertAfter(".error-new-5");
      }
      else if(element.attr("name")=="item_id") {
        error.insertAfter(".error-new-6");
      }
      else if(element.attr("name")=="color_id") {
        error.insertAfter(".error-new-7");
      }
      else if(element.attr("name")=="perm_id") {
        error.insertAfter(".error-new-8");
      }
      else{
        error.insertAfter(element);	
      }
    }
  })
})
