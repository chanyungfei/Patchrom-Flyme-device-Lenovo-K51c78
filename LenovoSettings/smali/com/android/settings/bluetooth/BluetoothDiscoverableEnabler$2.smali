.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 94
    return-void
.end method
