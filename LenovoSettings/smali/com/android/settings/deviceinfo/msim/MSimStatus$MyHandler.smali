.class Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;
.super Landroid/os/Handler;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x1f4

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->updateTimes()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V

    .line 109
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    :cond_0
    return-void
.end method
