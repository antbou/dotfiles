-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

hl.env("GDK_SCALE", "1.75")

-- ─────────────────────────────────────────────
-- HOME DOCKING STATION CONFIGURATION
-- Laptop docked with two external monitors:
--   - DVI-I-2 (Dell)       : 1920x1080
--   - DVI-I-1 (ROG PG279Q) : 2560x1440
--   - eDP-1 (built-in laptop screen)
-- Layout: both externals aligned on top, laptop screen centered below.
-- ─────────────────────────────────────────────

-- Left external monitor (Dell 1920x1080), raised slightly to align its bottom
hl.monitor({ output = "desc:Dell Inc. DELL P2214H 29C2956N1ATS", mode = "1920x1080@60", position = "0x405", scale = 1.6 })

-- Right external monitor (ROG 2560x1440)
hl.monitor({ output = "desc:Ancor Communications Inc ROG PG279Q G2LMQS079386", mode = "2560x1440@165", position = "1200x0", scale = 1.333333 })

-- Laptop screen aligned vertically with DVI-I-1
-- X = (1200 + 1920/2) - (1600/2) = 1360
hl.monitor({ output = "eDP-1", mode = "1920x1200@60", position = "1360x1080", scale = 1.2 })

-- Generic fallback for any newly connected screen (e.g. working on the go).
-- Comment the three monitor= above and uncomment this when undocked.
-- hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1.6 })
