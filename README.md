# Lilith-cursors
![thumbnail](/.img/image.png)
#### Offical Lilith cursor for Windows from the game 'The NOexistenceN of you AND me' ported to Linux
###### I like cute anime girls so I did anyways
Original: https://store.steampowered.com/news/app/2873080/view/514087351520068476?snr=1_5_9_

I have only ported to hyprcursor format, the XCursor format is still WIP

## Preview
![preview](/.img/preview.gif)

## Installation

- Go to [Release](https://github.com/HxprLee/Lilith_cursors/releases) and grab the format you want
- Extract it and copy the [EXTRACTED_FOLDER_NAME] folder to `~/.local/share/icons` or `~/.icons`
- If you're using hyprcursor: Run `hyprctl setcursor Lilith_cursor [CURSOR_SIZE]` or set the following environment variable in `hyprland.conf`

```
env = HYPRCURSOR_THEME,Lilith_cursor 
env = HYPRCURSOR_SIZE,[CURSOR_SIZE]
```
- If you're using XCursor: No installation guide, it's not even done yet

## Notes
- **I don't know if this is only occured on my system or it's also on every hyprland user but after compiling the cursor to hyprcursor and apply it, the cursor would be very big and changing to smaller size crashes my Hyprland**
- **Some cursor types may be missing, incorrect, or revert back to your already set XCursor theme of the cursor type, I may have missed some of the cursors and the source cursor doesn't have that much diversity of cursor variants**
