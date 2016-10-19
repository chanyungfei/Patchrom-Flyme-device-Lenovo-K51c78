.class public Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;
.super Ljava/lang/Object;
.source "SystemPropertySignal.java"


# static fields
.field private static final DEFAULT_BACKGROUND_DATA:I = 0x0

.field private static final PROPERTY_BACKGROUND_DATA:Ljava/lang/String; = "persisy.backgrounddata.enable"

.field private static final PROVIDER_BACKGROUND_DATA:Ljava/lang/String; = "sds_background_data"

.field private static final TAG:Ljava/lang/String; = "SystemPropertySignal"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastSetting:I

.field private mPropertyChangeCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$1;

    invoke-direct {v0, p0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$1;-><init>(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mPropertyChangeCallback:Ljava/lang/Runnable;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mLastSetting:I

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->onPropertyChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mPropertyChangeCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onPropertyChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    const-string v2, "persisy.backgrounddata.enable"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "nowSetting":I
    iget v2, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mLastSetting:I

    if-eq v1, v2, :cond_0

    .line 52
    const-string v2, "SystemPropertySignal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPropertyChange: nowSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput v1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mLastSetting:I

    .line 55
    iget-object v2, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "sds_background_data"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 59
    const-string v2, "SystemPropertySignal"

    const-string v3, "onPropertyChange: save to provider"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "sds_background_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 31
    const-string v0, "SystemPropertySignal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "SystemPropertySignal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->onPropertyChange()V

    .line 39
    new-instance v0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;

    invoke-direct {v0, p0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;-><init>(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
