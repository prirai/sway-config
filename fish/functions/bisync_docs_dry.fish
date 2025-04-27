function bisync_docs_dry --wraps='rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run' --description 'alias bisync_docs_dry=rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run'
  rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case --dry-run $argv
        
end
