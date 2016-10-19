.class public Landroid/text/TextUtils$PackedIntVectorForTest;
.super Landroid/text/PackedIntVector;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackedIntVectorForTest"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "columns"    # I

    .prologue
    .line 1879
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;-><init>(I)V

    .line 1880
    return-void
.end method


# virtual methods
.method public bridge synthetic adjustValuesBelow(III)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 1877
    invoke-super {p0, p1, p2, p3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    return-void
.end method

.method public bridge synthetic deleteAt(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 1877
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    return-void
.end method

.method public bridge synthetic getValue(II)I
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 1877
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic insertAt(I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [I

    .prologue
    .line 1877
    invoke-super {p0, p1, p2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    return-void
.end method

.method public bridge synthetic setValue(III)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 1877
    invoke-super {p0, p1, p2, p3}, Landroid/text/PackedIntVector;->setValue(III)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 1877
    invoke-super {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic width()I
    .locals 1

    .prologue
    .line 1877
    invoke-super {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    return v0
.end method
