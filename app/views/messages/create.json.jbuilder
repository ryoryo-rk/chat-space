json.content  @message.content


json.user__name @message.user.name

json.time format_posted_time(@message.created_at)

json.id @message.id