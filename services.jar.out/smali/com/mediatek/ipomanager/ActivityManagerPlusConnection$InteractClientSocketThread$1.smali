.class Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;->this$1:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;

    invoke-virtual {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->actionDone()V

    .line 146
    return-void
.end method
