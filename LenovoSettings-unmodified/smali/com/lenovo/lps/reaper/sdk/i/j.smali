.class public final Lcom/lenovo/lps/reaper/sdk/i/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(II)[I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    rem-int/lit16 v0, p0, 0x12c

    if-lez v0, :cond_0

    div-int/lit16 v0, p0, 0x12c

    add-int/lit8 v0, v0, 0x1

    :goto_0
    aget v2, v1, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v3

    rem-int/lit16 v0, p1, 0x12c

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    div-int/lit16 v0, p1, 0x12c

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aget v2, v1, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v6

    aget v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v3

    aget v0, v1, v6

    int-to-double v2, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    double-to-int v0, v2

    aput v0, v1, v6

    return-object v1

    :cond_0
    div-int/lit16 v0, p0, 0x12c

    goto :goto_0

    :cond_1
    div-int/lit16 v0, p1, 0x12c

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x2
        0x6
    .end array-data
.end method

.method public static a(IIJ)[I
    .locals 12

    const-wide/16 v10, 0x1e

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    const-wide/32 v2, 0xea60

    div-long v2, p2, v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    cmp-long v0, v2, v10

    if-gtz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->a:[I

    aget v0, v0, v6

    aput v0, v1, v6

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->b:[I

    aget v0, v0, v6

    aput v0, v1, v7

    :goto_0
    rem-int/lit16 v0, p0, 0x12c

    if-lez v0, :cond_3

    div-int/lit16 v0, p0, 0x12c

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aget v2, v1, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v6

    rem-int/lit16 v0, p1, 0x12c

    const/16 v2, 0xa

    if-le v0, v2, :cond_4

    div-int/lit16 v0, p1, 0x12c

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aget v2, v1, v7

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v7

    aget v0, v1, v6

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v6

    aget v0, v1, v7

    int-to-double v2, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    double-to-int v0, v2

    aput v0, v1, v7

    return-object v1

    :cond_0
    cmp-long v0, v2, v10

    if-lez v0, :cond_1

    const-wide/16 v4, 0xf0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->a:[I

    aget v0, v0, v7

    aput v0, v1, v6

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->b:[I

    aget v0, v0, v7

    aput v0, v1, v7

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0xf0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-wide/16 v4, 0x3c0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->a:[I

    aget v0, v0, v8

    aput v0, v1, v6

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->b:[I

    aget v0, v0, v8

    aput v0, v1, v7

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->a:[I

    aget v0, v0, v9

    aput v0, v1, v6

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/e;->b:[I

    aget v0, v0, v9

    aput v0, v1, v7

    goto :goto_0

    :cond_3
    div-int/lit16 v0, p0, 0x12c

    goto :goto_1

    :cond_4
    div-int/lit16 v0, p1, 0x12c

    goto :goto_2

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method
