.class final Llenovo/view/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Llenovo/view/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Llenovo/view/ViewPager$ItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Llenovo/view/ViewPager$ItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Llenovo/view/ViewPager$1;->compare(Llenovo/view/ViewPager$ItemInfo;Llenovo/view/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Llenovo/view/ViewPager$ItemInfo;Llenovo/view/ViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Llenovo/view/ViewPager$ItemInfo;
    .param p2, "rhs"    # Llenovo/view/ViewPager$ItemInfo;

    .prologue
    .line 127
    iget v0, p1, Llenovo/view/ViewPager$ItemInfo;->position:I

    iget v1, p2, Llenovo/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
