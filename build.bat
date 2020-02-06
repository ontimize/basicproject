set publicUrl = %~dp0/frontend/src/main/resources/public/
cd src/main/resources/webapp
if not exist node_modules call npm install else echo node_modules already exists.
call npm run production-aot
if not exist md %publicUrl%
ren "dist" "app" & move "app" %publicUrl%