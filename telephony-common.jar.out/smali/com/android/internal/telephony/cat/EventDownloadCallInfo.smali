.class Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mCause:I

.field mCauseLen:I

.field mIsFarEnd:I

.field mIsMTCall:I

.field mState:I

.field mTi:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "ti"    # I
    .param p3, "isMTCall"    # I
    .param p4, "isFarEnd"    # I
    .param p5, "cause_len"    # I
    .param p6, "cause"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mState:I

    .line 127
    iput p2, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    .line 128
    iput p3, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    .line 129
    iput p4, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    .line 130
    iput p5, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    .line 131
    iput p6, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    .line 132
    return-void
.end method
