(*
organize - hierarchy

This Folder Action handler is triggered whenever items are added to the attached folder.
The script organizes the added files into a folder hierarchy that follows the following structure:
YYYY/M/D
Where YYYY is four-digit year, M is month and D is the day.
Copyright © 2010 Omar Abdel-Wahab <owahab@gmail.com>.
You may not incorporate this code into your program(s) without
a written permission from the author but you're free to use it AS IS
with absolutely no warranty from the author.
*)

(* A list of extension to exclude from notification *)
property silent_extensions_list : {"download"}

on adding folder items to this_folder after receiving added_items
	try
		set the current_year to (year of (current date) as integer)
		set the current_month to (month of (current date) as integer)
		set the current_day to (day of (current date) as integer)
		
		tell application "Finder"
			-- Create this year's folder if it doesn't exist
			if not (exists folder (current_year as string) of this_folder) then
				make new folder at this_folder with properties {name:current_year}
			end if
			set the year_folder to folder (current_year as string) of this_folder
			-- Create this month's folder if it doesn't exist
			if not (exists folder (current_month as string) of year_folder) then
				make new folder at year_folder with properties {name:current_month}
			end if
			set the month_folder to folder (current_month as string) of year_folder
			-- Create today's folder if it doesn't exist
			if not (exists folder (current_day as string) of month_folder) then
				make new folder at month_folder with properties {name:current_day}
			end if
			set the day_folder to folder (current_day as string) of month_folder
			-- Prepare to move downloaded files
			set the target_folder to day_folder
			-- Move downloaded items
			repeat with i from 1 to number of items in added_items
				set this_item to item i of added_items
				set the item_info to the info for this_item
				if (the name extension of the item_info is not in the silent_extensions_list) then
					set the flag to true
				end if
				-- Check if file size is stable
				set prev_size to 0
				set current_size to size of (get info for this_item)
				repeat until prev_size = current_size
					delay 5 -- delay for 5 seconds
					set prev_size to current_size
					set current_size to size of (get info for this_item)
				end repeat
				move this_item to target_folder with replacing
				set the message to "Moved file '" & (the name of the item_info as string) & "' to folder '" & (the POSIX path of (target_folder as string)) & "'." as string
				my growl_message("Download Organizer", message)
				-- Highlight last item
				select this_item
			end repeat
			if (the flag is true) then
				-- Open today's folder		
				open target_folder
				-- Set focus on Finder
				activate
			end if
		end tell
		my growl_message("Download Organizer", "Done organizing files.")
		(*
	-- Uncomment this to debug	
	on error error_message number error_number
		if the error_number is not -128 then
			tell application "Finder"
				activate
				display dialog error_message & ": " & error_number buttons {"OK"} default button 1 giving up after 20
			end tell
		end if
		*)
	end try
end adding folder items to
