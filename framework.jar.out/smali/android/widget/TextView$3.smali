.class Landroid/widget/TextView$3;
.super Landroid/os/ResultReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->getShowSoftInputResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 8371
    iput-object p1, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 8374
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 8375
    iget-object v0, p0, Landroid/widget/TextView$3;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->setJustShowSoftInputAfterTouchEvent(Z)V

    .line 8377
    :cond_0
    return-void
.end method
