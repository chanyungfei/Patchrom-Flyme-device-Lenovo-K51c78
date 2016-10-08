.class Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventList:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[B)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "eList"    # [B

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    .line 202
    if-eqz p2, :cond_0

    .line 203
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 206
    :cond_0
    return-void
.end method
