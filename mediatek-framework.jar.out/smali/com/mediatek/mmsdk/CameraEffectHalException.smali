.class public Lcom/mediatek/mmsdk/CameraEffectHalException;
.super Landroid/util/AndroidException;
.source "CameraEffectHalException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalStatusError;,
        Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;
    }
.end annotation


# static fields
.field public static final EFFECT_HAL_CLIENT_ERROR:I = 0x69

.field public static final EFFECT_HAL_ERROR:I = 0x68

.field public static final EFFECT_HAL_FACTORY_ERROR:I = 0x67

.field public static final EFFECT_HAL_FEATUREMANAGER_ERROR:I = 0x66

.field public static final EFFECT_HAL_IN_USE:I = 0x6b

.field public static final EFFECT_HAL_LISTENER_ERROR:I = 0x6a

.field public static final EFFECT_HAL_SERVICE_ERROR:I = 0x65

.field public static final EFFECT_INITIAL_ERROR:I = 0xc9


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "problem"    # I

    .prologue
    .line 130
    invoke-static {p1}, Lcom/mediatek/mmsdk/CameraEffectHalException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 131
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalException;->mReason:I

    .line 132
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 140
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalException;->mReason:I

    .line 141
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalException;->mReason:I

    .line 150
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "problem"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    invoke-static {p1}, Lcom/mediatek/mmsdk/CameraEffectHalException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iput p1, p0, Lcom/mediatek/mmsdk/CameraEffectHalException;->mReason:I

    .line 159
    return-void
.end method

.method public static getDefaultMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "problem"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "message":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    const-string v0, "the problem type not in the camera hal,please add that in CameraEffectHalException "

    .line 185
    return-object v0

    .line 169
    :pswitch_1
    const-string v0, "The camera hal is in use already"

    .line 172
    :pswitch_2
    const-string v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    .line 177
    :pswitch_3
    const-string v0, "The camera is disabled due to a device policy, and cannot be opened."

    .line 180
    :pswitch_4
    const-string v0, "The camera device is currently in the error state; no further calls to it will succeed."

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/mediatek/mmsdk/CameraEffectHalException;->mReason:I

    return v0
.end method
