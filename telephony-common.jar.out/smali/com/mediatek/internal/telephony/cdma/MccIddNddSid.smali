.class public Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
.super Ljava/lang/Object;
.source "MccIddNddSid.java"


# instance fields
.field public mCc:Ljava/lang/String;

.field public mIdd:Ljava/lang/String;

.field public mMcc:I

.field public mNdd:Ljava/lang/String;

.field public mSidMax:I

.field public mSidMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    .line 36
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    .line 38
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    .line 39
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "cc"    # Ljava/lang/String;
    .param p3, "sidmin"    # I
    .param p4, "sidmax"    # I
    .param p5, "idd"    # Ljava/lang/String;
    .param p6, "ndd"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    .line 55
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    .line 57
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    .line 58
    iput-object p5, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->copyFrom(Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .prologue
    .line 74
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    .line 75
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 76
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    .line 77
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    .line 78
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    return-object v0
.end method

.method public getSidMax()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    return v0
.end method

.method public getSidMin()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Idd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ndd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
