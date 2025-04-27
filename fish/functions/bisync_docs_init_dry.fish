function bisync_docs_init_dry --wraps='rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run' --description 'alias bisync_docs_init_dry=rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run'
  rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync --dry-run $argv
        
end
