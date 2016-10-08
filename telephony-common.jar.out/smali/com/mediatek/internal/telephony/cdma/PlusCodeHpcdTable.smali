.class public Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;
.super Ljava/lang/Object;
.source "PlusCodeHpcdTable.java"


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CDMA-PlusCodeHpcdTable"

.field private static final MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

.field private static final MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

.field static final PARAM_FOR_OFFSET:I = 0x2

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->MCC_IDD_NDD_SID_MAP:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 41
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->MCC_SID_LTM_OFF_MAP:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .locals 9
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 170
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getCcFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 172
    :cond_0
    const-string v6, "CDMA-PlusCodeHpcdTable"

    const-string v7, "[getCcFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    return-object v1

    .line 178
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 183
    .local v4, "sid":I
    if-ltz v4, :cond_1

    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const/4 v1, 0x0

    .line 190
    .local v1, "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v6

    .line 191
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 192
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v3, v6, v2

    .line 193
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_4

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_4

    .line 194
    move-object v1, v3

    .line 200
    :cond_3
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getCcFromMINSTableBySidAndLtm findMccIddNddSid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v2    # "i":I
    .end local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v4    # "sid":I
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v2    # "i":I
    .restart local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v4    # "sid":I
    .restart local v5    # "size":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .locals 11
    .param p0, "sMcc"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 65
    const-string v8, "CDMA-PlusCodeHpcdTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getCcFromTableByMcc mcc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 67
    :cond_0
    const-string v8, "CDMA-PlusCodeHpcdTable"

    const-string v9, "[getCcFromTableByMcc] please check the param "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 117
    :goto_0
    return-object v4

    .line 73
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 78
    .local v3, "mcc":I
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v8

    .line 80
    .local v5, "size":I
    const/4 v4, 0x0

    .line 95
    .local v4, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const-string v8, "CDMA-PlusCodeHpcdTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getCcFromTableByMcc size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, -0x1

    .line 97
    .local v1, "find":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 98
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v4, v8, v2

    .line 99
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->getMcc()I

    move-result v6

    .line 100
    .local v6, "tempMcc":I
    const-string v8, "CDMA-PlusCodeHpcdTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getCcFromTableByMcc tempMcc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-ne v6, v3, :cond_3

    .line 102
    move v1, v2

    .line 107
    .end local v6    # "tempMcc":I
    :cond_2
    const-string v8, "CDMA-PlusCodeHpcdTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getCcFromTableByMcc find = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v8, -0x1

    if-le v1, v8, :cond_4

    if-ge v1, v5, :cond_4

    .line 109
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v4, v7, v1

    .line 110
    const-string v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Now find Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SidMin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", SidMax = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Idd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Ndd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    .end local v1    # "find":I
    .end local v2    # "i":I
    .end local v3    # "mcc":I
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 76
    goto/16 :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "find":I
    .restart local v2    # "i":I
    .restart local v3    # "mcc":I
    .restart local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v5    # "size":I
    .restart local v6    # "tempMcc":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 116
    .end local v6    # "tempMcc":I
    :cond_4
    const-string v8, "CDMA-PlusCodeHpcdTable"

    const-string v9, "can\'t find one that match the Mcc"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 117
    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "sSid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromConflictTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 130
    :cond_0
    const-string v6, "CDMA-PlusCodeHpcdTable"

    const-string v7, "[getMccFromConflictTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    :goto_0
    return-object v2

    .line 136
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 142
    .local v5, "sid":I
    if-ltz v5, :cond_1

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v2, "mccArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 148
    .local v3, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v4, v6

    .line 149
    .local v4, "mccSidMapSize":I
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromConflictTableBySid] mccSidMapSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 151
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v3, v6, v1

    .line 152
    if-eqz v3, :cond_3

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    if-ne v6, v5, :cond_3

    .line 153
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mccSidLtmOff  Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", LtmOffMin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", LtmOffMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "i":I
    .end local v2    # "mccArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v4    # "mccSidMapSize":I
    .end local v5    # "sid":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sSid"    # Ljava/lang/String;
    .param p1, "sLtmOff"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 281
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] sSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sLtm_off = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 285
    :cond_0
    const-string v9, "CDMA-PlusCodeHpcdTable"

    const-string v10, "[getMccFromConflictTableBySidLtmOff] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    :goto_0
    return-object v6

    .line 291
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 296
    .local v8, "sid":I
    if-ltz v8, :cond_1

    .line 302
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 308
    .local v2, "ltmoff":I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v5, v9

    .line 311
    .local v5, "mccSidMapSize":I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccFromConflictTableBySidLtmOff] mccSidMapSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 315
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v4, v9, v1

    .line 317
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v3, v9, 0x2

    .line 318
    .local v3, "max":I
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v7, v9, 0x2

    .line 320
    .local v7, "min":I
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccFromConflictTableBySidLtmOff] mccSidLtmOff.Sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ltm_off = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", max = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", min = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v4, :cond_3

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    if-ne v9, v8, :cond_3

    if-gt v2, v3, :cond_3

    if-lt v2, v7, :cond_3

    .line 328
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "mccStr":Ljava/lang/String;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccFromConflictTableBySidLtmOff] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    .end local v1    # "i":I
    .end local v2    # "ltmoff":I
    .end local v3    # "max":I
    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v5    # "mccSidMapSize":I
    .end local v6    # "mccStr":Ljava/lang/String;
    .end local v7    # "min":I
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "sid":I
    :catch_1
    move-exception v0

    .line 304
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "ltmoff":I
    .restart local v3    # "max":I
    .restart local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .restart local v5    # "mccSidMapSize":I
    .restart local v7    # "min":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public static getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 343
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 345
    :cond_0
    const-string v6, "CDMA-PlusCodeHpcdTable"

    const-string v7, "[getMccFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    :goto_0
    return-object v3

    .line 351
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 356
    .local v4, "sid":I
    if-ltz v4, :cond_1

    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v6

    .line 363
    .local v5, "size":I
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 366
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v2, v6, v1

    .line 368
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mccIddNddSid.SidMin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mccIddNddSid.SidMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_3

    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_3

    .line 373
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "mccStr":Ljava/lang/String;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[queryMccFromConflictTableBySid] Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v1    # "i":I
    .end local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v3    # "mccStr":Ljava/lang/String;
    .end local v4    # "sid":I
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v4    # "sid":I
    .restart local v5    # "size":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 389
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [getMccMncFromSidMccMncListBySid] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_2

    .line 391
    :cond_0
    const-string v9, "CDMA-PlusCodeHpcdTable"

    const-string v10, "[getMccMncFromSidMccMncListBySid] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    :goto_0
    return-object v5

    .line 397
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 402
    .local v8, "sid":I
    if-ltz v8, :cond_1

    .line 406
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->getSidMccMncList()Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, "mSidMccMncList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cdma/SidMccMnc;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    const/4 v1, 0x0

    .line 409
    .local v1, "left":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 411
    .local v7, "right":I
    const/4 v4, 0x0

    .line 413
    .local v4, "mccMnc":I
    :goto_1
    if-gt v1, v7, :cond_5

    .line 414
    add-int v9, v1, v7

    div-int/lit8 v6, v9, 0x2

    .line 415
    .local v6, "mid":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    check-cast v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;

    .line 416
    .restart local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    if-ge v8, v9, :cond_3

    .line 417
    add-int/lit8 v7, v6, -0x1

    goto :goto_1

    .line 398
    .end local v1    # "left":I
    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    .end local v3    # "mSidMccMncList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cdma/SidMccMnc;>;"
    .end local v4    # "mccMnc":I
    .end local v6    # "mid":I
    .end local v7    # "right":I
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "left":I
    .restart local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    .restart local v3    # "mSidMccMncList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cdma/SidMccMnc;>;"
    .restart local v4    # "mccMnc":I
    .restart local v6    # "mid":I
    .restart local v7    # "right":I
    .restart local v8    # "sid":I
    :cond_3
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    if-le v8, v9, :cond_4

    .line 419
    add-int/lit8 v1, v6, 0x1

    goto :goto_1

    .line 421
    :cond_4
    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    .line 426
    .end local v6    # "mid":I
    :cond_5
    if-eqz v4, :cond_1

    .line 427
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "mccMncStr":Ljava/lang/String;
    const-string v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMccMncFromSidMccMncListBySid] MccMncStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCcFromMINSTableByLTM(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p2, "ltmOff"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " getCcFromMINSTableByLTM sLtm_off = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 215
    :cond_0
    const-string v12, "CDMA-PlusCodeHpcdTable"

    const-string v13, "[getCcFromMINSTableByLTM] please check the param "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .line 271
    :goto_0
    return-object v2

    .line 219
    :cond_1
    const/4 v2, 0x0

    .line 223
    .local v2, "findMcc":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 229
    .local v6, "ltmoff":I
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[getCcFromMINSTableByLTM]  ltm_off =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 232
    .local v3, "findOutMccSize":I
    const/4 v12, 0x1

    if-le v3, v12, :cond_4

    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    if-eqz v12, :cond_4

    .line 233
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v10, v12

    .line 235
    .local v10, "mccSidMapSize":I
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Conflict FindOutMccSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    const/4 v8, -0x1

    .line 240
    .local v8, "mcc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 242
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 248
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Conflict mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v10, :cond_2

    .line 250
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v9, v12, v5

    .line 251
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    if-ne v12, v8, :cond_3

    .line 253
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v7, v12, 0x2

    .line 254
    .local v7, "max":I
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v11, v12, 0x2

    .line 256
    .local v11, "min":I
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mccSidLtmOff LtmOffMin = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", LtmOffMax = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-gt v6, v7, :cond_3

    if-lt v6, v11, :cond_3

    .line 260
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "findMcc":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 240
    .end local v7    # "max":I
    .end local v11    # "min":I
    .restart local v2    # "findMcc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "findOutMccSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "ltmoff":I
    .end local v8    # "mcc":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v10    # "mccSidMapSize":I
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v12, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 243
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "findOutMccSize":I
    .restart local v4    # "i":I
    .restart local v6    # "ltmoff":I
    .restart local v8    # "mcc":I
    .restart local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .restart local v10    # "mccSidMapSize":I
    :catch_1
    move-exception v1

    .line 244
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v12, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 249
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 267
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "mcc":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v10    # "mccSidMapSize":I
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "findMcc":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 270
    .restart local v2    # "findMcc":Ljava/lang/String;
    :cond_5
    const-string v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "find one that match the ltm_off mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
