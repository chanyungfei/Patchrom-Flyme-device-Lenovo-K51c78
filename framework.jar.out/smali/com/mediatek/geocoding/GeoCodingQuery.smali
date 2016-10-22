.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static final NumberHeadWithIDToByteFilePath:Ljava/lang/String; = "/system/etc/NumberHeadWithIDToByte"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mIsDBReady:Z

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 66
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 72
    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 75
    iput-object p1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->openNumberHeadWithIDToByteFile()V

    .line 78
    return-void
.end method

.method private binarySearchNumberHead(I)I
    .locals 5
    .param p1, "target"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "low":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->limit()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 234
    .local v3, "upper":I
    :goto_0
    if-gt v0, v3, :cond_1

    .line 235
    add-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    .line 236
    .local v1, "mid":I
    iget-object v4, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    div-int/lit16 v2, v4, 0x3e8

    .line 237
    .local v2, "nNumberHead":I
    if-ge v2, p1, :cond_0

    .line 238
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    if-le v2, p1, :cond_2

    .line 240
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 245
    .end local v1    # "mid":I
    .end local v2    # "nNumberHead":I
    :cond_1
    const/4 v1, -0x1

    :cond_2
    return v1
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 209
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to close GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 92
    const-string v0, "GeoCodingQuery"

    const-string v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 186
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/sql/SQLException;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method private openNumberHeadWithIDToByteFile()V
    .locals 9

    .prologue
    .line 213
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/system/etc/NumberHeadWithIDToByte"

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 214
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 215
    .local v4, "nCount":J
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 216
    .local v8, "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v8}, Ljava/nio/MappedByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v4    # "nCount":J
    .end local v8    # "mappedByteBuffer":Ljava/nio/MappedByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "GeoCodingQuery"

    const-string v1, "Failed to open NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v7

    .line 224
    .local v7, "e1":Ljava/io/IOException;
    const-string v0, "GeoCodingQuery"

    const-string v1, "Failed to close NumberHead file!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v14, ""

    .line 112
    .local v14, "returnValue":Ljava/lang/String;
    const/16 v11, 0xb

    .line 113
    .local v11, "numberValidLength":I
    const/4 v9, 0x4

    .line 114
    .local v9, "numberTailLength":I
    const-string v3, ""

    .line 116
    .local v3, "countryIso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 117
    const-string v18, "GeoCodingQuery"

    const-string v19, "Database is not opened !"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 178
    .end local v14    # "returnValue":Ljava/lang/String;
    .local v15, "returnValue":Ljava/lang/String;
    :goto_0
    return-object v15

    .line 121
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_0
    const-string v18, "GeoCodingQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "number = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v18, " "

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "queryNumber":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    .line 125
    .local v10, "numberTotalLength":I
    if-ge v10, v11, :cond_1

    .line 126
    const-string v18, "GeoCodingQuery"

    const-string v19, "The length of dial number is less than 11 !"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 127
    .end local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_1
    const-string v18, "+"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "00"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 132
    :cond_2
    const-string v18, "+86"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "0086"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 133
    const-string v18, "GeoCodingQuery"

    const-string v19, "The dial number is a international number and didn\'t start with +86!"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 134
    .end local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "country_detector"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/CountryDetector;

    .line 139
    .local v5, "detector":Landroid/location/CountryDetector;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 140
    invoke-virtual {v5}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 143
    :goto_1
    const-string v18, "cn"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 144
    const-string v18, "GeoCodingQuery"

    const-string v19, "The dial number is not at CN!"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 145
    .end local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 142
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 149
    .end local v5    # "detector":Landroid/location/CountryDetector;
    :cond_5
    sub-int v17, v10, v11

    .line 150
    .local v17, "startIndex":I
    sub-int v6, v10, v9

    .line 151
    .local v6, "endIndex":I
    move/from16 v0, v17

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 152
    const-string v18, "GeoCodingQuery"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Query number = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v13, 0x7

    .line 155
    .local v13, "queryNumberLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v13, :cond_8

    .line 157
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x39

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    :cond_6
    move-object v15, v14

    .line 158
    .end local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 155
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 162
    :cond_8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/geocoding/GeoCodingQuery;->binarySearchNumberHead(I)I

    move-result v8

    .line 163
    .local v8, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v8, :cond_b

    .line 164
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Select city_name from city where _id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIntBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 165
    .local v16, "sqlCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 167
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_9

    .line 168
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    :cond_9
    if-eqz v4, :cond_a

    .line 173
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v16    # "sqlCmd":Ljava/lang/String;
    :cond_a
    :goto_3
    move-object v15, v14

    .line 178
    .end local v14    # "returnValue":Ljava/lang/String;
    .restart local v15    # "returnValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 176
    .end local v15    # "returnValue":Ljava/lang/String;
    .restart local v14    # "returnValue":Ljava/lang/String;
    :cond_b
    const-string v18, "GeoCodingQuery"

    const-string v19, "The query number is not found in \'NumberHeadWithIDToByte\' database!"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
