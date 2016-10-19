.class public Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
.super Ljava/lang/Object;
.source "MccSidLtmOff.java"


# static fields
.field public static final LTM_OFF_INVALID:I = 0x64


# instance fields
.field public mLtmOffMax:I

.field public mLtmOffMin:I

.field public mMcc:I

.field public mSid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    .line 36
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    .line 37
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    .line 38
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    .line 39
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "ltmOffMin"    # I
    .param p4, "ltmOffMax"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    .line 50
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    .line 51
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    .line 52
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 0
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->copyFrom(Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 1
    .param p1, "t"    # Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    .prologue
    .line 67
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    .line 68
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    .line 69
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    .line 70
    iget v0, p1, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    .line 71
    return-void
.end method

.method public getLtmOffMax()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    return v0
.end method

.method public getLtmOffMin()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    return v0
.end method
