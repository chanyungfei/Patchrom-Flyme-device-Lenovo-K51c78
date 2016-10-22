.class public final Lcom/lenovo/lps/reaper/sdk/f/b;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/lenovo/lps/reaper/sdk/f/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceIdentify"

    const-string v1, "construct DeviceIdentify."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/f/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/f/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "00000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->d:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdentify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "snTmp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->e:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->getMEID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/b;->f()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/f/b;
    .locals 2

    const-class v1, Lcom/lenovo/lps/reaper/sdk/f/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/f/b;->h:Lcom/lenovo/lps/reaper/sdk/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/f/b;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/f/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/f/b;->h:Lcom/lenovo/lps/reaper/sdk/f/b;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/f/b;->h:Lcom/lenovo/lps/reaper/sdk/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/sdac/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/sdac/a;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/sdac/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/f/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/b;->g()Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/f/c;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/f/c;-><init>(Lcom/lenovo/lps/reaper/sdk/f/b;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->c:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private g()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->b:Landroid/content/Context;

    const-string v3, "PlusUtil"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "mac"

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mac"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->f:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->b:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "DeviceIdentify"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MAC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "mac"

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "mac"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->f:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "lenovo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "lenovo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "imei"

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->e:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "sn"

    aput-object v1, v0, v3

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "mac"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/b;->g:Ljava/lang/String;

    return-object v0
.end method
