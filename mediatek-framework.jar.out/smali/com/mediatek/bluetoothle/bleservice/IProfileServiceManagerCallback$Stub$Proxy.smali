.class Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProfileServiceManagerCallback.java"

# interfaces
.implements Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 59
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.mediatek.bluetoothle.bleservice.IProfileServiceManagerCallback"

    return-object v0
.end method
