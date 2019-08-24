$(function() {

  var style_list = $('.search-style');
  function appendStyle(genre){
    var html = `<li>
                  <a class="style_name-search" href="/stylegenres/${genre.id}">${genre.name}</a>
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
      .done(function(genres) {
        genres.forEach(function(genre){
          appendStyle(genre);
        });
      })

      .fail(function(){
        alert('error');
      })
    }
  });

  $(document).on({"mouseenter":function(){
    $(this).css('color','blue')
    $(this).stop().animate({'font-size':'30px'}, 250);

  },"mouseleave": function(){
    $(this).css('color','black')
    $(this).stop().animate({'font-size':'25px'}, 250);

  }},".style_name-search")
    
  
});