.class public Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
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
            "Lcom/fingerprints/service/FingerprintManager$GuidedRect;",
            ">;"
        }
    .end annotation
.end field

.field public guidedNumberOfMask:I

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "guidedNumberOfMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fingerprints/service/FingerprintManager$GuidedRect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;->guidedMaskList:Ljava/util/ArrayList;

    .line 151
    iput p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;->guidedNumberOfMask:I

    .line 152
    return-void
.end method
