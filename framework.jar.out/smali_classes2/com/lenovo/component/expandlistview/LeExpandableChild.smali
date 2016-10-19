.class public Lcom/lenovo/component/expandlistview/LeExpandableChild;
.super Ljava/lang/Object;
.source "LeExpandableChild.java"


# instance fields
.field private iconResId:I

.field private titleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "titleResId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->iconResId:I

    .line 22
    iput p2, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->titleResId:I

    .line 23
    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->iconResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->titleResId:I

    return v0
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->iconResId:I

    .line 31
    return-void
.end method

.method public setTitleResId(I)V
    .locals 0
    .param p1, "titleResId"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/component/expandlistview/LeExpandableChild;->titleResId:I

    .line 39
    return-void
.end method
