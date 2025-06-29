FullExit(ExitCode := 0) {
	Run("cmd.exe /k taskkill /f /im `"AutoHotkey64.exe`" && exit /b " ExitCode)
	/* FULL EXIT CODE GUIDE */
	; 0 — Exit was initiated manually (e.g. by user via hotkey)
}
