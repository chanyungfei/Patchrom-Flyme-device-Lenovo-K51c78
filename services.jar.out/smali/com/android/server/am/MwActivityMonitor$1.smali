.class Lcom/android/server/am/MwActivityMonitor$1;
.super Landroid/os/Handler;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MwActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MwActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/MwActivityMonitor;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 94
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v3, v3, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x80500de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 103
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v3, v3, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x80500df

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    # getter for: Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I
    invoke-static {v6}, Lcom/android/server/am/MwActivityMonitor;->access$000(Lcom/android/server/am/MwActivityMonitor;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 115
    .restart local v1    # "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/MwActivityMonitor$MessageObj;

    .line 120
    .local v0, "obj":Lcom/android/server/am/MwActivityMonitor$MessageObj;
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v3, v2, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$100(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$100(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mPr:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$200(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 123
    const-string v2, "MwActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACT-reset the process max/restore status for app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$100(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$100(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->inMaxOrRestore:Z

    .line 131
    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 128
    :cond_0
    :try_start_1
    const-string v2, "MwActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obj.mAr.app != obj.mPr, obj.mAr.app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$100(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", obj.mPr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/MwActivityMonitor$MessageObj;->mPr:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->access$200(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
