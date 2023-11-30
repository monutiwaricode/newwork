

read -p "Enter the directory to search: " directory
read -p "Enter the number of days: " days


read -p "Are you sure you want to continue? (yes/no): " confirm
if [ "$confirm" != "yes" ]; then
    echo "Script terminated."
    exit 0
fi

find "$directory" -type f -mtime +"$days" -exec ls -l {} \;
