.class Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
.super Ljava/lang/Object;
.source "BipManager.java"


# instance fields
.field public buffer:[B

.field public remainingCount:I

.field public requestCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 1374
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->requestCount:I

    .line 1375
    iput v1, p0, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    return-void
.end method
