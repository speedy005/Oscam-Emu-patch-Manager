# Änderungen für oscam_patch_manager.py
Letzte Aktualisierung: 24.06.2026 16:56

---

## 🔧 Änderungen am Script

* Refactor window display logic in OSCam Patch Manager (67ede32)
---

## 📊 Aktueller Tool-Status

```text
  File "/home/runner/work/Oscam-Emu-patch-Manager/Oscam-Emu-patch-Manager/oscam_patch_manager.py", line 8890
    cmd_args = [git_bash, "--login", "-i", "-c", f"{exec_cmd_clean.replace('\\', '/')}; exec bash"]
                                                                                                  ^
SyntaxError: f-string expression part cannot include a backslash
⚠️ Tool-Ausführung fehlgeschlagen
```

---

ℹ️ Automatisch generiert durch GitHub Actions
