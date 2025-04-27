function bisync --wraps='rclone bisync <source_folder> <destination_folder> --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case' --description 'Alias for syncing documents with rclone bisync'
    # Prompt for the source folder to sync
#     set source_folder (read -P "Enter the folder you want to sync: ")
    echo "Enter the folder you want to sync: "
    set source_folder (find . -maxdepth 1 -type d | fzf --height 40% --reverse --no-sort --inline-info)
    set source_folder (string replace -r '^\./' '' "$source_folder")
    echo $source_folder
    # Fail if no source folder is provided
    if test -z "$source_folder"
        echo "Error: No source folder specified."
        return 1
    end

    # Check if the source folder exists
    if not test -d "$source_folder"
        echo "The folder '$source_folder' does not exist."
        return 1
    end

    # Prompt for the destination folder
    set destination_folder "IIITD-GD:PC/$source_folder"


    # Fail if no destination folder is provided
    if test -z "$destination_folder"
        echo "Error: No destination folder specified."
        return 1
    end

    # Prompt for resync option
    set resync (read -P "Do you want to resync? (yes/no): ")
    if test "$resync" = "yes"
        set resync_flag "--resync"
    else
        set resync_flag ""
    end

    # Prompt for dry run option
    set dry_run (read -P "Do you want to perform a dry run? (yes/no): ")
    if test "$dry_run" = "yes"
        set dry_run_flag "--dry-run"
    else
        set dry_run_flag ""
    end

    # Build the command
    set command "rclone bisync"

    # Add source folder if it's not empty
    if test -n "$source_folder"
        set command "$command '$source_folder'"
    end

    # Add destination folder if it's not empty
    if test -n "$destination_folder"
        set command "$command '$destination_folder'"
    end

    # Append other options
    set command "$command --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case $resync_flag $dry_run_flag"

    # Execute the command
    eval $command

    echo "Sync command executed."
end
