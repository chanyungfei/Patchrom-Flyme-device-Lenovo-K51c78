.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;
.super Landroid/os/Handler;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateAdbStats(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateAdbStats(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
