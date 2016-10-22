.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRect"
.end annotation


# instance fields
.field public guidedBottomLeft:Landroid/graphics/Point;

.field public guidedBottomRight:Landroid/graphics/Point;

.field public guidedTopLeft:Landroid/graphics/Point;

.field public guidedTopRight:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p2, "guidedBottomLeft"    # Landroid/graphics/Point;
    .param p3, "guidedBottomRight"    # Landroid/graphics/Point;
    .param p4, "guidedTopLeft"    # Landroid/graphics/Point;
    .param p5, "guidedTopRight"    # Landroid/graphics/Point;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;->guidedBottomLeft:Landroid/graphics/Point;

    .line 211
    iput-object p3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;->guidedBottomRight:Landroid/graphics/Point;

    .line 212
    iput-object p4, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;->guidedTopLeft:Landroid/graphics/Point;

    .line 213
    iput-object p5, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;->guidedTopRight:Landroid/graphics/Point;

    .line 214
    return-void
.end method
