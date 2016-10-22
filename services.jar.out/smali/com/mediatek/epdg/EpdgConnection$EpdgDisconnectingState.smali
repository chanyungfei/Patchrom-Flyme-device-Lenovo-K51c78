.class Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgDisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mApnType:I
    invoke-static {v0}, Lcom/mediatek/epdg/EpdgConnection;->access$2300(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/mediatek/epdg/EpdgConnection;->access$2600(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mEpdgPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgConnection;->access$2500(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1146
    const/4 v0, 0x1

    .line 1148
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1157
    const/4 v0, 0x0

    .line 1160
    :goto_0
    return v0

    .line 1150
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/mediatek/epdg/EpdgConnection;->access$3300(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Message;)V

    goto :goto_0

    .line 1154
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$3400(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1148
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method
