.class Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    .locals 1
    .param p1, "channelStatus"    # Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 467
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 468
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0
.end method
