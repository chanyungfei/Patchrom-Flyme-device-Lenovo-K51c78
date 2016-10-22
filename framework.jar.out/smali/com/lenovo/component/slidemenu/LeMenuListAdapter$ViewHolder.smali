.class public Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LeMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/LeMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final content:Landroid/widget/TextView;

.field public final contentLayout:Landroid/widget/RelativeLayout;

.field public final icon:Landroid/widget/ImageView;

.field public final listItemLayout:Landroid/view/ViewGroup;

.field public final remark:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final titleLayout:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->listItemLayout:Landroid/view/ViewGroup;

    .line 240
    const v0, 0x90c0038

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    .line 241
    const v0, 0x90c0039

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->contentLayout:Landroid/widget/RelativeLayout;

    .line 243
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->titleLayout:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 244
    const v0, 0x90c003a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 245
    const v0, 0x90c003b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 246
    const v0, 0x90c003c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuListAdapter$ViewHolder;->remark:Landroid/widget/TextView;

    .line 247
    return-void
.end method
