.class Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field timeInterval:I

.field timeUnit:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;II)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "u"    # I
    .param p3, "ti"    # I

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 210
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    .line 211
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    .line 216
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    .line 217
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    .line 218
    return-void
.end method
