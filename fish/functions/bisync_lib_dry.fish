function bisync_lib_dry --wraps='rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run' --description 'alias bisync_lib_dry=rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run'
  rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run $argv
        
end
