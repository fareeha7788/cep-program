# PowerShell script to run the Subscribe Device flow in headed mode
$env:HEADLESS = "false"
Write-Host "🚀 Running simple flow in HEADED mode (HEADLESS=false)" -ForegroundColor Green
npx cucumber-js features/token_cookie_login.feature --require ./support/world.js --require ./support/hooks.js --require ./steps/**/*.js --format progress --parallel 1
