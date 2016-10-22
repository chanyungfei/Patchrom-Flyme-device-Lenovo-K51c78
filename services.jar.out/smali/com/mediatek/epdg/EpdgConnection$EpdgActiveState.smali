.class Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mApnType:I
    invoke-static {v0}, Lcom/mediatek/epdg/EpdgConnection;->access$2300(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/mediatek/epdg/EpdgConnection;->access$2600(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mDpdSeconds:I
    invoke-static {v4}, Lcom/mediatek/epdg/EpdgConnection;->access$2400(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mEpdgPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/mediatek/epdg/EpdgConnection;->access$2500(Lcom/mediatek/epdg/EpdgConnection;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1096
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1100
    const/4 v1, 0x1

    .line 1102
    .local v1, "retVal":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1122
    const/4 v1, 0x0

    .line 1125
    :goto_0
    return v1

    .line 1104
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v3, "Activate. Do nothing"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2700(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I
    invoke-static {v4}, Lcom/mediatek/epdg/EpdgConnection;->access$1100(Lcom/mediatek/epdg/EpdgConnection;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/epdg/EpdgConnection;->access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$1700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1113
    :sswitch_2
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_1
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->disconnect()V
    invoke-static {v2}, Lcom/mediatek/epdg/EpdgConnection;->access$1900(Lcom/mediatek/epdg/EpdgConnection;)V

    .line 1119
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    # getter for: Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;
    invoke-static {v3}, Lcom/mediatek/epdg/EpdgConnection;->access$3000(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    move-result-object v3

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$3100(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const-string v3, "interrupted"

    # invokes: Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnection;->access$2900(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 1102
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x14 -> :sswitch_3
    .end sparse-switch
.end method
