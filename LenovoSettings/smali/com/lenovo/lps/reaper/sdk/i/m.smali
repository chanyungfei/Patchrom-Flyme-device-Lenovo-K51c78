.class public final Lcom/lenovo/lps/reaper/sdk/i/m;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static c:Lcom/lenovo/lps/reaper/sdk/i/m;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x1e

    aput v1, v0, v3

    const/4 v1, 0x6

    const/16 v2, 0x3c

    aput v2, v0, v1

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/m;->a:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/m;->c:Lcom/lenovo/lps/reaper/sdk/i/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/i/m;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/m;->c:Lcom/lenovo/lps/reaper/sdk/i/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/i/m;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/i/m;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/i/m;->c:Lcom/lenovo/lps/reaper/sdk/i/m;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/m;->c:Lcom/lenovo/lps/reaper/sdk/i/m;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    rem-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    return-void
.end method

.method public d()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/m;->a:[I

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    aget v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/i/m;->b:I

    goto :goto_0
.end method
