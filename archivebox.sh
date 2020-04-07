docker run -i \
-v ~/test:/data \
--user $(id -u):$(id -g) \
--name archivebox  \
nikisweeting/archivebox \
env FETCH_TITLE=True \
env FETCH_FAVICON=True \
env FETCH_WGET=True \
env FETCH_WARC=False \
env FETCH_PDF=False \
env FETCH_SCREENSHOT=True \
env FETCH_DOM=False \
env FETCH_GIT=True \
env FETCH_MEDIA=True \
env SUBMIT_ARCHIVE_DOT_ORG=True \
/bin/archive && docker rm archivebox
