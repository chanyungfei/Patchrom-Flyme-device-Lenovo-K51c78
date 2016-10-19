.class public Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
.super Ljava/lang/Object;
.source "RnsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiRoveThreshold"
.end annotation


# instance fields
.field private mRoveIn:I

.field private mRoveOut:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "in"    # I
    .param p2, "out"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveIn:I

    .line 98
    iput p2, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveOut:I

    .line 99
    return-void
.end method


# virtual methods
.method public getRssiRoveIn()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveIn:I

    return v0
.end method

.method public getRssiRoveOut()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveOut:I

    return v0
.end method

.method public setRssiRoveIn(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveIn:I

    .line 123
    return-void
.end method

.method public setRssiRoveOut(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->mRoveOut:I

    .line 131
    return-void
.end method
