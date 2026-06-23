# Änderungen für oscam_patch_manager.py
Letzte Aktualisierung: 23.06.2026 15:28

---

## 🔧 Änderungen am Script

* Update version to 5.5.0 and improve sound handling (485e518)
---

## 📊 Aktueller Tool-Status

```text
  File "/home/runner/work/Oscam-Emu-patch-Manager/Oscam-Emu-patch-Manager/oscam_patch_manager.py", line 8958
    cmd_args = [git_bash, "--login", "-i", "-c", f"{exec_cmd_clean.replace('\\', '/')}; exec bash"]
                                                                                                  ^
SyntaxError: f-string expression part cannot include a backslash
⚠️ Tool-Ausführung fehlgeschlagen
```

---

ℹ️ Automatisch generiert durch GitHub Actions
