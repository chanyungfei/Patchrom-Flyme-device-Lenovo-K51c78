.class public interface abstract Lcom/mediatek/perfservice/IPerfServiceManager;
.super Ljava/lang/Object;
.source "IPerfServiceManager.java"


# static fields
.field public static final DISPLAY_TYPE_GAME:I = 0x0

.field public static final DISPLAY_TYPE_OTHERS:I = 0x1

.field public static final NOTIFY_USER_TYPE_DISPLAY_TYPE:I = 0x2

.field public static final NOTIFY_USER_TYPE_FRAME_UPDATE:I = 0x1

.field public static final NOTIFY_USER_TYPE_PID:I = 0x0

.field public static final SCN_APP_LAUNCH:I = 0x8

.field public static final SCN_APP_ROTATE:I = 0x2

.field public static final SCN_APP_SWITCH:I = 0x1

.field public static final SCN_APP_TOUCH:I = 0x5

.field public static final SCN_DONT_USE1:I = 0x6

.field public static final SCN_NONE:I = 0x0

.field public static final SCN_SW_CODEC:I = 0x3

.field public static final SCN_SW_CODEC_BOOST:I = 0x4

.field public static final SCN_SW_FRAME_UPDATE:I = 0x7

.field public static final STATE_DEAD:I = 0x3

.field public static final STATE_DESTROYED:I = 0x2

.field public static final STATE_PAUSED:I = 0x0

.field public static final STATE_RESUMED:I = 0x1

.field public static final STATE_STOPPED:I = 0x4


# virtual methods
.method public abstract boostDisable(I)V
.end method

.method public abstract boostEnable(I)V
.end method

.method public abstract boostEnableTimeout(II)V
.end method

.method public abstract boostEnableTimeoutMs(II)V
.end method

.method public abstract dumpAll()V
.end method

.method public abstract notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract notifyDisplayType(I)V
.end method

.method public abstract notifyFrameUpdate(I)V
.end method

.method public abstract notifyUserStatus(II)V
.end method

.method public abstract setFavorPid(I)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userDisable(I)V
.end method

.method public abstract userDisableAll()V
.end method

.method public abstract userEnable(I)V
.end method

.method public abstract userEnableTimeout(II)V
.end method

.method public abstract userEnableTimeoutMs(II)V
.end method

.method public abstract userGetCapability(I)I
.end method

.method public abstract userReg(IIII)I
.end method

.method public abstract userRegBigLittle(IIIIII)I
.end method

.method public abstract userRegScn(II)I
.end method

.method public abstract userRegScnConfig(IIIIII)V
.end method

.method public abstract userResetAll()V
.end method

.method public abstract userRestoreAll()V
.end method

.method public abstract userUnreg(I)V
.end method

.method public abstract userUnregScn(I)V
.end method
