.class Lcom/android/server/am/AppPcService$PermControlService$1;
.super Landroid/os/Handler;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1225
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1227
    :goto_0
    return-void

    .line 1213
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->handleDenyToastMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->access$2100(Lcom/android/server/am/AppPcService$PermControlService;Landroid/os/Message;)V

    goto :goto_0

    .line 1216
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$2200(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->handleConfirmDlgMsg(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2300(Lcom/android/server/am/AppPcService$PermControlService;Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V

    goto :goto_0

    .line 1219
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->handleCountDownMsg(Landroid/os/Message;)V

    goto :goto_0

    .line 1222
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->handleCancelConfirmDlgMsg()V
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$2400(Lcom/android/server/am/AppPcService$PermControlService;)V

    goto :goto_0

    .line 1211
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
