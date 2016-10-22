.class Lcom/android/server/am/ActivityStackSupervisor$2;
.super Ljava/lang/Thread;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyAppSwitch(Ljava/lang/String;ZI)V

    .line 1033
    return-void
.end method
