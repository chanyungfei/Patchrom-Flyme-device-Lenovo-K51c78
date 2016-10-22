.class final enum Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
.super Ljava/lang/Enum;
.source "SizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/storage/SizeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RAMSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/storage/SizeUtil$RAMSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_05G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_1G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_1_5G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_2G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_3G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

.field public static final enum SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;


# instance fields
.field max:J

.field min:J

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v4, 0x3ecccccd    # 0.4f

    .line 118
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_0G"

    invoke-direct {v0, v1, v6, v2, v2}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 119
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_05G"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_05G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 120
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_1G"

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_1G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 121
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_1_5G"

    const/4 v2, 0x3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_1_5G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 122
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_2G"

    const/4 v2, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_2G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 123
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_3G"

    const/4 v2, 0x5

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_3G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 124
    new-instance v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    const-string v1, "SIZE_4G"

    const/4 v2, 0x6

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_0G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_05G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_1G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_1_5G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_2G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_3G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->SIZE_4G:Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->$VALUES:[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 4
    .param p3, "size"    # F
    .param p4, "range"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x400

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->size:J

    .line 132
    sub-float v0, p3, p4

    float-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->min:J

    .line 133
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->max:J

    .line 134
    return-void
.end method

.method static getTotalRAMbySize(J)J
    .locals 6
    .param p0, "size"    # J

    .prologue
    .line 137
    invoke-static {}, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->values()[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 138
    .local v3, "ram":Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    iget-wide v4, v3, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->min:J

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    iget-wide v4, v3, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->max:J

    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    .line 139
    iget-wide p0, v3, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->size:J

    .line 143
    .end local v3    # "ram":Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    .end local p0    # "size":J
    :cond_0
    return-wide p0

    .line 137
    .restart local v3    # "ram":Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    .restart local p0    # "size":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->$VALUES:[Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    invoke-virtual {v0}, [Lcom/lenovo/settings/storage/SizeUtil$RAMSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/storage/SizeUtil$RAMSize;

    return-object v0
.end method
