function bisync_docs --wraps='rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case' --description 'alias bisync_docs=rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case'
  rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case $argv
        
end
