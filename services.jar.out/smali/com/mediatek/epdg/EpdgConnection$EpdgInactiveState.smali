.class Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I
    invoke-static {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->access$402(Lcom/mediatek/epdg/EpdgConnection;I)I

    .line 985
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 990
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 994
    const/4 v0, 0x1

    .line 996
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1008
    const/4 v0, 0x0

    .line 1010
    .end local v0    # "retVal":Z
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 999
    .restart local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->prepareConfig()Z
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgConnection;->access$500(Lcom/mediatek/epdg/EpdgConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->connect()Z
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgConnection;->access$600(Lcom/mediatek/epdg/EpdgConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 996
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method
