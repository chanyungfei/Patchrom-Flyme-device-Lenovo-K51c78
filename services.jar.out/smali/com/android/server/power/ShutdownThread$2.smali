.class final Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 301
    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$400(Landroid/content/Context;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Landroid/content/Context;)V

    .line 306
    # getter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 309
    :cond_1
    return-void
.end method
