# Troubleshooting Native Dependencies

## Node-PTY Issues on Windows

If you encounter issues with node-pty native dependencies on Windows, follow these steps:

1. Ensure you have the following prerequisites installed:
   - Python 3.x from [python.org](https://python.org)
   - Visual Studio Build Tools with "Desktop development with C++" workload

2. Run the fix-node-pty script:
   ```powershell
   ./scripts/fix-node-pty.ps1
   ```

3. After the script completes, run:
   ```powershell
   pnpm install --force
   ```

4. If issues persist, try rebuilding node-pty specifically:
   ```powershell
   pnpm rebuild node-pty
   ```

### Alternative Solution

If the above steps don't resolve the issue, you can try using npm instead of pnpm for this project:

```powershell
npm install
```

## Common Issues

1. "%1 is not a valid Win32 application" - This typically indicates a corrupted pnpm installation. The fix-node-pty script should resolve this.
2. Python-related errors - Make sure Python is in your PATH and properly configured.
3. Build tool errors - Ensure Visual Studio Build Tools are properly installed.
