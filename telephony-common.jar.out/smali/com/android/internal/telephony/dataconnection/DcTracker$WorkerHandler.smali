.class Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4395
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    .prologue
    .line 4395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4398
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 4409
    :goto_0
    return-void

    .line 4401
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "WorkerHandler received EVENT_INIT_EMERGENCY_APN_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4402
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4403
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 4406
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanOrSetupDataConnByCheckFdn()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 4398
    :sswitch_data_0
    .sparse-switch
        0x421f6 -> :sswitch_0
        0x421fc -> :sswitch_1
    .end sparse-switch
.end method
