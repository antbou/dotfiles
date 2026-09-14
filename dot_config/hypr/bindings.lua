-- Personal keybinding overrides.
-- omarchy menu keybindings --print

-- File manager moved from default SUPER+SHIFT+F to SUPER+SHIFT+E.
-- SUPER+SHIFT+E collides with the default "Email" (Hey) binding, so drop that too.
hl.unbind("SUPER + SHIFT + F")
hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "File manager", { omarchy = "nautilus" })

-- Native clipboard manager moved from default SUPER+CTRL+V to SUPER+SHIFT+V.
hl.unbind("SUPER + CTRL + V")
o.bind("SUPER + SHIFT + V", "Clipboard manager", "omarchy-shell shell toggle omarchy.clipboard")

-- Drop unused preinstalled webapp/tool bindings. Keep YouTube, Docker, Obsidian, Herdr.
hl.unbind("SUPER + SHIFT + A") -- ChatGPT
hl.unbind("SUPER + SHIFT + ALT + A") -- Grok
hl.unbind("SUPER + SHIFT + C") -- Calendar (Hey)
hl.unbind("SUPER + SHIFT + ALT + E") -- New email (Hey)
hl.unbind("SUPER + SHIFT + ALT + G") -- WhatsApp
hl.unbind("SUPER + SHIFT + CTRL + G") -- Google Messages
hl.unbind("SUPER + SHIFT + P") -- Google Photos
hl.unbind("SUPER + SHIFT + S") -- Google Maps
hl.unbind("SUPER + SHIFT + X") -- X
hl.unbind("SUPER + SHIFT + ALT + X") -- X Post
hl.unbind("SUPER + SHIFT + G") -- Signal
hl.unbind("SUPER + SHIFT + W") -- Omawrite
hl.unbind("SUPER + SHIFT + SLASH") -- Passwords (1Password)
hl.unbind("SUPER + SHIFT + ALT + M") -- Music TUI (cliamp)
