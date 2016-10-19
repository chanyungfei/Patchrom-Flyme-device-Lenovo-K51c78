.class Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private language:[B

.field private mIsDate:Z

.field private mIsLanguage:Z

.field private minute:I

.field private month:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timezone"    # I

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 320
    iput p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    .line 321
    iput p2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    .line 322
    iput p3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    .line 323
    iput p4, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    .line 324
    iput p5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    .line 325
    iput p6, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    .line 326
    iput p7, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 329
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "language"    # [B

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 336
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v6, 0x1

    .line 340
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    if-ne v5, v6, :cond_1

    .line 342
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 344
    .local v4, "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 345
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 346
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 349
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    iget v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    .end local v4    # "tag":I
    :cond_0
    return-void

    .line 354
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    if-ne v5, v6, :cond_0

    .line 356
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 358
    .restart local v4    # "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 361
    .local v1, "b":B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
