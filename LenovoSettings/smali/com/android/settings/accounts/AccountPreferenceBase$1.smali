.class Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;

    # getter for: Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;->access$000(Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1$1;-><init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountPreferenceBase$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
