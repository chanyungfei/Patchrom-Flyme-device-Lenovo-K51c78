.class Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    .line 123
    .local v0, "failed":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 133
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    const/16 v2, 0x65

    # invokes: Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->access$200(Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1

    .line 128
    :catch_1
    move-exception v1

    goto :goto_1

    .line 126
    :catch_2
    move-exception v1

    goto :goto_1
.end method
