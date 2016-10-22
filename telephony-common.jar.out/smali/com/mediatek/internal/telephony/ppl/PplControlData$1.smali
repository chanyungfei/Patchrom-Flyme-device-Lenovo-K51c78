.class final Lcom/mediatek/internal/telephony/ppl/PplControlData$1;
.super Ljava/lang/Object;
.source "PplControlData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ppl/PplControlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 327
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 1
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    .line 331
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->compareSIMFingerprints([B[B)I

    move-result v0

    return v0
.end method
