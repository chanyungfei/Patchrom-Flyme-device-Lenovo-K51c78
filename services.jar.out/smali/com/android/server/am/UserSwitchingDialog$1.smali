.class Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserSwitchingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserSwitchingDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v0, "ActivityManagerUserSwitchingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got IPO intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    .line 56
    return-void
.end method
