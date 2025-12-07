#!/bin/bash

# Configure cursor theme
THEME_NAME="Lilith_XCursor"
THEME_COMMENT="Lilith cursor for XCursor (Ported from Windows) [V0.3]"

cursors=("all-scroll" "col-resize" "crosshair" "default" "help" "ne-resize" "not-allowed" "nw-resize" "pointer" "progress" "row-resize" "text" "wait")

all_scroll_aliases=("all-scroll")
col_resize_aliases=("ew-resize" "e-resize" "w-resize" "size_hor")
crosshair_aliases=("cross" "tcross" "pencil")
default_aliases=("left-ptr" "dnd-move" "dnd-copy" "dnd-link" "fleur" top_tee" bottom_tee" left_tee" right_tee")
help_aliases=("help" "question_arrow")
ne_resize_aliases=("nesw-resize" "ll_angle" "ur_angle" "size_bdiag")
not_allowed_aliases=("no-drop" "dnd-no-drop" "forbidden" "X_cursor" "circle")
pointer_aliases=("hand" "hand2")
progress_aliases=("half-busy" "left_ptr_watch")
nw_resize_aliases=("nwse-resize" "lr_angle" "ul_angle" "size_fdiag")
row_resize_aliases=("ns-resize" "n-resize" "s-resize" "size_ver")
text_aliases=("ibeam" "xterm")
wait_aliases=("watch" "busy")

# Create cursor theme directory
echo 'Creating cursor theme directory'
mkdir $THEME_NAME
mkdir $THEME_NAME/cursors
touch $THEME_NAME/index.theme

# Create index.theme
echo 'Creating index.theme'
cat <<EOF >> $THEME_NAME/index.theme
[Icon Theme]
Name = $THEME_NAME
Comment = $THEME_COMMENT
Example = default
Inherits = Adwaita
EOF

# Create cursor files
echo Creating cursor files
cd cursors/
for cursor in "${cursors[@]}"; do
    cd $cursor
    xcursorgen $cursor.cursor $cursor
    cd ..
done
cd ..
for cursor in "${cursors[@]}"; do
    mv cursors/$cursor/$cursor $THEME_NAME/cursors/
done

# Create symlinks for cursor aliases
echo 'Creating symlinks for cursor aliases'
cd $THEME_NAME/cursors/
for cursor in "${cursors[@]}"; do
    cursor_var_name="${cursor//-/_}"
    alias_array_name="${cursor_var_name}_aliases[@]"
    for symlinking in "${!alias_array_name}"; do
        if [ "$symlinking" != "$cursor" ]; then
            ln -sf "$cursor" "$symlinking"
        fi
    done
done

# Compress cursor files to a tar file
echo 'Compressing cursor files'
cd ..
cd ..
tar -cvf $THEME_NAME.tar $THEME_NAME

# Remove leftover directory
echo 'Removing leftover directory'
rm -rf $THEME_NAME

echo 'Done'
