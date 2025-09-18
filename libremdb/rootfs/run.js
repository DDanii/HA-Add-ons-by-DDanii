const fs = require('fs');
const { fork } = require('child_process');

// Load and parse env.json
const envData = JSON.parse(fs.readFileSync('/data/options.json', 'utf-8'));

// Copy env vars to process.env
for (const key in envData) {
  process.env[key] = envData[key];
}

// Start the other Node.js app
const child = fork('/opt/app/node_modules/next/dist/bin/next', ['start'], {
  stdio: 'inherit',  // Inherit stdio so logs show in same console
  env: process.env   // Pass updated env vars
});

child.on('close', (code) => {
  console.log(`Child process exited with code ${code}`);
});
