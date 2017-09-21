json.content  @message.content

json.image @message.image.url

json.group_id  @message.group_id

json.user_id  @message.user_id

json.user__name current_user.name

json.time format_posted_time(@message.created_at)

json.message_only `<div class="contents__body">
                   <div class="contents__body__message-list">
                     <div class="contents__body__message">
                       <div class="contents__body__message-name">${message.user__name}</div>
                       <div class="contents__body__message-time">${message.time}</div>
                       <div class="contents__body__message-text">
                         ${message.content}
                       </div>
                     </div>
                   </div>
                 </div>`
json.image_only `<div class="contents__body">
                   <div class="contents__body__message-list">
                     <div class="contents__body__message">
                       <div class="contents__body__message-name">${message.user__name}</div>
                       <div class="contents__body__message-time">${message.time}</div>
                       <div class="contents__body__message-text">
                          ${message.image.url}
                       </div>
                     </div>
                   </div>
                 </div>`