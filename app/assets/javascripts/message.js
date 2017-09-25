$(function(){
  function buildHTML(message){
  	  var html = `<div class="contents__body">
		                  <div class="contents__body__message-list">
		                    <div class="contents__body__message"{ 'data-messages-id': ${message.id} }>
		                      <div class="contents__body__message-name">${message.user__name}</div>
		                      <div class="contents__body__message-time">${message.time}</div>
		                      <div class="contents__body__message-text">
		                        ${message.content}
		                      </div>
		                    </div>
		                  </div>
		                </div>`
      return html;
  }

  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false,
    })
    .done(function(data){
      console.table(data)
      var html = buildHTML(data);
      $('.contents__body').append(html);
      $('.contents__form__field').val('');
      $('.contents__form__buttom').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    });
  });

setInterval(function(){
    var message_id = $('.contents__body__message').last().data('messages-id');
    $.ajax({
      url: location.href,
      type: 'GET',
      data: {id: message_id},
      dataType: 'json',
    })
    .done(function(message){
      message.forEach(function(message){
        var html = buildHTML(message);
        $('.contents__body').append(html);
      });
    })
    .fail(function(){
      console.log('error')
      //alert('自動更新に失敗しました');
    });
  },5000);
});