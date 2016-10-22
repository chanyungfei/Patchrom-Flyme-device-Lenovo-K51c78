.class Lcom/flyme/deviceoriginalsettings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$000(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$000(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
