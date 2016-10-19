.class Lcom/android/server/CoverObserver$1;
.super Landroid/os/Handler;
.source "CoverObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CoverObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CoverObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CoverObserver;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/CoverObserver$1;->this$0:Lcom/android/server/CoverObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/CoverObserver$1;->this$0:Lcom/android/server/CoverObserver;

    # invokes: Lcom/android/server/CoverObserver;->handleCoverStateChange()V
    invoke-static {v0}, Lcom/android/server/CoverObserver;->access$000(Lcom/android/server/CoverObserver;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
