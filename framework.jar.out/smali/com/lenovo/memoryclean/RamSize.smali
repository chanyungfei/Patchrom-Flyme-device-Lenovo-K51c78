.class public Lcom/lenovo/memoryclean/RamSize;
.super Ljava/lang/Object;
.source "RamSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/memoryclean/RamSize$RAMSize;
    }
.end annotation


# static fields
.field private static PROC_MEM_INFO:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "RamSize"

    sput-object v0, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "/proc/meminfo"

    sput-object v0, Lcom/lenovo/memoryclean/RamSize;->PROC_MEM_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getRamSizeGB()F
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 51
    const/4 v5, 0x0

    .line 53
    .local v5, "ramSizeGB":F
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/lenovo/memoryclean/RamSize;->PROC_MEM_INFO:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x400

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 55
    .local v7, "reader":Ljava/io/BufferedReader;
    const-string v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 59
    const-string v8, "MemTotal"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 60
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 61
    .local v1, "index":I
    :goto_1
    const-string v8, "1234567890"

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v8, v1, 0x1

    const-string v9, "kB"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "memoryTotal":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lenovo/memoryclean/RamSize$RAMSize;->getTotalRAMbySize(J)Lcom/lenovo/memoryclean/RamSize$RAMSize;

    move-result-object v4

    .line 68
    .local v4, "ramSize":Lcom/lenovo/memoryclean/RamSize$RAMSize;
    invoke-virtual {v4}, Lcom/lenovo/memoryclean/RamSize$RAMSize;->name()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "ramSizeName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 70
    const-string v8, "SIZE_0G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 72
    const/4 v5, 0x0

    goto :goto_0

    .line 73
    :cond_2
    const-string v8, "SIZE_0_5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_0

    .line 76
    :cond_3
    const-string v8, "SIZE_1G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    .line 79
    :cond_4
    const-string v8, "SIZE_1_5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 82
    :cond_5
    const-string v8, "SIZE_2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 84
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    .line 85
    :cond_6
    const-string v8, "SIZE_3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 87
    const/high16 v5, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string v8, "SIZE_4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_8

    .line 90
    const/high16 v5, 0x40800000    # 4.0f

    goto/16 :goto_0

    .line 92
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 100
    .end local v1    # "index":I
    .end local v3    # "memoryTotal":Ljava/lang/String;
    .end local v4    # "ramSize":Lcom/lenovo/memoryclean/RamSize$RAMSize;
    .end local v6    # "ramSizeName":Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 105
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return v5

    .line 100
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    const-string v9, "IO Exception when getting memory information for phone information."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
