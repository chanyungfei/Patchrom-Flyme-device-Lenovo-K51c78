.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedResult"
.end annotation


# instance fields
.field public guidedAcceptance:I

.field public guidedImmobile:Z

.field public guidedRejectReasons:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

.field public guidedStitched:Z

.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;IZZLcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;)V
    .locals 0
    .param p2, "guidedAcceptance"    # I
    .param p3, "guidedStitched"    # Z
    .param p4, "guidedImmobile"    # Z
    .param p5, "guidedRejectReasons"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedAcceptance:I

    .line 175
    iput-boolean p3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedStitched:Z

    .line 176
    iput-boolean p4, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 177
    iput-object p5, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

    .line 178
    return-void
.end method
