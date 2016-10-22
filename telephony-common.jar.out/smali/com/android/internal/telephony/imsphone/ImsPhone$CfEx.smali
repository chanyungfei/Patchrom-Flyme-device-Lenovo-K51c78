.class Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CfEx"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;

.field final mSetTimeSlot:[J


# direct methods
.method constructor <init>(Ljava/lang/String;[JZLandroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "cfTimeSlot"    # [J
    .param p3, "isCfu"    # Z
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    .line 1491
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mSetTimeSlot:[J

    .line 1492
    iput-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mIsCfu:Z

    .line 1493
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    .line 1494
    return-void
.end method
