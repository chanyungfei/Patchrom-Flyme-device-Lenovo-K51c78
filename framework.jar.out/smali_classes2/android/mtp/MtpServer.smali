.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpServer"


# instance fields
.field private mNativeContext:J

.field private mServerEndup:Z


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

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 3
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 45
    const-string v0, "MtpServer"

    const-string v1, "MtpServer constructor: native_setup!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 51
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_end_session()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_infoChanged(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_send_storage_infoChanged(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method

.method private final native native_update_storage(Landroid/mtp/MtpStorage;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 93
    return-void
.end method

.method public endSession()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "MtpServer"

    const-string v1, "MtpServer endSession!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_end_session()V

    .line 125
    return-void
.end method

.method public getStatus()Z
    .locals 2

    .prologue
    .line 133
    const-string v0, "MtpServer"

    const-string v1, "MtpServer getStatus!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    return v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 97
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "MtpServer"

    const-string v1, "MtpServer run!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 70
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 71
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 75
    const-string v0, "MtpServer"

    const-string v1, "MtpServer run-end!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0
    .param p1, "property"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 89
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 81
    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_infoChanged(I)V

    .line 144
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 85
    return-void
.end method

.method public sendStorageInfoChanged(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_send_storage_infoChanged(I)V

    .line 114
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 55
    const-string v1, "MtpServer"

    const-string v2, "MtpServer start!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    .line 59
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public updateStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_update_storage(Landroid/mtp/MtpStorage;)V

    .line 106
    return-void
.end method
