json.content  @message.content

json.image @message.image.url

json.group_id  @message.group_id

json.user_id  @message.user_id

json.user__name current_user.name

json.time format_posted_time(@message.created_at)
