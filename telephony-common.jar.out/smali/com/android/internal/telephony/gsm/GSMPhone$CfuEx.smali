.class Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CfuEx"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;

.field final mSetTimeSlot:[J


# direct methods
.method constructor <init>(Ljava/lang/String;[JLandroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "cfTimeSlot"    # [J
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3310
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    .line 3311
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetTimeSlot:[J

    .line 3312
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    .line 3313
    return-void
.end method
