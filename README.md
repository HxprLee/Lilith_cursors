![thumbnail](/.img/image.png)
# Lilith-cursors
#### Official Lilith cursor for Windows from the game 'The NOexistenceN of you AND me' ported to Linux
###### I like cute anime girls so I did anyways
Original: https://store.steampowered.com/news/app/2873080/view/514087351520068476?snr=1_5_9_


## Preview
![preview](/.img/preview.gif)

## Installation (for Hyprland)

- Go to [Release](https://github.com/HxprLee/Lilith_cursors/releases) and grab the format you want
- Extract it and copy the [EXTRACTED_FOLDER_NAME] folder to `~/.local/share/icons` or `~/.icons`
- If you're using hyprcursor: Run
```
hyprctl setcursor Lilith_cursor [CURSOR_SIZE]
```
 or set the following environment variable in `hyprland.conf`

```
# Minimum recommended cursor size is 32
env = HYPRCURSOR_THEME,Lilith_cursor 
env = HYPRCURSOR_SIZE,[CURSOR_SIZE]
```
and restart Hyprland (with `hyprctl dispatch exit`)
- If you're using XCursor: set the following environment variable in `hyprland.conf`

```
# Available cursor sizes are 32, 64
env = XCURSOR_THEME,Lilith_XCursor
env = XCURSOR_SIZE,[CURSOR_SIZE]
```
Restart Hyprland (with `hyprctl dispatch exit`) then run
```
gsettings set org.gnome.desktop.interface cursor-theme 'Lilith_XCursor'
``` 

## Installation (for other DEs)

- Go to [Release](https://github.com/HxprLee/Lilith_cursors/releases) and grab the format you want
- Extract it and copy the [EXTRACTED_FOLDER_NAME] folder to `~/.local/share/icons` or `~/.icons`
- Using XCursor: set the following environment variable

```
export XCURSOR_THEME=Lilith_XCursor
export XCURSOR_SIZE=[CURSOR_SIZE]
```
- Restart and the cursor should be applied, if not, to set them in your DE's theme manager
## Notes
- **~~I don't know if this is only occured on my system or it's also on every hyprland user but after compiling the cursor to hyprcursor and apply it, the cursor would be very big and changing to smaller size crashes my Hyprland~~ Fixed by changing resize_algorithm to nearest and cursors size to 32**
- **For hyprcursor: The smallest cursor size you could set is 32, anything below that will crop the cursor**
- **For XCursor: The cursor sizes available are 32 and 64**

- **Some cursor types may be missing, incorrect, or revert back to your already set XCursor theme of the cursor type, I may have missed some of the cursors and the source cursor doesn't have that much diversity of cursor variants**
