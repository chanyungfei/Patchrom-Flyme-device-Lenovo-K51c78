.class final enum Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
.super Ljava/lang/Enum;
.source "VersionInfoSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RAMSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_0G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_0_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_1G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_1_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_2G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_3G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

.field public static final enum SIZE_4G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;


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

    .line 334
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_0G"

    invoke-direct {v0, v1, v6, v2, v2}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_0G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 335
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_0_5G"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_0_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 336
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_1G"

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_1G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 337
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_1_5G"

    const/4 v2, 0x3

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_1_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 338
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_2G"

    const/4 v2, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_2G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 339
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_3G"

    const/4 v2, 0x5

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_3G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 340
    new-instance v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    const-string v1, "SIZE_4G"

    const/4 v2, 0x6

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_4G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    .line 333
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    sget-object v1, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_0G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_0_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_1G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_1_5G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_2G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_3G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_4G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->$VALUES:[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

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

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 347
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->size:J

    .line 348
    sub-float v0, p3, p4

    float-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->min:J

    .line 349
    float-to-long v0, p3

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->max:J

    .line 350
    return-void
.end method

.method static getTotalRAMbySize(J)Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .locals 6
    .param p0, "size"    # J

    .prologue
    .line 353
    invoke-static {}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->values()[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 354
    .local v3, "ram":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    iget-wide v4, v3, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->min:J

    cmp-long v4, p0, v4

    if-lez v4, :cond_0

    iget-wide v4, v3, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->max:J

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 358
    .end local v3    # "ram":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    :goto_1
    return-object v3

    .line 353
    .restart local v3    # "ram":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "ram":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    :cond_1
    sget-object v3, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->SIZE_0G:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const-class v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->$VALUES:[Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    invoke-virtual {v0}, [Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    return-object v0
.end method
