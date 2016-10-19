.class Lcom/mediatek/widget/BookmarkView$1;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Landroid/widget/BounceGallery$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/BookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/BookmarkView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/BookmarkView;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkView$1;->this$0:Lcom/mediatek/widget/BookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "BookmarkView"

    const-string v1, "BounceGallery selection changed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$1;->this$0:Lcom/mediatek/widget/BookmarkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkView;->refreshInfo(Z)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$1;->this$0:Lcom/mediatek/widget/BookmarkView;

    # invokes: Lcom/mediatek/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$000(Lcom/mediatek/widget/BookmarkView;)V

    .line 465
    return-void
.end method
