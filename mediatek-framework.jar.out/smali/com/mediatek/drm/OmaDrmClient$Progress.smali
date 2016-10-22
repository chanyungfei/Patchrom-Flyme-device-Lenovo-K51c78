.class public Lcom/mediatek/drm/OmaDrmClient$Progress;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field private mCurrentSize:J

.field private mError:I

.field private mTotalSize:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 1
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "error"    # I

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    iput-wide p1, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mCurrentSize:J

    .line 1219
    iput-wide p3, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mTotalSize:J

    .line 1220
    return-void
.end method


# virtual methods
.method public getCurrenetSize()J
    .locals 2

    .prologue
    .line 1227
    iget-wide v0, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mCurrentSize:J

    return-wide v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mError:I

    return v0
.end method

.method public getProgress()F
    .locals 4

    .prologue
    .line 1251
    iget-wide v0, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mCurrentSize:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mTotalSize:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 1235
    iget-wide v0, p0, Lcom/mediatek/drm/OmaDrmClient$Progress;->mTotalSize:J

    return-wide v0
.end method
