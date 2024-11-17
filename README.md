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
shortcuts run "Home Note"
```

### step2

```sh
./notify.sh "Clean up mails"
open '/System/Applications/Mail.app'
```

### step3

```sh
./notify.sh "Review draft notes"
shortcuts run "Open Draft Notes"
```

### step4

```sh
./notify.sh "Check GH notifications"
open "https://github.com/notifications"
```

### step5

```sh
./notify.sh "Check my PRs"
open "https://github.com/pulls?q=is%3Aopen+is%3Apr+author%3Aeunjae-lee+archived%3Afalse+created%3A%3E2024-11-06"
```

### step6

```sh
./notify.sh "Read all the Campsite messages"
open /Applications/Campsite.app
```

### step7

```sh
./notify.sh "Review issue inbox"
source .env && open "$LINEAR_INBOX"
```

### step8

```sh
./notify.sh "Review my issues"
source .env && open "$LINEAR_MY_ISSUES"
```

### step9

```sh
./notify.sh "Handle overdue tasks"
open "things:///show?id=today"
```

### step10

```sh
./notify.sh "Move tasks out of the inbox"
open "things:///show?id=inbox"
```

### step11

```sh
./notify.sh "What can be done earlier"
open "things:///show?id=upcoming"
```

### step12

```sh
./notify.sh "Should I schedule something"
open "things:///show?id=anytime"
```

### step13

```sh
/Users/eunjae/.asdf/shims/one-thing ""
osascript -e 'display notification "Have a good day" with title "Morning Routine"'
```
