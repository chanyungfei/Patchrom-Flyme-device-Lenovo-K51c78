.class public Lcom/android/internal/telephony/cdma/utk/LocalInfo;
.super Ljava/lang/Object;
.source "LocalInfo.java"


# instance fields
.field public BASE_ID:I

.field public BASE_LAT:I

.field public BASE_LONG:I

.field public IMSI_11_12:I

.field public MCC:I

.field public NID:I

.field public SID:I

.field public Technology:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 127
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 128
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 129
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 130
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 131
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 132
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 133
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    goto :goto_0
.end method

.method public getMccCodec(I)I
    .locals 4
    .param p1, "mMcc"    # I

    .prologue
    .line 73
    const/16 v3, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 74
    .local v2, "myMap":[I
    move v0, p1

    .line 75
    .local v0, "MCC":I
    move v1, p1

    .line 76
    .local v1, "mcc":I
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 77
    div-int/lit8 v3, v1, 0x64

    aget v3, v2, v3

    mul-int/lit8 v0, v3, 0x64

    .line 78
    rem-int/lit8 v1, v1, 0x64

    .line 79
    div-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 80
    rem-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    add-int/2addr v0, v3

    .line 89
    :goto_0
    return v0

    .line 82
    :cond_0
    div-int/lit16 v3, v1, 0x3e8

    aget v3, v2, v3

    mul-int/lit16 v0, v3, 0x3e8

    .line 83
    rem-int/lit16 v1, v1, 0x3e8

    .line 84
    div-int/lit8 v3, v1, 0x64

    aget v3, v2, v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v0, v3

    .line 85
    rem-int/lit8 v1, v1, 0x64

    .line 86
    div-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 87
    rem-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 73
    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public getMncCodec(I)I
    .locals 4
    .param p1, "mMnc"    # I

    .prologue
    .line 93
    const/16 v3, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 94
    .local v2, "myMap":[I
    move v0, p1

    .line 95
    .local v0, "IMSI_11_12":I
    move v1, p1

    .line 96
    .local v1, "mnc":I
    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 97
    div-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    mul-int/lit8 v0, v3, 0xa

    .line 98
    rem-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    add-int/2addr v0, v3

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    div-int/lit8 v3, v1, 0x64

    aget v3, v2, v3

    mul-int/lit8 v0, v3, 0x64

    .line 101
    rem-int/lit8 v1, v1, 0x64

    .line 102
    div-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 103
    rem-int/lit8 v3, v1, 0xa

    aget v3, v2, v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 93
    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public localInfoFormat(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const v1, 0xff00

    .line 40
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_INFORMATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 45
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    shr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    shr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    const-string v0, "LocalInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalInfoFormat MCC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IMSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASEID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASELAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BASELONG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public technologyFormat(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalInformationResponseData technology = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
