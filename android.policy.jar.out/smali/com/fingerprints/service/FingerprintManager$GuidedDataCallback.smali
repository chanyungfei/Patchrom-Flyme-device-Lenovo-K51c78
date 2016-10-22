.class public interface abstract Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GuidedDataCallback"
.end annotation


# virtual methods
.method public abstract onImageQuality(II)V
.end method

.method public abstract onImageStitched(I)V
.end method

.method public abstract onImmobile(I)V
.end method

.method public abstract onLastTouch([I)V
.end method

.method public abstract onMaskList(I[I)V
.end method

.method public abstract onNextDirection(I)V
.end method

.method public abstract onNextTouch([I)V
.end method

.method public abstract onProgressPercentage(I)V
.end method

.method public abstract onSendGuideData()V
.end method
