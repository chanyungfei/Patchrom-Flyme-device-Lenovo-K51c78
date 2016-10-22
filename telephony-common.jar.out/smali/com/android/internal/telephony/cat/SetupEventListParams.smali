.class Lcom/android/internal/telephony/cat/SetupEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventList:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[B)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "eventList"    # [B

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 247
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetupEventListParams;->eventList:[B

    .line 248
    return-void
.end method
