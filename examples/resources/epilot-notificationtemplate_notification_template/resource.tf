resource "epilot-notificationtemplate_notification_template" "my_notificationtemplate" {
  action_label = "...my_action_label..."
  action_url   = "...my_action_url..."
  manifest = [
    "123e4567-e89b-12d3-a456-426614174000"
  ]
  message            = "...my_message..."
  name               = "...my_name..."
  notification_title = "...my_notification_title..."
  style              = "...my_style..."
  tags = [
    "..."
  ]
  title = "...my_title..."
  type  = "...my_type..."
}