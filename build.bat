cd src/main/resources/webapp
if not exist node_modules (call npm install) else (echo node_modules already exists.)
call npm run production-aot
ren "dist" "app" & move "app" "%~dp0/boot/src/main/resources/public/"