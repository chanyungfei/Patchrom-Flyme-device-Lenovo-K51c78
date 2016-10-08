.class public interface abstract Lcom/mediatek/common/mom/IMobileManager;
.super Ljava/lang/Object;
.source "IMobileManager.java"


# static fields
.field public static final ACTION_EXTRA_PACKAGE:Ljava/lang/String; = "mom.action.extra.package"

.field public static final ACTION_EXTRA_PACKAGE_LIST:Ljava/lang/String; = "mom.action.extra.package.list"

.field public static final ACTION_EXTRA_STATUS:Ljava/lang/String; = "mom.action.extra.status"

.field public static final ACTION_EXTRA_UID:Ljava/lang/String; = "mom.action.extra.uid"

.field public static final ACTION_EXTRA_USER:Ljava/lang/String; = "mom.action.extra.user"

.field public static final ACTION_MGR_CHANGE:Ljava/lang/String; = "mom.action.MGR_CHANGE"

.field public static final ACTION_PACKAGE_CHANGE:Ljava/lang/String; = "mom.action.PACKAGE_CHANGE"

.field public static final ACTION_USER_CHANGE:Ljava/lang/String; = "mom.action.USER_CHANGE"

.field public static final CONTROLLER_CALL:I = 0x6

.field public static final CONTROLLER_FIREWALL:I = 0x4

.field public static final CONTROLLER_INTERCEPTION:I = 0x8

.field public static final CONTROLLER_LICENSE:I = 0x7

.field public static final CONTROLLER_MESSAGE_INTERCEPT:I = 0x5

.field public static final CONTROLLER_NOTIFICATION:I = 0x3

.field public static final CONTROLLER_PACKAGE:I = 0x1

.field public static final CONTROLLER_PERMISSION:I = 0x0

.field public static final CONTROLLER_RECEIVER:I = 0x2

.field public static final MGR_ATTACHED:I = 0x0

.field public static final MGR_DETACHED:I = 0x1

.field public static final OPTION_NOTIFICATION_CONTENT:Ljava/lang/String; = "notificationContent"

.field public static final OPTION_NOTIFICATION_ID:Ljava/lang/String; = "notificationID"

.field public static final OPTION_NOTIFICATION_PKG:Ljava/lang/String; = "notificationPkg"

.field public static final OPTION_NOTIFICATION_TITLE:Ljava/lang/String; = "notificationTitle"

.field public static final PACKAGE_ADDED:I = 0x0

.field public static final PACKAGE_EXT_AVAILABLE:I = 0x3

.field public static final PACKAGE_EXT_UNAVAILABLE:I = 0x4

.field public static final PACKAGE_REMOVED:I = 0x1

.field public static final PACKAGE_UPDATED:I = 0x2

.field public static final PARAMETER_CALLTYPE:Ljava/lang/String; = "callType"

.field public static final PARAMETER_PHONENUMBER:Ljava/lang/String; = "phoneNumber"

.field public static final PARAMETER_SLOTID:Ljava/lang/String; = "slotId"

.field public static final PERMISSION_FLAG_ALL:I = 0xf

.field public static final PERMISSION_FLAG_NONE:I = 0x0

.field public static final PERMISSION_FLAG_NORMAL:I = 0x1

.field public static final PERMISSION_FLAG_SUB:I = 0x2

.field public static final PERMISSION_FLAG_SYSTEM:I = 0x8

.field public static final PERMISSION_FLAG_USERCONFIRM:I = 0x4

.field public static final PERMISSION_STATUS_CHECK:I = 0x2

.field public static final PERMISSION_STATUS_DENIED:I = 0x1

.field public static final PERMISSION_STATUS_GRANTED:I = 0x0

.field public static final PERMISSION_STATUS_NONE:I = 0x0

.field public static final SMS_MESSAGE_DATA:Ljava/lang/String; = "data"

.field public static final SMS_MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final SMS_MESSAGE_INTENT:Ljava/lang/String; = "intent"

.field public static final SMS_MESSAGE_MULTIPARTDATA:Ljava/lang/String; = "multipartdata"

.field public static final SMS_MESSAGE_MULTIPARTTEXT:Ljava/lang/String; = "multiparttext"

.field public static final SMS_MESSAGE_RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final SMS_MESSAGE_SIMID:Ljava/lang/String; = "simId"

.field public static final SMS_MESSAGE_SUBID:Ljava/lang/String; = "subId"

.field public static final SMS_MESSAGE_TEXT:Ljava/lang/String; = "text"

.field public static final TRIGGER_LISTENER_TIMEOUT:I = 0x88b8

.field public static final USER_ADDED:I = 0x0

.field public static final USER_REMOVED:I = 0x1

.field public static final USER_SWITCHED:I = 0x2

.field public static final VERSION_NAME:Ljava/lang/String; = "MoMS.5.0.0"


# virtual methods
.method public abstract attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
.end method

.method public abstract cancelNotification(Ljava/lang/String;)V
.end method

.method public abstract clearAllSettings()V
.end method

.method public abstract clearPackageSettings(Ljava/lang/String;)V
.end method

.method public abstract deletePackage(Ljava/lang/String;)V
.end method

.method public abstract detach()V
.end method

.method public abstract enableInterceptionController(Z)V
.end method

.method public abstract enablePermissionController(Z)V
.end method

.method public abstract forceStopPackage(Ljava/lang/String;)V
.end method

.method public abstract getBootReceiverEnabledSetting(Ljava/lang/String;)Z
.end method

.method public abstract getBootReceiverList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationEnabledSetting(Ljava/lang/String;)Z
.end method

.method public abstract getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
.end method

.method public abstract registerCallInterceptionListener(Lcom/mediatek/common/mom/ICallInterceptionListener;)V
.end method

.method public abstract registerMessageInterceptListener(Lcom/mediatek/common/mom/IMessageInterceptListener;)V
.end method

.method public abstract registerNotificationListener(Lcom/mediatek/common/mom/INotificationListener;)V
.end method

.method public abstract registerPermissionListener(Lcom/mediatek/common/mom/IPermissionListener;)V
.end method

.method public abstract setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
.end method

.method public abstract setBootReceiverEnabledSettings(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFirewallPolicy(IIZ)V
.end method

.method public abstract setNotificationCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNotificationEnabledSetting(Ljava/lang/String;Z)V
.end method

.method public abstract setPermissionCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
.end method

.method public abstract setPermissionRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation
.end method
