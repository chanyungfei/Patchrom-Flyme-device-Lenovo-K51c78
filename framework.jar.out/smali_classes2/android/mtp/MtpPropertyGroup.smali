.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final DEPTH_DATA_WHERE:Ljava/lang/String; = "_data"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_DEPTH_DATA_WHERE:Ljava/lang/String; = "_id=? AND _data"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private mPathHandelDepthQuery:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 89
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 90
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 92
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 94
    array-length v1, p5

    .line 95
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 100
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 104
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 105
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createProperty: code = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 217
    :goto_1
    return-object v2

    .line 115
    .end local v1    # "type":I
    :sswitch_0
    const-string v0, "storage_id"

    .line 116
    const/4 v1, 0x6

    .line 117
    .restart local v1    # "type":I
    goto :goto_0

    .line 119
    .end local v1    # "type":I
    :sswitch_1
    const-string v0, "format"

    .line 120
    const/4 v1, 0x4

    .line 121
    .restart local v1    # "type":I
    goto :goto_0

    .line 124
    .end local v1    # "type":I
    :sswitch_2
    const/4 v1, 0x4

    .line 125
    .restart local v1    # "type":I
    goto :goto_0

    .line 127
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "_size"

    .line 128
    const/16 v1, 0x8

    .line 129
    .restart local v1    # "type":I
    goto :goto_0

    .line 131
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "_data"

    .line 132
    const v1, 0xffff

    .line 133
    .restart local v1    # "type":I
    goto :goto_0

    .line 135
    .end local v1    # "type":I
    :sswitch_5
    const-string v0, "title"

    .line 136
    const v1, 0xffff

    .line 137
    .restart local v1    # "type":I
    goto :goto_0

    .line 139
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "date_modified"

    .line 140
    const v1, 0xffff

    .line 141
    .restart local v1    # "type":I
    goto :goto_0

    .line 143
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "date_added"

    .line 144
    const v1, 0xffff

    .line 145
    .restart local v1    # "type":I
    goto :goto_0

    .line 147
    .end local v1    # "type":I
    :sswitch_8
    const-string v0, "year"

    .line 148
    const v1, 0xffff

    .line 149
    .restart local v1    # "type":I
    goto :goto_0

    .line 151
    .end local v1    # "type":I
    :sswitch_9
    const-string v0, "parent"

    .line 152
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto :goto_0

    .line 156
    .end local v1    # "type":I
    :sswitch_a
    const-string v0, "storage_id"

    .line 157
    const/16 v1, 0xa

    .line 158
    .restart local v1    # "type":I
    goto :goto_0

    .line 160
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "duration"

    .line 161
    const/4 v1, 0x6

    .line 162
    .restart local v1    # "type":I
    goto :goto_0

    .line 164
    .end local v1    # "type":I
    :sswitch_c
    const-string v0, "track"

    .line 165
    const/4 v1, 0x4

    .line 166
    .restart local v1    # "type":I
    goto :goto_0

    .line 168
    .end local v1    # "type":I
    :sswitch_d
    const-string v0, "_display_name"

    .line 169
    const v1, 0xffff

    .line 170
    .restart local v1    # "type":I
    goto :goto_0

    .line 172
    .end local v1    # "type":I
    :sswitch_e
    const v1, 0xffff

    .line 173
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 175
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    .line 176
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 178
    .end local v1    # "type":I
    :sswitch_10
    const-string v0, "album_artist"

    .line 179
    const v1, 0xffff

    .line 180
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 183
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 184
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 186
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "composer"

    .line 187
    const v1, 0xffff

    .line 188
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 190
    .end local v1    # "type":I
    :sswitch_13
    const-string v0, "description"

    .line 191
    const v1, 0xffff

    .line 192
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 197
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x6

    .line 198
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 202
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x4

    .line 203
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 217
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde92 -> :sswitch_15
        0xde93 -> :sswitch_14
        0xde94 -> :sswitch_15
        0xde99 -> :sswitch_14
        0xde9a -> :sswitch_14
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private getFilePathWithHandle(I)Z
    .locals 11
    .param p1, "handle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 535
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePathWithHandle handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const-string v0, "_data"

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "format"

    aput-object v1, v3, v0

    .line 543
    .local v3, "PATH_SIZE_FORMAT_PROJECTION":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 545
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 547
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    .line 550
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePathWithHandle mPathHandelDepthQuery = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePathWithHandle mPathHandelDepthQuery.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    if-eqz v8, :cond_0

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_0
    :goto_0
    return v10

    .line 562
    :cond_1
    if-eqz v8, :cond_0

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 558
    :catch_0
    move-exception v9

    .line 559
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpPropertyGroup"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    if-eqz v8, :cond_0

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 562
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 307
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 308
    add-int/lit8 v2, v1, 0x1

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 312
    add-int/lit16 v0, v2, 0xff

    .line 314
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 243
    const/4 v8, 0x0

    .line 245
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 256
    if-eqz v8, :cond_0

    .line 257
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v8, :cond_0

    .line 257
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    :catch_0
    move-exception v9

    .line 256
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 257
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 256
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 257
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 263
    const/4 v8, 0x0

    .line 265
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 266
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 269
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 278
    if-eqz v8, :cond_0

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 272
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v8, :cond_0

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 275
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v8, :cond_2

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 278
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 285
    const/4 v8, 0x0

    .line 288
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 291
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v8, :cond_0

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    if-eqz v8, :cond_2

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 300
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    if-eqz v8, :cond_2

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 296
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 222
    const/4 v8, 0x0

    .line 225
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 228
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 236
    if-eqz v8, :cond_0

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v8, :cond_0

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 233
    :catch_0
    move-exception v9

    .line 236
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 236
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 33
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 318
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 322
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 527
    :cond_0
    :goto_0
    return-object v8

    .line 327
    :cond_1
    if-nez p2, :cond_6

    .line 328
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 330
    const/4 v6, 0x0

    .line 331
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 380
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_1
    const/16 v20, 0x0

    .line 383
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 385
    :cond_2
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", don\'t query if not necessary!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 387
    if-nez v20, :cond_b

    .line 388
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v20, :cond_0

    .line 527
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 334
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 336
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", select all object!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v6, 0x0

    .line 338
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 341
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 342
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 343
    const-string v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_1

    .line 346
    .end local v6    # "where":Ljava/lang/String;
    :cond_5
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_1

    .line 353
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 355
    const-string v6, "format=?"

    .line 356
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 359
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-nez p1, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 361
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", select all object with given format!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 p1, -0x1

    .line 364
    const-string v6, "format=?"

    .line 365
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 368
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 369
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 370
    const-string v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_1

    .line 372
    .end local v6    # "where":Ljava/lang/String;
    :cond_9
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_1

    .line 394
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_a
    if-gez p3, :cond_b

    if-lez p1, :cond_b

    .line 395
    :try_start_1
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth < 0 && handle > 0!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 397
    if-nez v20, :cond_b

    .line 398
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    if-eqz v20, :cond_0

    .line 527
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 403
    :cond_b
    if-nez v20, :cond_d

    const/16 v22, 0x1

    .line 404
    .local v22, "count":I
    :goto_2
    :try_start_2
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 408
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    .local v27, "objectIndex":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    .line 409
    if-eqz v20, :cond_c

    .line 410
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 415
    :cond_c
    const/16 v29, 0x0

    .local v29, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_16

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v28, v2, v29

    .line 417
    .local v28, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v28

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 418
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 421
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    .line 509
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_14

    .line 510
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 415
    :goto_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 403
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_2

    .line 424
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_0
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 523
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_0
    move-exception v24

    .line 524
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    if-eqz v20, :cond_0

    .line 527
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 428
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_1
    :try_start_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 429
    .local v31, "value":Ljava/lang/String;
    if-eqz v31, :cond_f

    .line 430
    invoke-static/range {v31 .. v31}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 526
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    .end local v31    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_e

    .line 527
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 432
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    .restart local v31    # "value":Ljava/lang/String;
    :cond_f
    const/16 v2, 0x2009

    :try_start_5
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 437
    .end local v31    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 439
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_10

    .line 440
    const-string v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 443
    :cond_10
    if-nez v26, :cond_11

    .line 444
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 445
    if-eqz v26, :cond_11

    .line 446
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 449
    :cond_11
    if-eqz v26, :cond_12

    .line 450
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 452
    :cond_12
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 459
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 460
    .local v30, "seconds":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", c.getInt(column) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 466
    .end local v30    # "seconds":I
    :sswitch_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 467
    .local v32, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 468
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 472
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v32    # "year":I
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 473
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 474
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 475
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 478
    .end local v12    # "puid":J
    :sswitch_6
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 482
    :sswitch_7
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 486
    :sswitch_8
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 490
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    .line 491
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_13

    .line 492
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 494
    :cond_13
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 501
    .end local v25    # "genre":Ljava/lang/String;
    :sswitch_a
    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 506
    :sswitch_b
    const/16 v17, 0x4

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 511
    :cond_14
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_15

    .line 512
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 514
    :cond_15
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 408
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_16
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 526
    .end local v29    # "propertyIndex":I
    :cond_17
    if-eqz v20, :cond_0

    .line 527
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc4e -> :sswitch_3
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
        0xde92 -> :sswitch_b
        0xde93 -> :sswitch_a
        0xde94 -> :sswitch_b
        0xde99 -> :sswitch_a
        0xde9a -> :sswitch_a
    .end sparse-switch
.end method
