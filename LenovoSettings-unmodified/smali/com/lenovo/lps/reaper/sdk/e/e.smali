.class public final Lcom/lenovo/lps/reaper/sdk/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/e/i;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[Z

.field private static final f:[Z

.field private static final g:[Z


# instance fields
.field private h:[I

.field private i:[I

.field private j:[I

.field private k:[Z

.field private l:[Z

.field private m:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    const-class v0, Lcom/lenovo/lps/reaper/sdk/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->d:[I

    new-array v0, v2, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->e:[Z

    new-array v0, v2, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->f:[Z

    new-array v0, v2, [Z

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->g:[Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x14
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/e/e;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;IZI)V
    .locals 1

    const-string v0, "Dispatch2G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->h:[I

    aput p2, v0, p4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->k:[Z

    aput-boolean p3, v0, p4

    :cond_0
    const-string v0, "Dispatch3G4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->i:[I

    aput p2, v0, p4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->l:[Z

    aput-boolean p3, v0, p4

    :cond_1
    const-string v0, "DispatchWifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->j:[I

    aput p2, v0, p4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->m:[Z

    aput-boolean p3, v0, p4

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->i:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->h:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->i:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->j:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->g:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->k:[Z

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->f:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->l:[Z

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->e:[Z

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->m:[Z

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->c:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->h:[I

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->b:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->i:[I

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->d:[I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->j:[I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/b/c;->h()[I

    move-result-object v2

    aget v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_1

    :goto_1
    if-ltz v0, :cond_2

    aget v4, v2, v3

    if-ge v0, v4, :cond_2

    if-ltz v3, :cond_2

    array-length v2, v2

    if-ge v3, v2, :cond_2

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/lenovo/lps/reaper/sdk/e/e;->a(Ljava/lang/String;IZI)V

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Prio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Flag:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    aget v0, v2, v3

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    const-string v1, "Prioriy or Number is illegal"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ". Wrong Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Dispatch2G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Dispatch3G4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DispatchWifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/lenovo/lps/reaper/sdk/i/i;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->m:[Z

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    const-string v2, "Now is Roaming"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/e;->a:Ljava/lang/String;

    const-string v1, "Now is NOTCONCERN"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->k:[Z

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->l:[Z

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/e;->m:[Z

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
