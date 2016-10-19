.class Landroid/widget/Editor$SelectPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/TranslationViewHelper$OnPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SelectPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SelectPopupWindow;)V
    .locals 0

    .prologue
    .line 2645
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow$1;->this$1:Landroid/widget/Editor$SelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 3

    .prologue
    .line 2649
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow$1;->this$1:Landroid/widget/Editor$SelectPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow$1;->this$1:Landroid/widget/Editor$SelectPopupWindow;

    # getter for: Landroid/widget/Editor$SelectPopupWindow;->mParentPositionX:I
    invoke-static {v1}, Landroid/widget/Editor$SelectPopupWindow;->access$1700(Landroid/widget/Editor$SelectPopupWindow;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectPopupWindow$1;->this$1:Landroid/widget/Editor$SelectPopupWindow;

    # getter for: Landroid/widget/Editor$SelectPopupWindow;->mParentPositionY:I
    invoke-static {v2}, Landroid/widget/Editor$SelectPopupWindow;->access$1800(Landroid/widget/Editor$SelectPopupWindow;)I

    move-result v2

    # invokes: Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V
    invoke-static {v0, v1, v2}, Landroid/widget/Editor$SelectPopupWindow;->access$1900(Landroid/widget/Editor$SelectPopupWindow;II)V

    .line 2650
    return-void
.end method
