function bisync_docs_init_dry --wraps='rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run' --description 'alias bisync_docs_init_dry=rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run'
  rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run $argv
        
end
