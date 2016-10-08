.class public abstract Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;
.super Ljava/lang/Object;
.source "LeExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/expandlistview/LeExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnChildLongClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    const v2, 0x90b0001

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    .local v1, "groupPosition":I
    const v2, 0x90b0002

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    .local v0, "childPosition":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/lenovo/component/expandlistview/LeExpandableListView$OnChildLongClickListener;->onLongClick(Landroid/view/View;II)Z

    move-result v2

    return v2
.end method

.method abstract onLongClick(Landroid/view/View;II)Z
.end method
