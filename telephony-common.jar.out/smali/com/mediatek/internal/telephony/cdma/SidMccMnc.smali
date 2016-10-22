.class public Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
.super Ljava/lang/Object;
.source "SidMccMnc.java"


# instance fields
.field public mMccMnc:I

.field public mSid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    .line 32
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "mccMnc"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    .line 42
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/SidMccMnc;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/SidMccMnc;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->copyFrom(Lcom/mediatek/internal/telephony/cdma/SidMccMnc;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/SidMccMnc;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/SidMccMnc;

    .prologue
    .line 57
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    .line 58
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    .line 59
    return-void
.end method

.method public getMccMnc()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MccMnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
