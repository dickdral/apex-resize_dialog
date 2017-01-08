# Oracle APEX Dynamic Action Plugin -  Resize Dialog
Oracle Apex for resizing modal dialogs. 

In the attributes a margin and whether the dialog should be centered can be specified. 

## Change history
- V1.0    Initial version

## Requirements
The plugin can be used with Apex 5.0 and Apex 5.1 in applications using Universal Theme. 

## Install
- Import plugin file "dynamic_action_plugin_nl_detora_apex_report2columns.sql" from source directory into your application
- Add an After Refresh Dynamic Action to the region to be affected
- In the True Action refer to the report2columns [Plug-In] and adjust the Settings if desired

## Plugin Settings
The plugin settings are customizable and you can change:
- **Center Dialog?** - Whether or not the dialog is centered vertically
- **Margin** - The minimal margin around the dialog
## Demo Application
http://www.speech2form.com/ords/f?p=OPFG:RESIZE_DIALOG

## Preview
![](https://raw.githubusercontent.com/dickdral/apex-resize_dialog/master/resize_dialog_example.gif?raw=true)
---
