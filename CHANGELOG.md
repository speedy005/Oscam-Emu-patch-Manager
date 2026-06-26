# Änderungen für oscam_patch_manager.py
Letzte Aktualisierung: 26.06.2026 11:36

---

## 🔧 Änderungen am Script

* Update app version to 7.0.0 (2a16e56)
---

## 📊 Aktueller Tool-Status

```text
  File "/home/runner/work/Oscam-Emu-patch-Manager/Oscam-Emu-patch-Manager/oscam_patch_manager.py", line 9125
    cmd_args = [git_bash, "--login", "-i", "-c", f"{exec_cmd_clean.replace('\\', '/')}; exec bash"]
                                                                                                  ^
SyntaxError: f-string expression part cannot include a backslash
⚠️ Tool-Ausführung fehlgeschlagen
```

---

ℹ️ Automatisch generiert durch GitHub Actions
