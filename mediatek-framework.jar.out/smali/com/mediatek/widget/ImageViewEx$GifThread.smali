.class public Lcom/mediatek/widget/ImageViewEx$GifThread;
.super Ljava/lang/Object;
.source "ImageViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GifThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;


# direct methods
.method protected constructor <init>(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$GifThread;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifThread;->this$0:Lcom/mediatek/widget/ImageViewEx;

    # invokes: Lcom/mediatek/widget/ImageViewEx;->gifAnimation()V
    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->access$400(Lcom/mediatek/widget/ImageViewEx;)V

    .line 632
    return-void
.end method
