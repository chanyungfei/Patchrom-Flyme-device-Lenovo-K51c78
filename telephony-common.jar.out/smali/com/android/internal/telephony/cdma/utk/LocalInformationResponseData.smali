.class Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private languageCode:Ljava/lang/String;

.field private mBaseID:I

.field private mBaseLAT:I

.field private mBaseLong:I

.field private mDate:Ljava/util/Date;

.field private mIMSI:I

.field private mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mLocalInfoType:I

.field private mMCC:I

.field private mNID:I

.field private mSID:I

.field private minute:I

.field private month:I

.field private second:I

.field private tempzone:I

.field private year:I

.field private zone:I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mLocalInfoType:I

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 52
    return-void
.end method


# virtual methods
.method public UtkConvTimeToTPTStamp(I)I
    .locals 2
    .param p1, "TimeDate"    # I

    .prologue
    .line 126
    rem-int/lit8 v0, p1, 0xa

    shl-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mLocalInfoType:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 63
    :pswitch_1
    const-string v7, "LocalInformationResponseData local info "

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 69
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalInformationResponseData format DateTime Year:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getYear()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Month:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Day:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hour:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Minutes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Seconds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getSeconds()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    rem-int/lit8 v7, v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->year:I

    .line 74
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->month:I

    .line 75
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->day:I

    .line 76
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->hour:I

    .line 77
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->minute:I

    .line 78
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getSeconds()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->second:I

    .line 80
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 81
    .local v3, "defaultZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    div-int/lit16 v7, v7, 0xe10

    div-int/lit16 v7, v7, 0x3e8

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    .line 82
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    if-gez v7, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    neg-int v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    or-int/lit16 v7, v7, 0x80

    :goto_1
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimeZone:rawzone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tempzone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "zone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/16 v6, 0x26

    .line 90
    .local v6, "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->year:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->month:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->day:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->hour:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->minute:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->second:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 82
    .end local v6    # "tag":I
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v7

    goto :goto_1

    .line 103
    .end local v3    # "defaultZone":Ljava/util/TimeZone;
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalInformationResponseData format Language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const/16 v6, 0x2d

    .line 105
    .restart local v6    # "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 108
    .local v2, "data":[B
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 110
    .local v1, "b":B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "data":[B
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "tag":I
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalInformationResponseData technology = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    iget v8, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->technologyFormat(Ljava/io/ByteArrayOutputStream;)V

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
