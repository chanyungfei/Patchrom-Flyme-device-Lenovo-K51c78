.class public interface abstract Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnrolCallback"
.end annotation


# virtual methods
.method public abstract onEnrolled(I)V
.end method

.method public abstract onEnrollmentFailed()V
.end method

.method public abstract onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V
.end method
