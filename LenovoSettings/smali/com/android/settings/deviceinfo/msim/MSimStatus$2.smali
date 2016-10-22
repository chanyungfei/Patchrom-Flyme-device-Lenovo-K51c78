.class Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 344
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 345
    .local v2, "state":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v0

    .line 346
    .local v0, "plugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 347
    .local v1, "simNumber":I
    const-string v4, "MSimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getSimStatus()Z
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)Z

    .line 349
    sparse-switch v2, :sswitch_data_0

    .line 365
    const-string v4, "MSimStatus"

    const-string v5, "sim state is disabled"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-nez v1, :cond_0

    .line 367
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mSimExist:Z
    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$502(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)Z

    .line 368
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setSimPreference(Z)V
    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)V

    .line 373
    .end local v0    # "plugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    .end local v1    # "simNumber":I
    .end local v2    # "state":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local v0    # "plugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    .restart local v1    # "simNumber":I
    .restart local v2    # "state":I
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_0
    const-string v4, "MSimStatus"

    const-string v5, "sim state is ok"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mSimExist:Z
    invoke-static {v4, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$502(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)Z

    .line 353
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setSimPreference(Z)V
    invoke-static {v4, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)V

    goto :goto_0

    .line 356
    :sswitch_1
    const-string v4, "MSimStatus"

    const-string v5, "sim is absent"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mSimExist:Z
    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$502(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)Z

    .line 358
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->setSimPreference(Z)V
    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;Z)V

    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
