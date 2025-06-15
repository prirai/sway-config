function bisync_lib --wraps='rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case' --wraps='rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case' --description 'alias bisync_lib=rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case'
  rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case $argv
        
end
