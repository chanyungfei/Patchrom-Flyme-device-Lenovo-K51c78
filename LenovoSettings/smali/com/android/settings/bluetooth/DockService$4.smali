.class Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$500(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$600(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$4;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->stopForeground(Z)V

    .line 605
    return-void
.end method
