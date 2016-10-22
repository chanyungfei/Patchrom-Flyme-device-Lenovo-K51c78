.class Lcom/android/server/TryToSolveActivity$1;
.super Landroid/os/Handler;
.source "TryToSolveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TryToSolveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TryToSolveActivity;


# direct methods
.method constructor <init>(Lcom/android/server/TryToSolveActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/TryToSolveActivity$1;->this$0:Lcom/android/server/TryToSolveActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity$1;->this$0:Lcom/android/server/TryToSolveActivity;

    # invokes: Lcom/android/server/TryToSolveActivity;->setupListItems()V
    invoke-static {v0}, Lcom/android/server/TryToSolveActivity;->access$000(Lcom/android/server/TryToSolveActivity;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity$1;->this$0:Lcom/android/server/TryToSolveActivity;

    # invokes: Lcom/android/server/TryToSolveActivity;->setupListView()V
    invoke-static {v0}, Lcom/android/server/TryToSolveActivity;->access$100(Lcom/android/server/TryToSolveActivity;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
