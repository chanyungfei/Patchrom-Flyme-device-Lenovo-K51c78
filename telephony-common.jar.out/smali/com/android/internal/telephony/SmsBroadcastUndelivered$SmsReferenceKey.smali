.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsReferenceKey"
.end annotation


# instance fields
.field final mAddress:Ljava/lang/String;

.field final mMessageCount:I

.field final mReferenceNumber:I

.field final mSubId:J


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    .line 234
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 253
    instance-of v2, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 254
    check-cast v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 256
    .local v0, "other":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    iget v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    iget v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 262
    .end local v0    # "other":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    :cond_0
    return v1
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mSubId:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3f

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
