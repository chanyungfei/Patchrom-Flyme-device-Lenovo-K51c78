.class Lcom/android/internal/telephony/cat/ActivateParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mTarget:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "target"    # I

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ActivateParams;->mTarget:I

    .line 348
    iput p2, p0, Lcom/android/internal/telephony/cat/ActivateParams;->mTarget:I

    .line 349
    return-void
.end method
