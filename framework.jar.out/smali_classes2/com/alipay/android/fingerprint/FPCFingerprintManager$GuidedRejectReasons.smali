.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRejectReasons"
.end annotation


# instance fields
.field public guidedLowCoverage:Z

.field public guidedLowQuality:Z

.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;ZZ)V
    .locals 0
    .param p2, "guidedLowCoverage"    # Z
    .param p3, "guidedLowQuality"    # Z

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-boolean p2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 191
    iput-boolean p3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 192
    return-void
.end method
