.class Lcom/android/server/am/AppPcService$LongDistancePrefix;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongDistancePrefix"
.end annotation


# static fields
.field private static final CMCC_PREFIX:[Ljava/lang/String;

.field private static final TELECOM_PREFIX:[Ljava/lang/String;

.field private static final UNICON_PREFIX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 921
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v3

    const-string v1, "17951"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->CMCC_PREFIX:[Ljava/lang/String;

    .line 923
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "96218"

    aput-object v1, v0, v3

    const-string v1, "10193"

    aput-object v1, v0, v4

    const-string v1, "17901"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17960"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->UNICON_PREFIX:[Ljava/lang/String;

    .line 925
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "11808"

    aput-object v1, v0, v3

    const-string v1, "17909"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->TELECOM_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryLongDistacePrefix(Ljava/lang/String;)I
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 928
    sget-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->CMCC_PREFIX:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 929
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 930
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 943
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_1
    return v4

    .line 928
    .restart local v3    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->UNICON_PREFIX:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 934
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 935
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    .line 933
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 938
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/android/server/am/AppPcService$LongDistancePrefix;->TELECOM_PREFIX:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 939
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 940
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    .line 938
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 943
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
