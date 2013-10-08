; ----------------
; Generated makefile from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=4e4e0ee1ebce
; ----------------
;
; This is a working makefile - try it! Any line starting with a `;` is a comment.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[drupal][version] = 7.23



; Modules
; --------
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][type] = "module"
projects[module_filter][version] = 1.8
projects[module_filter][type] = "module"
projects[devel][version] = 1.3
projects[devel][type] = "module"
projects[features][version] = 2.0-rc4
projects[features][type] = "module"
projects[panels][version] = 3.3
projects[panels][type] = "module"
projects[jquery_update][version] = 2.3
projects[jquery_update][type] = "module"
projects[views][version] = 3.7
projects[views][type] = "module"
projects[feeds][version] = 2.0-alpha8
projects[feeds][type] = "module"



; Themes
; --------



; Libraries
; ---------
; No libraries were included


; Defaults
; --------
defaults[projects][subdir] = "contrib"
