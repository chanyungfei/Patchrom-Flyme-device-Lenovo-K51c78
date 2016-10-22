.class final enum Lcom/lenovo/settings/storage/SizeUtil$EMMC;
.super Ljava/lang/Enum;
.source "SizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/storage/SizeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EMMC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/storage/SizeUtil$EMMC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_16G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_32G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_64G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

.field public static final enum SIZE_8G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;


# instance fields
.field max:J

.field min:J

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_0G"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 21
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_4G"

    invoke-direct {v0, v1, v5, v8, v5}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 22
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_8G"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_8G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 23
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_16G"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_16G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 24
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_32G"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_32G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 25
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    const-string v1, "SIZE_64G"

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_64G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_8G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_16G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_32G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_64G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->$VALUES:[Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .param p3, "size"    # I
    .param p4, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x400

    const-wide/16 v2, 0x3e8

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    int-to-long v0, p3

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->size:J

    .line 33
    sub-int v0, p3, p4

    int-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->min:J

    .line 34
    add-int v0, p3, p4

    int-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->max:J

    .line 35
    return-void
.end method

.method static getEmmcBySize(J)Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    .locals 8
    .param p0, "size"    # J

    .prologue
    .line 38
    const-wide/16 v6, 0x400

    mul-long v0, p0, v6

    .line 39
    .local v0, "amendSize":J
    invoke-static {}, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->values()[Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    move-result-object v2

    .local v2, "arr$":[Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 41
    .local v3, "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    iget-wide v6, v3, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->min:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    iget-wide v6, v3, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->max:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 45
    .end local v3    # "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    :goto_1
    return-object v3

    .line 39
    .restart local v3    # "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "emmc":Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    :cond_1
    sget-object v3, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/storage/SizeUtil$EMMC;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/settings/storage/SizeUtil$EMMC;->$VALUES:[Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    invoke-virtual {v0}, [Lcom/lenovo/settings/storage/SizeUtil$EMMC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/storage/SizeUtil$EMMC;

    return-object v0
.end method
