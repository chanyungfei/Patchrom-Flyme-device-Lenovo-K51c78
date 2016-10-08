.class public Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedRejectReasons"
.end annotation


# instance fields
.field public guidedLowCoverage:Z

.field public guidedLowQuality:Z

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V
    .locals 0
    .param p2, "guidedLowCoverage"    # Z
    .param p3, "guidedLowQuality"    # Z

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 185
    iput-boolean p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 186
    return-void
.end method
