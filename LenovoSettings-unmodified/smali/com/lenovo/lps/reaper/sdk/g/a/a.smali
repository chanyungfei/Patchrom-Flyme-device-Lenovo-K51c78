.class public final Lcom/lenovo/lps/reaper/sdk/g/a/a;
.super Lcom/lenovo/lps/reaper/sdk/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 4

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/a/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/a/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
