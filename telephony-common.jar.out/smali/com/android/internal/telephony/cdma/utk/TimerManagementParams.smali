.class Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field dataRaw:[B

.field timerAction:I

.field timerId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I[B)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 222
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    .line 223
    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 229
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    .line 230
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    .line 232
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v1, :cond_0

    .line 233
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 236
    :cond_0
    return-void
.end method
