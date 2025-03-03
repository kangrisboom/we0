const { execSync } = require('child_process');
const path = require('path');

console.log('Rebuilding native modules...');

try {
  // Install Python dependencies first
  execSync('python -m pip install setuptools', {
    stdio: 'inherit'
  });

  // Use @electron/rebuild instead of electron-rebuild
  execSync('npx @electron/rebuild --force --types prod,dev,optional --parallel --module-dir apps/we-dev-client', {
    stdio: 'inherit',
    env: {
      ...process.env,
      ELECTRON_VERSION: process.env.ELECTRON_VERSION || '28.0.0'
    }
  });
  
  console.log('Native modules rebuilt successfully');
} catch (error) {
  console.error('Failed to rebuild native modules:', error);
  process.exit(1);
}
