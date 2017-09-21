$(function(){
  function buildHTML(message){
  	  var html = `<div class="contents__body">
		                  <div class="contents__body__message-list">
		                    <div class="contents__body__message">
		                      <div class="contents__body__message-name">${message.user__name}</div>
		                      <div class="contents__body__message-time">${message.time}</div>
		                      <div class="contents__body__message-text">
		                        ${message.content}
		                        ${message.image.url}
		                      </div>
		                    </div>
		                  </div>
		                </div>`
      return html;
    }

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
