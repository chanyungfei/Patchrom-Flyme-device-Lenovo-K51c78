.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.intent.action.CLEAR_DNS_CACHE"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATA_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.DATA_DEFAULT_SIM"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HDMI_PLUG:Ljava/lang/String; = "android.intent.action.HDMI_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MSIM_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.MSIM_MODE"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_OFF_ALARM_ALERT:Ljava/lang/String; = "android.intent.action.POWER_OFF_ALARM_ALERT"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_RESTRICTIONS_CHALLENGE:Ljava/lang/String; = "android.intent.action.RESTRICTIONS_CHALLENGE"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SD_INSERTED:Ljava/lang/String; = "android.intent.action.SD_INSERTED"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SETTINGS_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_SETTINGS_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_SETTING_INFO_CHANGED"

.field public static final ACTION_SMARTBOOK_PLUG:Ljava/lang/String; = "android.intent.action.SMARTBOOK_PLUG"

.field public static final ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.SMS_DEFAULT_SIM"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYNC_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SYNC_STATE_CHANGED"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_TETHERING_CHANGE:Ljava/lang/String; = "android.intent.action.TETHERING_CHANGED"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"

.field public static final ACTION_UNREAD_CHANGED:Ljava/lang/String; = "com.mediatek.action.UNREAD_CHANGED"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_FONT_CHANGED:Ljava/lang/String; = "android.intent.extra.configuration.font_changed"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_MSIM_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SMARTBOOK_PLUG_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TETHERING_CONNECTED:Ljava/lang/String; = "tethering_isconnected"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_UNREAD_COMPONENT:Ljava/lang/String; = "com.mediatek.intent.extra.UNREAD_COMPONENT"

