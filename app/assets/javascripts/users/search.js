$(function() {

  var user_list = $('.search-div');
  function appendUser(user){
    var html = `<li>
                  <a class="name-search" href=" /users/${user.id}">${ user.nickname }</a>
                </li>`
    user_list.append(html)
  }

  
  $(".search-form_input").on("keyup", function() {
    
    var input = $(".search-form_input").val();
    $(".search-div").empty()
    if (input) {
      $.ajax({
        type: 'GET',
        url: '/users',
        data: { keyword: input },
        dataType: 'json'
      })
      .done(function(users) {
        users.forEach(function(user){
          appendUser(user);
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

  }},".name-search")
    

  
});