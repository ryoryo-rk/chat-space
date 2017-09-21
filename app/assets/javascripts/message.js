$(function(){
  function buildHTML(message){
  	  var html = (message.content && message.image)?json.(message & image):
  	             (message.content)?message.message_only:
  	             message.image_only;
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
