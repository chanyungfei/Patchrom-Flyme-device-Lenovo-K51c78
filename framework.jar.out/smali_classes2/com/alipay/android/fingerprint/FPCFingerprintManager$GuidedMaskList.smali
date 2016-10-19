.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedMaskList"
.end annotation


# instance fields
.field public guidedMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;",
            ">;"
        }
    .end annotation
.end field

.field public guidedNumberOfMask:I

.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "guidedNumberOfMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;>;"
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;->guidedMaskList:Ljava/util/ArrayList;

    .line 157
    iput p3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;->guidedNumberOfMask:I

    .line 158
    return-void
.end method
