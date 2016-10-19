.class public Lcom/lenovo/datamining/hook/HookSystemProperties;
.super Ljava/lang/Object;
.source "HookSystemProperties.java"


# static fields
.field public static final DEFAULT_BACKGROUND_DATA:Ljava/lang/String; = "false"

.field public static final PROPERTY_BACKGROUND_DATA:Ljava/lang/String; = "persist.backgrounddata.enable"

.field public static final PROVIDER_BACKGROUND_DATA:Ljava/lang/String; = "sds_background_data"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v2, "persist.backgrounddata.enable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 29
    .local v1, "obj":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    .local v0, "data":Landroid/os/Parcel;
    const v2, 0x5f535052

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "obj":Landroid/os/IBinder;
    :cond_0
    return-void

    .line 33
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v1    # "obj":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 34
    :catch_1
    move-exception v2

    goto :goto_0
.end method