.field public static final EXTRA_UNREAD_NUMBER:Ljava/lang/String; = "com.mediatek.intent.extra.UNREAD_NUMBER"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FLOATING:I = 0x200

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final FLAG_WITH_BACKGROUND_PRIORITY:I = 0x100

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field public static final MTK_ACTION_REQUEST_TRANSIENT_STATUSBAR:Ljava/lang/String; = "com.mediatek.action.REQUEST_TRANSIENT_STATUSBAR"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7712
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4364
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4365
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4366
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;

    .prologue
    .line 4264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4265
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4266
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4267
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4268
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4269
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4270
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 4271
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4272
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 4273
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 4275
    :cond_0
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 4276
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4278
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 4279
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 4281
    :cond_2
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 4282
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 4284
    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_4

    .line 4285
    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 4287
    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;
    .param p2, "all"    # Z

    .prologue
    .line 4294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4295
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4296
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4297
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4298
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4299
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4300
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 4301
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 4303
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7724
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 7725
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 4323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4324
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4344
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4345
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4346
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4392
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4251
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 4393
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4394
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4395
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4396
    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 7
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "sender"    # Landroid/content/IntentSender;

    .prologue
    const/4 v6, 0x0

    .line 920
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHOOSER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 922
    if-eqz p1, :cond_0

    .line 923
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 926
    :cond_0
    if-eqz p2, :cond_1

    .line 927
    const-string v5, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 931
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v3, v5, 0xc3

    .line 934
    .local v3, "permFlags":I
    if-eqz v3, :cond_3

    .line 935
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 936
    .local v4, "targetClipData":Landroid/content/ClipData;
    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 937
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 939
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 940
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 944
    .local v2, "mimeTypes":[Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ClipData;

    .end local v4    # "targetClipData":Landroid/content/ClipData;
    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 946
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_2
    if-eqz v4, :cond_3

    .line 947
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 948
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 952
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_3
    return-object v0

    .line 942
    .restart local v1    # "item":Landroid/content/ClipData$Item;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_4
    new-array v2, v6, [Ljava/lang/String;

    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4724
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 22
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4730
    const/16 v19, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 4731
    .local v9, "i":I
    if-ltz v9, :cond_17

    .line 4732
    const/4 v4, 0x0

    .line 4733
    .local v4, "action":Ljava/lang/String;
    move v11, v9

    .line 4734
    .local v11, "intentFragmentStart":I
    const/4 v12, 0x0

    .line 4736
    .local v12, "isIntentFragment":Z
    add-int/lit8 v9, v9, 0x1

    .line 4738
    const-string v19, "action("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 4739
    const/4 v12, 0x1

    .line 4740
    add-int/lit8 v9, v9, 0x7

    .line 4741
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4742
    .local v13, "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4743
    add-int/lit8 v9, v13, 0x1

    .line 4746
    .end local v13    # "j":I
    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4748
    .local v10, "intent":Landroid/content/Intent;
    const-string v19, "categories("

    const/16 v20, 0x0

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4749
    const/4 v12, 0x1

    .line 4750
    add-int/lit8 v9, v9, 0xb

    .line 4751
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4752
    .restart local v13    # "j":I
    :goto_0
    if-ge v9, v13, :cond_4

    .line 4753
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 4754
    .local v16, "sep":I
    if-ltz v16, :cond_1

    move/from16 v0, v16

    if-le v0, v13, :cond_2

    :cond_1
    move/from16 v16, v13

    .line 4755
    :cond_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 4756
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4758
    :cond_3
    add-int/lit8 v9, v16, 0x1

    .line 4759
    goto :goto_0

    .line 4760
    .end local v16    # "sep":I
    :cond_4
    add-int/lit8 v9, v13, 0x1

    .line 4763
    .end local v13    # "j":I
    :cond_5
    const-string v19, "type("

    const/16 v20, 0x0

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4764
    const/4 v12, 0x1

    .line 4765
    add-int/lit8 v9, v9, 0x5

    .line 4766
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4767
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4768
    add-int/lit8 v9, v13, 0x1

    .line 4771
    .end local v13    # "j":I
    :cond_6
    const-string v19, "launchFlags("

    const/16 v20, 0x0

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 4772
    const/4 v12, 0x1

    .line 4773
    add-int/lit8 v9, v9, 0xc

    .line 4774
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4775
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    .line 4776
    and-int/lit8 v19, p1, 0x4

    if-nez v19, :cond_7

    .line 4777
    iget v0, v10, Landroid/content/Intent;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0xc4

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    .line 4779
    :cond_7
    add-int/lit8 v9, v13, 0x1

    .line 4782
    .end local v13    # "j":I
    :cond_8
    const-string v19, "component("

    const/16 v20, 0x0

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 4783
    const/4 v12, 0x1

    .line 4784
    add-int/lit8 v9, v9, 0xa

    .line 4785
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4786
    .restart local v13    # "j":I
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 4787
    .restart local v16    # "sep":I
    if-ltz v16, :cond_9

    move/from16 v0, v16

    if-ge v0, v13, :cond_9

    .line 4788
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 4789
    .local v15, "pkg":Ljava/lang/String;
    add-int/lit8 v19, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4790
    .local v7, "cls":Ljava/lang/String;
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 4792
    .end local v7    # "cls":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v13, 0x1

    .line 4795
    .end local v13    # "j":I
    .end local v16    # "sep":I
    :cond_a
    const-string v19, "extras("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 4796
    const/4 v12, 0x1

    .line 4797
    add-int/lit8 v9, v9, 0x7

    .line 4799
    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 4800
    .local v6, "closeParen":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_c

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing trailing \')\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4864
    .local v5, "ch":C
    .restart local v13    # "j":I
    .local v14, "key":Ljava/lang/String;
    .local v17, "type":C
    .local v18, "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 4803
    .end local v5    # "ch":C
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_c
    if-ge v9, v6, :cond_13

    .line 4805
    const/16 v19, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4806
    .restart local v13    # "j":I
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-le v13, v0, :cond_d

    if-lt v9, v6, :cond_e

    .line 4807
    :cond_d
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'=\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4809
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 4810
    .restart local v17    # "type":C
    add-int/lit8 v9, v9, 0x1

    .line 4811
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 4812
    .restart local v14    # "key":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    .line 4815
    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 4816
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_f

    if-lt v13, v6, :cond_10

    :cond_f
    move v13, v6

    .line 4817
    :cond_10
    if-lt v9, v13, :cond_11

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4818
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4819
    .restart local v18    # "value":Ljava/lang/String;
    move v9, v13

    .line 4822
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4826
    :cond_12
    sparse-switch v17, :sswitch_data_0

    .line 4855
    :try_start_0
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA has unknown type"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4857
    :catch_0
    move-exception v8

    .line 4858
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA value can\'t be parsed"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4828
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    :try_start_1
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4861
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4862
    .restart local v5    # "ch":C
    const/16 v19, 0x29

    move/from16 v0, v19

    if-ne v5, v0, :cond_15

    .line 4868
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_13
    if-eqz v12, :cond_16

    .line 4869
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 4874
    :goto_2
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_14

    .line 4876
    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 4883
    .end local v4    # "action":Ljava/lang/String;
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_14
    :goto_3
    return-object v10

    .line 4831
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "closeParen":I
    .restart local v11    # "intentFragmentStart":I
    .restart local v12    # "isIntentFragment":Z
    .restart local v13    # "j":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "type":C
    .restart local v18    # "value":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 4834
    :sswitch_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1

    .line 4837
    :sswitch_3
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_1

    .line 4840
    :sswitch_4
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 4843
    :sswitch_5
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 4846
    :sswitch_6
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4849
    :sswitch_7
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 4852
    :sswitch_8
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4863
    .restart local v5    # "ch":C
    :cond_15
    const/16 v19, 0x21

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    new-instance v19, Ljava/net/URISyntaxException;

    const-string v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    .line 4871
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_16
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_2

    .line 4880
    .end local v4    # "action":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_17
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 4826
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isAccessUriMode(I)Z
    .locals 1
    .param p0, "modeFlags"    # I

    .prologue
    .line 3614
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 5
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    .prologue
    .local p0, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p1, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p2, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 8133
    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v2, v3

    .line 8134
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v1, v3

    .line 8135
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 8136
    .local v0, "htmlText":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v3

    .end local v0    # "htmlText":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v2, v4

    .line 8133
    goto :goto_0

    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    move-object v1, v4

    .line 8134
    goto :goto_1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v4

    .line 8135
    goto :goto_2
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4421
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4422
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4423
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .prologue
    .line 4450
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4451
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4453
    .local v1, "selector":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4454
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4456
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 4473
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 4474
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4476
    return-object v0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 7927
    if-nez p0, :cond_1

    .line 7928
    const/4 p0, 0x0

    .line 7937
    .local v0, "semicolonIndex":I
    :cond_0
    :goto_0
    return-object p0

    .line 7931
    .end local v0    # "semicolonIndex":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 7933
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 7934
    .restart local v0    # "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7935
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7781
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 7783
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 7786
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7788
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7789
    .local v2, "data":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7790
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7792
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7793
    .local v7, "packageName":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7794
    .local v1, "className":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 7795
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7798
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 7800
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 7803
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_8

    .line 7804
    :cond_2
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 7808
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7809
    .local v5, "nodeName":Ljava/lang/String;
    const-string v10, "categories"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 7810
    sget-object v10, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 7812
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7813
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 7815
    if-eqz v0, :cond_3

    .line 7816
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7818
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7790
    .end local v0    # "cat":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 7820
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_5
    const-string v10, "extra"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 7821
    iget-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v10, :cond_6

    .line 7822
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7824
    :cond_6
    const-string v10, "extra"

    iget-object v11, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v10, p2, v11}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 7825
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7828
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7832
    .end local v5    # "nodeName":Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 24
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 4510
    const/4 v13, 0x0

    .line 4512
    .local v13, "i":I
    :try_start_0
    const-string v21, "android-app:"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 4515
    .local v4, "androidApp":Z
    and-int/lit8 v21, p1, 0x3

    if-eqz v21, :cond_1

    .line 4516
    const-string v21, "intent:"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    if-nez v4, :cond_1

    .line 4517
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4519
    .local v15, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4716
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v15

    .line 4520
    .restart local v15    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 4521
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v21, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4718
    .end local v4    # "androidApp":Z
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v9

    .line 4719
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v21, Ljava/net/URISyntaxException;

    const-string v22, "illegal Intent URI format"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v21

    .line 4527
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "androidApp":Z
    :cond_1
    :try_start_3
    const-string v21, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 4529
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_2

    .line 4530
    if-nez v4, :cond_4

    .line 4531
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 4535
    :cond_2
    const-string v21, "#Intent;"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_4

    .line 4536
    if-nez v4, :cond_3

    .line 4537
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    goto :goto_0

    .line 4539
    :cond_3
    const/4 v13, -0x1

    .line 4544
    :cond_4
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4545
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object v7, v15

    .line 4546
    .local v7, "baseIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    .line 4547
    .local v12, "explicitAction":Z
    const/4 v14, 0x0

    .line 4550
    .local v14, "inSelector":Z
    const/16 v18, 0x0

    .line 4552
    .local v18, "scheme":Ljava/lang/String;
    if-ltz v13, :cond_7

    .line 4553
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4554
    .local v8, "data":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x8

    .line 4560
    :goto_1
    if-ltz v13, :cond_1d

    const-string v21, "end"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_1d

    .line 4561
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 4562
    .local v11, "eq":I
    if-gez v11, :cond_5

    add-int/lit8 v11, v13, -0x1

    .line 4563
    :cond_5
    const/16 v21, 0x3b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 4564
    .local v19, "semi":I
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4567
    .local v20, "value":Ljava/lang/String;
    :goto_2
    const-string v21, "action="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4568
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4569
    if-nez v14, :cond_6

    .line 4570
    const/4 v12, 0x1

    .line 4642
    :cond_6
    :goto_3
    add-int/lit8 v13, v19, 0x1

    .line 4643
    goto :goto_1

    .line 4556
    .end local v8    # "data":Ljava/lang/String;
    .end local v11    # "eq":I
    .end local v19    # "semi":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v8, p0

    .restart local v8    # "data":Ljava/lang/String;
    goto :goto_1

    .line 4564
    .restart local v11    # "eq":I
    .restart local v19    # "semi":I
    :cond_8
    const-string v20, ""

    goto :goto_2

    .line 4575
    .restart local v20    # "value":Ljava/lang/String;
    :cond_9
    const-string v21, "category="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 4576
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 4580
    :cond_a
    const-string v21, "type="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4581
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto :goto_3

    .line 4585
    :cond_b
    const-string v21, "launchFlags="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 4586
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Landroid/content/Intent;->mFlags:I

    .line 4587
    and-int/lit8 v21, p1, 0x4

    if-nez v21, :cond_6

    .line 4588
    iget v0, v15, Landroid/content/Intent;->mFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0xc4

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/content/Intent;->mFlags:I

    goto :goto_3

    .line 4593
    :cond_c
    const-string v21, "package="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 4594
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto :goto_3

    .line 4598
    :cond_d
    const-string v21, "component="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 4599
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto :goto_3

    .line 4603
    :cond_e
    const-string v21, "scheme="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 4604
    if-eqz v14, :cond_f

    .line 4605
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_3

    .line 4607
    :cond_f
    move-object/from16 v18, v20

    goto/16 :goto_3

    .line 4612
    :cond_10
    const-string v21, "sourceBounds="

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 4613
    invoke-static/range {v20 .. v20}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 4617
    :cond_11
    add-int/lit8 v21, v13, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const-string v21, "SEL"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 4618
    new-instance v15, Landroid/content/Intent;

    .end local v15    # "intent":Landroid/content/Intent;
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 4619
    .restart local v15    # "intent":Landroid/content/Intent;
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 4624
    :cond_12
    add-int/lit8 v21, v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4626
    .local v16, "key":Ljava/lang/String;
    iget-object v0, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-nez v21, :cond_13

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4627
    :cond_13
    iget-object v6, v15, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 4629
    .local v6, "b":Landroid/os/Bundle;
    const-string v21, "S."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4630
    :cond_14
    const-string v21, "B."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 4631
    :cond_15
    const-string v21, "b."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    .line 4632
    :cond_16
    const-string v21, "c."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_3

    .line 4633
    :cond_17
    const-string v21, "d."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 4634
    :cond_18
    const-string v21, "f."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_3

    .line 4635
    :cond_19
    const-string v21, "i."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 4636
    :cond_1a
    const-string v21, "l."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1b

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 4637
    :cond_1b
    const-string v21, "s."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1c

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_3

    .line 4638
    :cond_1c
    new-instance v21, Ljava/net/URISyntaxException;

    const-string v22, "unknown EXTRA type"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v21

    .line 4645
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v11    # "eq":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "semi":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_1d
    if-eqz v14, :cond_1f

    .line 4647
    iget-object v0, v7, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1e

    .line 4648
    invoke-virtual {v7, v15}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4650
    :cond_1e
    move-object v15, v7

    .line 4653
    :cond_1f
    if-eqz v8, :cond_0

    .line 4654
    const-string v21, "intent:"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 4655
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 4656
    if-eqz v18, :cond_20

    .line 4657
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3a

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4707
    :cond_20
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    if-lez v21, :cond_0

    .line 4709
    :try_start_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4710
    :catch_2
    move-exception v9

    .line 4711
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v21, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v21

    .line 4659
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_21
    const-string v21, "android-app:"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 4660
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    .line 4662
    const/16 v21, 0x2f

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 4663
    .local v10, "end":I
    if-gez v10, :cond_23

    .line 4665
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4666
    if-nez v12, :cond_22

    .line 4667
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4669
    :cond_22
    const-string v8, ""

    goto :goto_4

    .line 4672
    :cond_23
    const/4 v5, 0x0

    .line 4673
    .local v5, "authority":Ljava/lang/String;
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 4675
    add-int/lit8 v21, v10, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 4676
    const/16 v21, 0x2f

    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .local v17, "newEnd":I
    if-ltz v17, :cond_26

    .line 4678
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4679
    move/from16 v10, v17

    .line 4680
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_24

    const/16 v21, 0x2f

    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    if-ltz v17, :cond_24

    .line 4682
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4683
    move/from16 v10, v17

    .line 4690
    .end local v17    # "newEnd":I
    :cond_24
    :goto_5
    if-nez v18, :cond_27

    .line 4692
    if-nez v12, :cond_25

    .line 4693
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4695
    :cond_25
    const-string v8, ""

    goto/16 :goto_4

    .line 4687
    .restart local v17    # "newEnd":I
    :cond_26
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 4696
    .end local v17    # "newEnd":I
    :cond_27
    if-nez v5, :cond_28

    .line 4697
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4699
    :cond_28
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4703
    .end local v5    # "authority":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_29
    const-string v8, ""
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 11
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 7863
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 7864
    .local v5, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 7866
    .local v7, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 7867
    .local v0, "attrCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "attrNdx":I
    :goto_0
    if-ltz v2, :cond_6

    .line 7868
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 7869
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 7870
    .local v3, "attrValue":Ljava/lang/String;
    const-string v8, "action"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7871
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7867
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7872
    :cond_0
    const-string v8, "data"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7873
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 7874
    :cond_1
    const-string v8, "type"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7875
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 7876
    :cond_2
    const-string v8, "component"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7877
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 7878
    :cond_3
    const-string v8, "flags"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7879
    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 7881
    :cond_4
    const-string v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreFromXml: unknown attribute="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7897
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .local v4, "event":I
    .local v6, "name":Ljava/lang/String;
    :cond_5
    const-string v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreFromXml: unknown name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7887
    .end local v4    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .restart local v4    # "event":I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_8

    const/4 v8, 0x3

    if-ne v4, v8, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v7, :cond_8

    .line 7889
    :cond_7
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    .line 7890
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 7891
    .restart local v6    # "name":Ljava/lang/String;
    const-string v8, "categories"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7892
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 7893
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_6

    .line 7894
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7893
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 7903
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    return-object v5
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 7589
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "frag":Ljava/lang/StringBuilder;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 7591
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7592
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7593
    const-string v0, "SEL;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7597
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v6

    move-object v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7601
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7602
    const-string v0, "#Intent;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7603
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7604
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7606
    :cond_1
    return-void

    :cond_2
    move-object v2, v6

    .line 7597
    goto :goto_0
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    const/16 v8, 0x3b

    .line 7610
    if-eqz p2, :cond_0

    .line 7611
    const-string v5, "scheme="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7613
    :cond_0
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7614
    const-string v5, "action="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7616
    :cond_1
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    .line 7617
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 7618
    const-string v5, "category="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7621
    .end local v1    # "i":I
    :cond_2
    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 7622
    const-string v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7624
    :cond_3
    iget v5, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v5, :cond_4

    .line 7625
    const-string v5, "launchFlags=0x"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7627
    :cond_4
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 7628
    const-string v5, "package="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7630
    :cond_5
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_6

    .line 7631
    const-string v5, "component="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7634
    :cond_6
    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_7

    .line 7635
    const-string v5, "sourceBounds="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7639
    :cond_7
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_12

    .line 7640
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7641
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 7642
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9

    const/16 v0, 0x53

    .line 7654
    .local v0, "entryType":C
    :goto_2
    if-eqz v0, :cond_8

    .line 7655
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7656
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7657
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7658
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7659
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7660
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7642
    .end local v0    # "entryType":C
    :cond_9
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    const/16 v0, 0x42

    goto :goto_2

    :cond_a
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_b

    const/16 v0, 0x62

    goto :goto_2

    :cond_b
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_c

    const/16 v0, 0x63

    goto :goto_2

    :cond_c
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_d

    const/16 v0, 0x64

    goto :goto_2

    :cond_d
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_e

    const/16 v0, 0x66

    goto :goto_2

    :cond_e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_f

    const/16 v0, 0x69

    goto :goto_2

    :cond_f
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_10

    const/16 v0, 0x6c

    goto :goto_2

    :cond_10
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_11

    const/16 v0, 0x73

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_2

    .line 7664
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_12
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 5986
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 5987
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 5989
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5990
    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 6902
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 6903
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4310
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 7667
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 7
    .param p1, "other"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, -0x2

    .line 7145
    const/4 v0, 0x0

    .line 7146
    .local v0, "changes":I
    const/4 v2, 0x0

    .line 7147
    .local v2, "mayHaveCopiedUris":Z
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_0

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    .line 7149
    :cond_0
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7150
    or-int/lit8 v0, v0, 0x1

    .line 7152
    :cond_1
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    .line 7155
    :cond_4
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7156
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7157
    or-int/lit8 v0, v0, 0x2

    .line 7158
    const/4 v2, 0x1

    .line 7160
    :cond_5
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_6

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_8

    .line 7162
    :cond_6
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_7

    .line 7163
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7165
    :cond_7
    or-int/lit8 v0, v0, 0x4

    .line 7167
    :cond_8
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_a

    .line 7170
    :cond_9
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v4, :cond_a

    .line 7171
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7172
    or-int/lit8 v0, v0, 0x10

    .line 7177
    :cond_a
    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v4, :cond_b

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_b

    .line 7178
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 7179
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 7180
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7181
    or-int/lit8 v0, v0, 0x40

    .line 7184
    :cond_b
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_c

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_d

    .line 7186
    :cond_c
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 7187
    or-int/lit16 v0, v0, 0x80

    .line 7188
    const/4 v2, 0x1

    .line 7193
    :cond_d
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_e

    .line 7194
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7195
    or-int/lit8 v0, v0, 0x8

    .line 7197
    :cond_e
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    iget v5, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/content/Intent;->mFlags:I

    .line 7198
    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_f

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_10

    .line 7200
    :cond_f
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7201
    or-int/lit8 v0, v0, 0x20

    .line 7203
    :cond_10
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_13

    .line 7204
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    .line 7205
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7206
    const/4 v2, 0x1

    .line 7223
    :cond_11
    :goto_0
    if-eqz v2, :cond_12

    iget v4, p0, Landroid/content/Intent;->mContentUserHint:I

    if-ne v4, v6, :cond_12

    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq v4, v6, :cond_12

    .line 7225
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v4, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7227
    :cond_12
    return v0

    .line 7208
    :cond_13
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    .line 7210
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7211
    .local v3, "newb":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7212
    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7213
    const/4 v2, 0x1

    goto :goto_0

    .line 7214
    .end local v3    # "newb":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 7220
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "Intent"

    const-string v5, "Failure filling in extras"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "other"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 7283
    if-nez p1, :cond_1

    .line 7312
    :cond_0
    :goto_0
    return v1

    .line 7286
    :cond_1
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7287
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7288
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7289
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7293
    const/4 v0, 0x0

    .line 7294
    .local v0, "isPackageEqual":Z
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7297
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7298
    const/4 v0, 0x1

    .line 7300
    :cond_3
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7301
    const/4 v0, 0x1

    .line 7305
    :cond_4
    if-eqz v0, :cond_0

    .line 7309
    .end local v0    # "isPackageEqual":Z
    :cond_5
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7310
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7312
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public filterHashCode()I
    .locals 2

    .prologue
    .line 7324
    const/4 v0, 0x0

    .line 7325
    .local v0, "code":I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7326
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7328
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 7329
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7331
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7332
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7334
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7335
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7337
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 7338
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7340
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_5

    .line 7341
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7343
    :cond_5
    return v0
.end method

.method public fixUris(I)V
    .locals 9
    .param p1, "contentUserHint"    # I

    .prologue
    .line 7982
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 7983
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 7984
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7986
    :cond_0
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v7, :cond_1

    .line 7987
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v7, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 7989
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7990
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7991
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 7992
    .local v5, "stream":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 7993
    const-string v7, "android.intent.extra.STREAM"

    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8012
    .end local v5    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 7995
    :cond_3
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7996
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 7997
    .local v6, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_2

    .line 7998
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7999
    .local v3, "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 8000
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v7, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7999
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8002
    :cond_4
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 8004
    .end local v2    # "i":I
    .end local v3    # "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8007
    :cond_6
    const-string v7, "output"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 8008
    .local v4, "output":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 8009
    const-string v7, "output"

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4897
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5391
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5131
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5531
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5405
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 5148
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    .restart local p2    # "defaultValue":B
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5037
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5433
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_0
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 5182
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    .restart local p2    # "defaultValue":C
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p2

    goto :goto_0
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5517
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5377
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5279
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 5057
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 5637
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    .prologue
    .line 5062
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4912
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4920
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5489
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 5250
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":D
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5569
    move-object v0, p2

    .line 5570
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5571
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5572
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 5573
    move-object v0, v1

    .line 5577
    .end local v1    # "result2":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 5587
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 5602
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5475
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    goto :goto_0
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 5233
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5549
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5447
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 5199
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5349
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5461
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 5216
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5622
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5307
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5321
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5293
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4936
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 5047
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5335
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5419
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    goto :goto_0
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 5165
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    .restart local p2    # "defaultValue":S
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p2

    goto :goto_0
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 5646
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5503
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5363
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5265
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4950
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 5024
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5084
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 1

    .prologue
    .line 5092
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocument()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 8141
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExcludingStopped()Z
    .locals 2

    .prologue
    .line 5607
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateExtraStreamToClipData()Z
    .locals 22

    .prologue
    .line 8024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->isParcelled()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v11, 0x0

    .line 8128
    :cond_0
    :goto_0
    return v11

    .line 8027
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v18

    if-eqz v18, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    .line 8029
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 8030
    .local v3, "action":Ljava/lang/String;
    const-string v18, "android.intent.action.CHOOSER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 8036
    const/4 v11, 0x0

    .line 8038
    .local v11, "migrated":Z
    :try_start_0
    const-string v18, "android.intent.extra.INTENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 8039
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 8040
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v18

    or-int v11, v11, v18

    .line 8045
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    :try_start_1
    const-string v18, "android.intent.extra.INITIAL_INTENTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    .line 8046
    .local v10, "intents":[Landroid/os/Parcelable;
    if-eqz v10, :cond_0

    .line 8047
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 8048
    aget-object v9, v10, v8

    check-cast v9, Landroid/content/Intent;

    .line 8049
    .restart local v9    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 8050
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    or-int v11, v11, v18

    .line 8047
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 8058
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intents":[Landroid/os/Parcelable;
    .end local v11    # "migrated":Z
    :cond_5
    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 8060
    :try_start_2
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 8061
    .local v14, "stream":Landroid/net/Uri;
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 8062
    .local v16, "text":Ljava/lang/CharSequence;
    const-string v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8063
    .local v6, "htmlText":Ljava/lang/String;
    if-nez v14, :cond_6

    if-nez v16, :cond_6

    if-eqz v6, :cond_10

    .line 8064
    :cond_6
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    new-instance v20, Landroid/content/ClipData$Item;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v6, v2, v14}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 8067
    .local v4, "clipData":Landroid/content/ClipData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8068
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8069
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8074
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v6    # "htmlText":Ljava/lang/String;
    .end local v14    # "stream":Landroid/net/Uri;
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_7
    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 8076
    :try_start_3
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 8077
    .local v15, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 8078
    .local v17, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 8079
    .local v7, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, -0x1

    .line 8080
    .local v12, "num":I
    if-eqz v15, :cond_8

    .line 8081
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8083
    :cond_8
    if-eqz v17, :cond_a

    .line 8084
    if-ltz v12, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_9

    .line 8086
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8088
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8090
    :cond_a
    if-eqz v7, :cond_c

    .line 8091
    if-ltz v12, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_b

    .line 8093
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8095
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 8097
    :cond_c
    if-lez v12, :cond_10

    .line 8098
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v15, v0, v7, v1}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 8102
    .restart local v4    # "clipData":Landroid/content/ClipData;
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v12, :cond_d

    .line 8103
    move-object/from16 v0, v17

    invoke-static {v15, v0, v7, v8}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 8102
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 8106
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8107
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8108
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8112
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v7    # "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v12    # "num":I
    .end local v15    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_e
    const-string v18, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string v18, "android.media.action.IMAGE_CAPTURE_SECURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    const-string v18, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 8117
    :cond_f
    :try_start_4
    const-string v18, "output"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8121
    .local v13, "output":Landroid/net/Uri;
    if-eqz v13, :cond_10

    .line 8122
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8123
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8124
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 8118
    .end local v13    # "output":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 8119
    .local v5, "e":Ljava/lang/ClassCastException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8110
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v18

    .line 8128
    :cond_10
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 8071
    :catch_2
    move-exception v18

    goto :goto_4

    .line 8054
    .restart local v11    # "migrated":Z
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .line 8042
    :catch_4
    move-exception v18

    goto/16 :goto_1
