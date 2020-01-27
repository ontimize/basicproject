cd src/main/resources/webapp
if not exist node_modules (call npm install) else (echo node_modules already exists.)
call npm run production-aot
ren "dist" "static" & move "static" "%~dp0/boot/src/main/resources/webapp/"