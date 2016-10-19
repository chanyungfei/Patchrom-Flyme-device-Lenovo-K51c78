.class public Lcom/fingerprints/service/FingerprintManager$GuidedData;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedData"
.end annotation


# instance fields
.field public guidedLastTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

.field public guidedMaskList:Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

.field public guidedNextDirection:I

.field public guidedNextTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

.field public guidedProgress:I

.field public guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V
    .locals 0
    .param p2, "guidedProgress"    # I
    .param p3, "guidedNextDirection"    # I
    .param p4, "guidedResult"    # Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .param p5, "guidedLastTouch"    # Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .param p6, "guidedNextTouch"    # Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .param p7, "guidedMaskList"    # Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    .line 133
    iput p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedNextDirection:I

    .line 134
    iput-object p4, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    .line 135
    iput-object p5, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedLastTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    .line 136
    iput-object p6, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedNextTouch:Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    .line 137
    iput-object p7, p0, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedMaskList:Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    .line 138
    return-void
.end method
