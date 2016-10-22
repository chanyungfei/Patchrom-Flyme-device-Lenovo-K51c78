.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 50
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_createMtp_file(I)Z
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_export_file(ILjava/lang/String;)Z
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(II)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_parent(I)J
.end method

.method private native native_get_storage_id(I)J
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 76
    return-void
.end method

.method public createMtpFile(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_createMtp_file(I)Z

    move-result v0

    return v0
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result v0

    return v0
.end method

.method public exportMtp(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_export_file(ILjava/lang/String;)Z

    move-result v0

    .line 253
    .local v0, "ret":Z
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)[B
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 1
    .param p1, "storageId"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)[B
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object v0

    return-object v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 62
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v0

    .line 63
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 66
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
