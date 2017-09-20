$(function(){
  function buildHTML(message){
    if(message.content && message.image){
  	  var url = `<div class="contents__body">
                   <div class="contents__body__message-list">
                     <div class="contents__body__message">
                       <div class="contents__body__message-name">${json.user__name}</div>
                       <div class="contents__body__message-time">${json.time}</div>
                       <div class="contents__body__message-text">
                         ${message.content}
                         ${json.image_tag}
                       </div>
                     </div>
                   </div>
                 </div>`
      return url;
    }
    else if(message.content){
      var url = `<div class="contents__body">
                   <div class="contents__body__message-list">
                     <div class="contents__body__message">
                       <div class="contents__body__message-name">${message.user.name}</div>
                       <div class="contents__body__message-time">${json.time}</div>
                       <div class="contents__body__message-text">
                         ${message.content}
                       </div>
                     </div>
                   </div>
                 </div>`
      return url;
    }
    else{
      var url = `<div class="contents__body">
                   <div class="contents__body__message-list">
                     <div class="contents__body__message">
                       <div class="contents__body__message-name">${message.user.name}</div>
                       <div class="contents__body__message-time">${json.time}</div>
                       <div class="contents__body__message-text">
                          ${json.image_tag}
                       </div>
                     </div>
                   </div>
                 </div>`
      return url;
    }

}

  $('#new_message').on('submit', function(e){
    e.preventDefault();
    console.log(this)
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json'
      processData: false,
      contentType: false,
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.messages').append(html);
      $('.contents__form__field').val('');
      $('.contents__form__buttom').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    });
  });
});