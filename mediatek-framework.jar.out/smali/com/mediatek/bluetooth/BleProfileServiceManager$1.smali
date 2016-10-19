.class Lcom/mediatek/bluetooth/BleProfileServiceManager$1;
.super Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub;
.source "BleProfileServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProfileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$1;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-direct {p0}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub;-><init>()V

    return-void
.end method
