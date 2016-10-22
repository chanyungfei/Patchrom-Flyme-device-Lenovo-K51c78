.class public Lcom/gsma/services/addon/GsmaUtil;
.super Ljava/lang/Object;
.source "GsmaUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GsmaUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrefixShortString(Ljava/lang/Short;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/Short;

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "resultString":Ljava/lang/String;
    return-object v0
.end method

.method public static addressToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 172
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 174
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object v1
.end method

.method public static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v3, "GsmaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addressToReverseBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 155
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 157
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object v1
.end method

.method public static byteArrayToint([B)I
    .locals 5
    .param p0, "btyeCount"    # [B

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "result":I
    array-length v2, p0

    .line 131
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "j":B
    :goto_0
    if-ge v0, v2, :cond_0

    .line 133
    mul-int/lit8 v4, v0, 0x8

    int-to-byte v1, v4

    .line 135
    .local v1, "k":B
    aget-byte v4, p0, v0

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 131
    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    goto :goto_0

    .line 139
    .end local v1    # "k":B
    :cond_0
    return v3
.end method

.method public static byteToUnsignedInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 201
    and-int/lit16 v0, p0, 0xff

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v9, 0x0

    .line 57
    if-nez p0, :cond_1

    .line 58
    const-string v5, ""

    .line 67
    :cond_0
    :goto_0
    return-object v5

    .line 59
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v4, "sb":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-byte v1, v0, v2

    .line 61
    .local v1, "b":B
    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .end local v1    # "b":B
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getFilePathByContentUri(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePathByContentUri(), uri.toString() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "                           uri.getPath(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object v10, p2

    .line 326
    .local v10, "filePathUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 333
    .local v6, "column_index":I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "curString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " return cursor.getString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePathUri.getPath() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-eqz v8, :cond_0

    .line 344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 351
    .end local v6    # "column_index":I
    .end local v7    # "curString":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v7

    .line 343
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v8, :cond_2

    .line 344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 348
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v0, "getFilePathByContentUri doesn\'t work, try direct getPath"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return uri.getPath(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 339
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 340
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "exception..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    if-eqz v8, :cond_2

    .line 344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 343
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getFilePathByString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " convertToFilePath() input:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v1, "content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 361
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, p1, v0}, Lcom/gsma/services/addon/GsmaUtil;->getFilePathByContentUri(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 368
    .end local v0    # "uri":Landroid/net/Uri;
    .end local p2    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 363
    .restart local p2    # "input":Ljava/lang/String;
    :cond_1
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " return  substring(7):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getMid([BII)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 51
    new-array v0, p2, [B

    .line 52
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    return-object v0
.end method

.method public static intToByteCountArray(IB)[B
    .locals 5
    .param p0, "i"    # I
    .param p1, "btyeCount"    # B

    .prologue
    .line 106
    const/4 v3, 0x4

    if-le p1, v3, :cond_1

    .line 107
    const/4 v2, 0x0

    .line 121
    :cond_0
    return-object v2

    .line 109
    :cond_1
    new-array v2, p1, [B

    .line 111
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "j":B
    :goto_0
    if-ge v0, p1, :cond_0

    .line 113
    mul-int/lit8 v3, v0, 0x8

    int-to-byte v1, v3

    .line 114
    .local v1, "k":B
    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v0

    shr-int v4, p0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 111
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0
.end method

.method public static ipAddressToReverseBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "ipAddressParts":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 193
    .local v1, "ipAddressBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 195
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-object v1
.end method

.method public static ipBytesArrayToReverseString([B)Ljava/lang/String;
    .locals 7
    .param p0, "ByteArray"    # [B

    .prologue
    .line 283
    const/4 v2, 0x3

    .line 285
    .local v2, "separateLength":I
    array-length v3, p0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 286
    const-string v3, "GsmaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IP Address length not match :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 292
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_1
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/gsma/services/addon/GsmaUtil;->byteToUnsignedInt(B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static macBytesArrayToReverseString([B)Ljava/lang/String;
    .locals 8
    .param p0, "ByteArray"    # [B

    .prologue
    .line 212
    const/4 v3, 0x5

    .line 214
    .local v3, "separateLength":I
    array-length v4, p0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 215
    const-string v4, "GsmaUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Mac Address length not match :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 221
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v0

    aget-byte v7, p0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "resultString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static macBytesArrayToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "ByteArray"    # [B

    .prologue
    .line 238
    const/4 v3, 0x5

    .line 240
    .local v3, "separateLength":I
    array-length v4, p0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 241
    const-string v4, "GsmaUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Mac Address length not match :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 247
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, p0, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "resultString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static mergeBytes([B[B)[B
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    .line 41
    array-length v3, p0

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 42
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 43
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 44
    aget-byte v3, p0, v1

    aput-byte v3, v0, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 46
    add-int v3, v2, v1

    aget-byte v4, p1, v2

    aput-byte v4, v0, v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-object v0
.end method

.method public static printNdef(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 4
    .param p0, "PrintNdef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 71
    const-string v1, ""

    .line 73
    .local v1, "ResultStr":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 74
    const-string v2, " null"

    .line 81
    :goto_0
    return-object v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 78
    .local v0, "PrintNdefByteArray":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Array::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/gsma/services/addon/GsmaUtil;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 81
    goto :goto_0
.end method

.method public static printNdef([B)Ljava/lang/String;
    .locals 3
    .param p0, "NdefArray"    # [B

    .prologue
    .line 85
    const-string v0, ""

    .line 87
    .local v0, "ResultStr":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 88
    const-string v1, " null"

    .line 94
    :goto_0
    return-object v1

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Array::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/gsma/services/addon/GsmaUtil;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 94
    goto :goto_0
.end method

.method public static splitPrefixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "targetString"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "targetStringParts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 312
    const-string v2, "GsmaUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " splitPrefixString Error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 316
    .local v0, "outputString":Ljava/lang/String;
    return-object v0
.end method
