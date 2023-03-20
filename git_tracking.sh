# Set the branch name and file name
branch="master"
file="tracking.txt"

while true; do
  # Pull the latest changes from the branch
  git pull --quiet origin $branch:$branch > /dev/null && \

  # Echo the current date and time to the file
  echo $(date) > $file && \

  # Commit and push changes
  git add $file > /dev/null && \
  git commit -m "tracking" > /dev/null && \
  git push --quiet origin $branch > /dev/null

  # Notify
  printf "\rtracking $(date)\n"

  # Wait for the default sleep time of 5 minutes
  sleep 60
done