.end method

.method public prepareToEnterProcess()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 7970
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eq v0, v2, :cond_0

    .line 7971
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 7972
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 7973
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7976
    :cond_0
    return-void
.end method

.method public prepareToLeaveProcess()V
    .locals 2

    .prologue
    .line 7946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 7948
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7949
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 7951
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 7952
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    .line 7955
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7958
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.ATTACH_DATA"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7961
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string v1, "Intent.getData()"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 7964
    :cond_3
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6454
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6457
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6458
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 6132
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6135
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6136
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 6155
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6158
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 6159
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 6270
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6273
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 6274
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 6247
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6250
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6251
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 6201
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6204
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6205
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 6224
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6227
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6228
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 6730
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6733
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6734
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6757
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6760
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6761
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 6339
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6342
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6343
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 6477
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6480
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6481
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 6316
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6319
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6320
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6293
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6296
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6297
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 6178
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6181
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 6182
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 6109
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6112
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6113
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 6523
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6524
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6526
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6527
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 6569
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6572
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 6573
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 6661
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6664
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 6665
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 6638
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6641
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 6642
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 6592
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6595
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 6596
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 6615
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6618
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6619
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .prologue
    .line 6362
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6365
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6366
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 6707
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6710
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6711
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 6684
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6687
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6688
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 6546
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6549
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 6550
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 6500
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6503
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 6504
    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 6772
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6773
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 6774
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6779
    :cond_0
    :goto_0
    return-object p0

    .line 6776
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6793
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6796
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6797
    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6408
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6411
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6412
    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6385
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6388
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6389
    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 6431
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 6432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6434
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6435
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7728
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7729
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7730
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    .line 7732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7733
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 7736
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7739
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7740
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 7741
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7743
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7744
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7747
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7750
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7751
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 7754
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 7755
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 7757
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7758
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7759
    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 6001
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 6002
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6003
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6004
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 6007
    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6830
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6831
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6832
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6833
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6836
    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 6808
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6809
    return-object p0

    .line 6808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6820
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 6821
    return-object p0

    .line 6820
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 5697
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 5698
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 5709
    :goto_0
    return-object v1

    .line 5701
    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 5703
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 5704
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5709
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .prologue
    .line 5729
    const/4 v0, 0x0

    .line 5730
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 5732
    :try_start_0
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5744
    :cond_0
    :goto_0
    return-object v0

    .line 5737
    :cond_1
    const/high16 v2, 0x10000

    or-int/2addr v2, p2

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 5739
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 5740
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 5733
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .prologue
    .line 5755
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 5756
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 5777
    :cond_0
    :goto_0
    return-object v0

    .line 5759
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 5760
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_2

    .line 5761
    const/4 v0, 0x0

    goto :goto_0

    .line 5763
    :cond_2
    const/4 v0, 0x0

    .line 5764
    .local v0, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 5765
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5766
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 5764
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5769
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5771
    .local v1, "foundComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_4

    .line 5772
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5775
    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 4983
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4984
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 4991
    :goto_0
    return-object v0

    .line 4986
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4987
    const-string v0, "content"

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4988
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4991
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4965
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 5007
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 5008
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5010
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7837
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7838
    const-string v1, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7840
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 7841
    const-string v1, "data"

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7843
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7844
    const-string v1, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7846
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 7847
    const-string v1, "component"

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7849
    :cond_3
    const-string v1, "flags"

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7851
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_5

    .line 7852
    const-string v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7853
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "categoryNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 7854
    const-string v2, "category"

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7853
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7856
    :cond_4
    const-string v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7858
    .end local v0    # "categoryNdx":I
    :cond_5
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 5792
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 5793
    return-object p0

    .line 5792
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowFds(Z)V
    .locals 1
    .param p1, "allowFds"    # Z

    .prologue
    .line 5097
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5098
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 5100
    :cond_0
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 7014
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7015
    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 6975
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 6976
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 6995
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 6996
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 6080
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 6081
    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 6955
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 6956
    return-object p0
