function bisync_docs_init --wraps='rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync' --description 'alias bisync_docs_init=rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync'
  rclone bisync Library IIITD-GD:PC/Library --create-empty-src-dirs --compare size,modtime,checksum --slow-hash-sync-only --resilient -MvP --drive-skip-gdocs --fix-case  --resync $argv
        
end
