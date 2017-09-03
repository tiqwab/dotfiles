import           XMonad
import           XMonad.Hooks.DynamicLog
import           XMonad.Util.EZConfig    (additionalKeysP)
import           XMonad.Util.Run         (spawnPipe)

main = xmonad =<< xmobar (def
    { terminal = "urxvt"
    , modMask = mod4Mask -- Change mod key to <Super-L> (windows key)
    , borderWidth = 3
    }
    `additionalKeysP` keysP' -- additionalKeysP :: XConfig l -> [(String, X ())] -> XConfig l
    )

-- shortcut key settings
keysP' = [ ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume 0 +5%") -- Volume up
         , ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume 0 -5%") -- Volume down
         , ("<XF86AudioMute>", spawn "pactl set-sink-mute 0 toggle") -- Toggle volume mute
         , ("<XF86MonBrightnessUp>", spawn "xbacklight + 5 -time 100 -steps 1") -- Monitor brightness up
         , ("<XF86MonBrightnessDown>", spawn "xbacklight - 5 -time 100 -steps 1") -- Monitor brightness down
         ]
