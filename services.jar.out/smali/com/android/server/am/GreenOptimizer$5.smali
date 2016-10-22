.class Lcom/android/server/am/GreenOptimizer$5;
.super Landroid/content/BroadcastReceiver;
.source "GreenOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GreenOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GreenOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/GreenOptimizer;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$5;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    const-string v1, "mBCReceiver onReceive"

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 299
    :try_start_0
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 300
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$5;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    # setter for: Lcom/android/server/am/GreenOptimizer;->mNMService:Landroid/app/INotificationManager;
    invoke-static {v1, v2}, Lcom/android/server/am/GreenOptimizer;->access$202(Lcom/android/server/am/GreenOptimizer;Landroid/app/INotificationManager;)Landroid/app/INotificationManager;

    .line 301
    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$5;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mNMService:Landroid/app/INotificationManager;
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$200(Lcom/android/server/am/GreenOptimizer;)Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$5;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mNotificationListener:Landroid/service/notification/INotificationListener;
    invoke-static {v2}, Lcom/android/server/am/GreenOptimizer;->access$300(Lcom/android/server/am/GreenOptimizer;)Landroid/service/notification/INotificationListener;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/GreenOptimizer$5;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/server/am/GreenOptimizer;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method
