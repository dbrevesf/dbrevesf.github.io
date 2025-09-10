#! /bin/bash
##############################################################################
# Script Name: new_post.sh
# Description: Quickly creation of a new blog post based on Jekyll rules.
# Args: Post title between quotes.
# Author: Daniel Breves
# Email: dbrevesf-at-gmail.com
##############################################################################

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

