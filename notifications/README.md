# Push Notifications

This directory contains protobuf definitions for sending push notifications. This is so we can decouple the logic for generating
a push notification (i.e. is the user's pill battery too low?) from the logic of actually sending a notification
(anti-spam, SNS, mobile tokens, etc).

`push_notification.proto` is the place to start, as it contains the "union" types for sending a push notification. Other
files have domain-specific notification types, which are used in `push_notification.proto`.


## Compiling
`protoc -I notifications/ --java_out=path/to/project/src/main/java/ notifications/*.proto`
