## Tasks

This morning routine script is powered by [xc](https://xcfile.dev/).

https://www.youtube.com/watch?v=yCvK39GNg0c

### Next

```sh
#!/bin/bash
file="/tmp/morning-routine-$(date +'%Y-%m-%d').txt"

if [ ! -f "$file" ]; then
    echo "0" > "$file"
fi

value=$(($(cat "$file") + 1))

echo $value > "$file"

xc "step$value"
```

### step1

```sh
./notify.sh "Clean up daily note"
osascript -e 'tell application "System Events" to key code 105' # f13 key
```

### step2

```sh
./notify.sh "Clean up mails"
open '/System/Applications/Mail.app'
```

### step3

```sh
./notify.sh "Clean up Inbox notes"
shortcuts run "Open Inbox Notes"
```

### step4

```sh
./notify.sh "Check GH notifications"
open "https://github.com/notifications"
```

### step5

```sh
./notify.sh "Check my PRs"
open "https://github.com/pulls?q=is%3Aopen+is%3Apr+author%3Aeunjae-lee+archived%3Afalse+created%3A%3E2023-12-05"
```

### step6

```sh
./notify.sh "Read all the Slack messages"
open /Applications/Slack.app
```

### step7

```sh
./notify.sh "Review the active sprint tasks"
source .env && open "$ACTIVE_SPRINT_URL"
```

### step8

```sh
./notify.sh "Review unassigned tasks"
source .env && open "$UNASSIGNED_TASKS_URL"
```

### step9

```sh
./notify.sh "Read Soon note"
shortcuts run "Open Soon note"
```

### step10

```sh
./notify.sh "Handle overdue tasks"
open "things:///show?id=today"
```

### step11

```sh
./notify.sh "Move tasks out of the inbox"
open "things:///show?id=inbox"
```

### step12

```sh
./notify.sh "What can be done earlier"
open "things:///show?id=upcoming"
```

### step13

```sh
./notify.sh "Should I schedule something"
open "things:///show?id=anytime"
```

### step14

```sh
/Users/eunjae/.asdf/shims/one-thing ""
osascript -e 'display notification "Have a good day" with title "Morning Routine"'
```
