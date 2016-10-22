.class public final Lcom/lenovo/lps/reaper/sdk/sdac/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/sdac/MultiSIMDeviceInfo;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :try_start_0
    const-string v1, "getDeviceIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/sdac/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "DeviceDataImpl"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
