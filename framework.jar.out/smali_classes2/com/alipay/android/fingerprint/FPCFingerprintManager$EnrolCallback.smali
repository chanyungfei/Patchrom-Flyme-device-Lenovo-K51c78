.class public interface abstract Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
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

.method public abstract onProgress(Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;)V
.end method
