# Run Prompt Tracker on localhost

Put these files in the **same folder** as your `index.html` and use ONE of the methods.

## Windows
1) Double‑click `serve.cmd` (or run from CMD: `serve.cmd 5500`)
2) Open: http://localhost:5500/?space=salesforce

## macOS/Linux
```bash
chmod +x serve.sh
./serve.sh 5500
open http://localhost:5500/?space=salesforce   # macOS
xdg-open http://localhost:5500/?space=salesforce  # Linux
```

## Node.js (optional)
```bash
npm install
npm run start
# or: npx http-server -p 5500 .
```

## Notes
- Opening as file:// works for core features, but Google/OneDrive exports require http://localhost.
- If the port is busy, use another: 5555, 8080, etc.
