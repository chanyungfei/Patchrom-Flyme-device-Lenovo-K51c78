.class Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$changesBackup:I

.field final synthetic val$mChange:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 0

    .prologue
    .line 18158
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$changesBackup:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$mChange:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 18161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 18162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v2, :cond_1

    .line 18163
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18169
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$24;->val$changesBackup:I

    invoke-static {v5, v2}, Landroid/content/res/VibeExtraConfiguration;->updateIntent(Landroid/content/Intent;I)V

    .line 18177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v2 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 18180
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$24;->val$mChange:I

    if-eqz v2, :cond_0

    .line 18181
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18183
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v2 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 18192
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v18

    .line 18193
    return-void

    .line 18189
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v6, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 18192
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