.end method

.method public setContentUserHint(I)V
    .locals 0
    .param p1, "contentUserHint"    # I

    .prologue
    .line 6090
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 6091
    return-void
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 5818
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5819
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5820
    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 5846
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 5935
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5936
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5937
    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 5966
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 5073
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5074
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 5076
    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 6886
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 6887
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6923
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 6924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set package name when selector is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6927
    :cond_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 6928
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 2
    .param p1, "selector"    # Landroid/content/Intent;

    .prologue
    .line 6041
    if-ne p1, p0, :cond_0

    .line 6042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent being set as a selector of itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6045
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set selector when package name is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6049
    :cond_1
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 6050
    return-void
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 7024
    if-eqz p1, :cond_0

    .line 7025
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7029
    :goto_0
    return-void

    .line 7027
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5875
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 5876
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 5877
    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5906
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7359
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7361
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 7362
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7363
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureStringWithClip()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 7370
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7372
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7373
    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7374
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "secure"    # Z
    .param p2, "comp"    # Z
    .param p3, "extras"    # Z
    .param p4, "clip"    # Z

    .prologue
    .line 7381
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "b":Ljava/lang/StringBuilder;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7382
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 8
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "secure"    # Z
    .param p3, "comp"    # Z
    .param p4, "extras"    # Z
    .param p5, "clip"    # Z

    .prologue
    const/16 v2, 0x20

    .line 7389
    const/4 v6, 0x1

    .line 7390
    .local v6, "first":Z
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7391
    const-string v0, "act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7392
    const/4 v6, 0x0

    .line 7394
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    .line 7395
    if-nez v6, :cond_1

    .line 7396
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7398
    :cond_1
    const/4 v6, 0x0

    .line 7399
    const-string v0, "cat=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7400
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 7401
    if-lez v7, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7402
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7400
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7404
    :cond_3
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7406
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 7407
    if-nez v6, :cond_5

    .line 7408
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7410
    :cond_5
    const/4 v6, 0x0

    .line 7411
    const-string v0, "dat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7412
    if-eqz p2, :cond_18

    .line 7413
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7418
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 7419
    if-nez v6, :cond_7

    .line 7420
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7422
    :cond_7
    const/4 v6, 0x0

    .line 7423
    const-string v0, "typ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7425
    :cond_8
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v0, :cond_a

    .line 7426
    if-nez v6, :cond_9

    .line 7427
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7429
    :cond_9
    const/4 v6, 0x0

    .line 7430
    const-string v0, "flg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7432
    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 7433
    if-nez v6, :cond_b

    .line 7434
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7436
    :cond_b
    const/4 v6, 0x0

    .line 7437
    const-string v0, "pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7439
    :cond_c
    if-eqz p3, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_e

    .line 7440
    if-nez v6, :cond_d

    .line 7441
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7443
    :cond_d
    const/4 v6, 0x0

    .line 7444
    const-string v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7446
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    .line 7447
    if-nez v6, :cond_f

    .line 7448
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7450
    :cond_f
    const/4 v6, 0x0

    .line 7451
    const-string v0, "bnds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7453
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    .line 7454
    if-nez v6, :cond_11

    .line 7455
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7457
    :cond_11
    const/4 v6, 0x0

    .line 7458
    if-eqz p5, :cond_19

    .line 7459
    const-string v0, "clip={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7460
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    .line 7461
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7466
    :cond_12
    :goto_2
    if-eqz p4, :cond_14

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 7467
    if-nez v6, :cond_13

    .line 7468
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7470
    :cond_13
    const/4 v6, 0x0

    .line 7471
    const-string v0, "(has extras)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7473
    :cond_14
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    .line 7474
    if-nez v6, :cond_15

    .line 7475
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7477
    :cond_15
    const/4 v6, 0x0

    .line 7478
    const-string v0, "u="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7480
    :cond_16
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 7481
    const-string v0, " sel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7482
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7483
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7485
    :cond_17
    return-void

    .line 7415
    :cond_18
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 7463
    :cond_19
    const-string v0, "(has clip)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 7348
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7350
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7351
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 7352
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7354
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 15
    .param p1, "flags"    # I

    .prologue
    .line 7513
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7514
    .local v1, "uri":Ljava/lang/StringBuilder;
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 7515
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7520
    :cond_0
    const-string v0, "android-app://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7521
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7522
    const/4 v2, 0x0

    .line 7523
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 7524
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 7525
    if-eqz v2, :cond_3

    .line 7526
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7528
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    .line 7529
    .local v7, "authority":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 7530
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7531
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7532
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v12

    .line 7533
    .local v12, "path":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 7534
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7536
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    .line 7537
    .local v13, "queryParams":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 7538
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7539
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7541
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v10

    .line 7542
    .local v10, "fragment":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 7543
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7544
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "fragment":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "queryParams":Ljava/lang/String;
    :cond_3
    move-object v14, v2

    .line 7549
    .end local v2    # "scheme":Ljava/lang/String;
    .local v14, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v14, :cond_4

    const-string v3, "android.intent.action.MAIN"

    :goto_0
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v14

    .line 7584
    .end local v14    # "scheme":Ljava/lang/String;
    .restart local v2    # "scheme":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 7549
    .end local v2    # "scheme":Ljava/lang/String;
    .restart local v14    # "scheme":Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.VIEW"

    goto :goto_0

    .line 7553
    .end local v14    # "scheme":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 7554
    .restart local v2    # "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_c

    .line 7555
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7556
    .local v9, "data":Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 7557
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 7558
    .local v6, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v6, :cond_a

    .line 7559
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 7560
    .local v8, "c":C
    const/16 v0, 0x61

    if-lt v8, v0, :cond_6

    const/16 v0, 0x7a

    if-le v8, v0, :cond_8

    :cond_6
    const/16 v0, 0x41

    if-lt v8, v0, :cond_7

    const/16 v0, 0x5a

    if-le v8, v0, :cond_8

    :cond_7
    const/16 v0, 0x2e

    if-eq v8, v0, :cond_8

    const/16 v0, 0x2d

    if-ne v8, v0, :cond_9

    .line 7558
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 7564
    :cond_9
    const/16 v0, 0x3a

    if-ne v8, v0, :cond_a

    if-lez v11, :cond_a

    .line 7566
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7567
    const-string v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7568
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 7576
    .end local v6    # "N":I
    .end local v8    # "c":C
    .end local v11    # "i":I
    :cond_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7582
    .end local v9    # "data":Ljava/lang/String;
    :cond_b
    :goto_3
    const-string v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7578
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 7579
    const-string v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7671
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7672
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 7673
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7674
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7675
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7676
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 7678
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 7679
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7680
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7685
    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 7686
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 7687
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 7689
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7688
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7682
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 7692
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7695
    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 7696
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7697
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7702
    :goto_2
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_4

    .line 7703
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7704
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7708
    :goto_3
    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7709
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7710
    return-void

    .line 7699
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 7706
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
