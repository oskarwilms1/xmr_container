@echo off
podman-compose up -d --build
for /f "delims=" %%i in ('podman-compose exec -T tor cat /var/lib/tor/monero/hostname') do set ONION=%%i
echo Monero RPC: %ONION%:18089
pause
