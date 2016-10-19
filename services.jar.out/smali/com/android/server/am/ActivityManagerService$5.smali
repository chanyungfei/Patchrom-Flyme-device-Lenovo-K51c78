.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4899
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4901
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyAppSwitch(Ljava/lang/String;ZI)V

    .line 4902
    return-void
.end method
