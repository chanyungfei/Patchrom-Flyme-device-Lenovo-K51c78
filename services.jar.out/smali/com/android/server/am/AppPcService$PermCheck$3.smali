.class Lcom/android/server/am/AppPcService$PermCheck$3;
.super Landroid/database/ContentObserver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermCheck;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService$PermCheck;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck$3;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1883
    const-string v0, "Security_PermCheck"

    const-string v1, "CONTENT_PERM_SYS_URI onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$3;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # invokes: Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3800(Lcom/android/server/am/AppPcService$PermCheck;)V

    .line 1885
    return-void
.end method
