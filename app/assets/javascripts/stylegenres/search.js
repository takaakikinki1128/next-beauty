$(function() {

  var style_list = $('.search-style');
  function appendStyle(style){
    var html = `<li>
                  <a class="style_name-search" href="/stylegenres/${style.id}">${style.name}</a>
                </li>`
    style_list.append(html)
  }

  
  $(".search-form_style_input").on("keyup", function() {
    
    var input = $(".search-form_style_input").val();
    $(".search-style").empty()
    if (input) {
      $.ajax({
        type: 'GET',
        url: '/stylegenres',
        data: { keyword: input },
        dataType: 'json'
      })
      .done(function(styles) {
        styles.forEach(function(style){
          appendStyle(style);
        });
      })

      .fail(function(){
        alert('error');
      })
    }
  });
  
});