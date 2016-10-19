.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field public guidedLastTouch:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

.field public guidedMaskList:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;

.field public guidedNextDirection:I

.field public guidedNextTouch:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

.field public guidedProgress:I

.field public guidedResult:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;IILcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;)V
    .locals 0
    .param p2, "guidedProgress"    # I
    .param p3, "guidedNextDirection"    # I
    .param p4, "guidedResult"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;
    .param p5, "guidedLastTouch"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .param p6, "guidedNextTouch"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .param p7, "guidedMaskList"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedProgress:I

    .line 139
    iput p3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedNextDirection:I

    .line 140
    iput-object p4, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedResult:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

    .line 141
    iput-object p5, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedLastTouch:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

    .line 142
    iput-object p6, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedNextTouch:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

    .line 143
    iput-object p7, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedMaskList:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;

    .line 144
    return-void
.end method
