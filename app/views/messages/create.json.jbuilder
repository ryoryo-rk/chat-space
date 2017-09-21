json.content  @message.content

json.image @message.image.url

json.user__name message.user.name

json.time format_posted_time(@message.created_at)
