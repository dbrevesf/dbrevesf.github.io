---
title: "Creating a Shell Script to generate new Jekyll posts"
date:  2018-08-13 19:04:08
categories: []
tags: []
---

### Shell Script

After losing some seconds copy-pasting and editing old files to creating new posts, I decided to automate this routine.

```sh
#! /bin/bash

# Check if the input is in the correct format
if [ $# -ne 1 ]
    then
        echo $'new_post: wrong input format \nusage: ./new_post.sh "[title]"'
        exit 1
    else
        # Get the title
        title="$1"
        # Replace blank spaces by hiffen
        formatted_title=${title// /-}
        # Get the current date with time
        complete_date="$(date '+%Y-%m-%d %T')"
        # Get just the date
        today="${complete_date:0:10}"
        # Create complete title
        complete_title="$today-$formatted_title.md"
        # Create file
        echo $'---\ntitle: "'$title$'"\ndate: ' > $complete_title \
        $complete_date$'\ncategories: []\ntags: []\n---' > $complete_title
fi

```

To run this script, you must execute it like this:

```./new_post.sh "My New Post"```

Let's suppose that you executed it on 13th August of 2018 at 19:10:30. So, it will generate a file with the following title:

``` 2018-08-13-My-New-Post.md ```

And this file will be filled with the following content:

```markdown
---
title:  "My New Post"
date:   2018-08-13 19:10:30
categories: []
tags: []
---
```

So, you'll just need to fill ```categories``` and ```tags``` and, of course, write the post. 

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 