function bisync_docs_init --wraps='rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync' --description 'alias bisync_docs_init=rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync'
  rclone bisync Documents IIITD-GD:PC/Documents --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync $argv
        
end
