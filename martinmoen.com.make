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
; -------

; Core Modules
; ------------
projects[jquery_update][version] = 2.3
projects[jquery_update][type] = "module"

projects[ctools][version] = 1.3
projects[ctools][type] = "module"

projects[job_scheduler][version] = 2.0-alpha3
projects[job_scheduler][type] = "module"

; Implementation Modules
; ----------------------
projects[features][version] = 2.0-rc4
projects[features][type] = "module"

projects[panels][version] = 3.3
projects[panels][type] = "module"

projects[views][version] = 3.7
projects[views][type] = "module"

projects[feeds][version] = 2.0-alpha8
projects[feeds][type] = "module"

projects[smart_trim][version] = 1.4
projects[smart_trim][type] = "module"

; Admin Module
; ------------
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][type] = "module"

projects[module_filter][version] = 1.8
projects[module_filter][type] = "module"

; Dev Modules
; -----------
projects[devel][version] = 1.3
projects[devel][type] = "module"

; Features
; --------
projects[news][type] = "module"
projects[news][download][type] = "git"
projects[news][download][url] = "/Users/mmoen/Sites/martinmoen.com/news"





; Themes
; --------

; Profile
; --------

projects[martinmoencom][type] = "profile"
projects[martinmoencom][download][type] = "git"
projects[martinmoencom][download][url] = "/Users/mmoen/Sites/martinmoen.com/profile"
;Have to set this individually because profiles are not in subdirs
projects[martinmoencom][subdir] = ""

; Libraries
; ---------
; No libraries were included


; Defaults
; --------
defaults[projects][subdir] = "contrib"
