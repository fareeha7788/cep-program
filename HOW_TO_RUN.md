# How to Run Simple End-to-End Flow

## Simple End-to-End Flow (Token-Based)

**Fast flow using token injection - skips NAFAAT/OTP**

### Run Command:
```powershell
npm run test:subscribe-flow
```

or

```powershell
.\run-subscribe-flow.ps1
```

### What it does:
- Opens get-started page
- Enters Iqama ID
- Sets access token cookie automatically (bypasses NAFAAT/OTP)
- Navigates directly to My Subscriptions dashboard
- Clicks "Subscribe device" from sidebar
- Goes through subscription flow (device selection, delivery address, cart)
- **Stops at Payment Methods screen** (no automatic payment processing)

### Notes:
- Runs in **headed mode** (visible browser)
- Token is automatically set in the feature file
- If sidebar link isn't found, the test will navigate directly to `/subscribe-a-device`
- Browser opens automatically

### Troubleshooting:

**If navigation fails:**
- Check that token in `features/token_cookie_login.feature` is valid and not expired
- Verify you're on the correct environment (staging.portal.ksa.zaam.life)
- Check the browser console and terminal output for error messages

**To update token:**
- Update the token in `features/token_cookie_login.feature` file
- Update the `cpToken` variable in `steps/subscription.steps.js` (all instances)
