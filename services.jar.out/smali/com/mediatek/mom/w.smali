.class Lcom/mediatek/mom/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aw:Z


# instance fields
.field private aA:Landroid/os/IUserManager;

.field private aB:Lcom/mediatek/mom/x;

.field private aC:Z

.field private aD:Z

.field private ax:Landroid/util/AtomicFile;

.field private ay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private az:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/IPackageManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/w;->aw:Z

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mom/x;Landroid/content/Context;Landroid/os/Handler;Landroid/os/IUserManager;Landroid/content/pm/IPackageManager;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/mediatek/mom/w;->mContext:Landroid/content/Context;

    .line 84
    iput-object v1, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Lcom/mediatek/mom/w;->aA:Landroid/os/IUserManager;

    .line 92
    iput-object v1, p0, Lcom/mediatek/mom/w;->g:Landroid/content/pm/IPackageManager;

    .line 93
    iput-object v1, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    .line 94
    iput-boolean v2, p0, Lcom/mediatek/mom/w;->aC:Z

    .line 95
    iput-object v1, p0, Lcom/mediatek/mom/w;->mHandler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lcom/mediatek/mom/w;->aD:Z

    .line 100
    iput-object p1, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    .line 101
    invoke-virtual {p1}, Lcom/mediatek/mom/x;->H()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootreceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    .line 106
    iput-object p2, p0, Lcom/mediatek/mom/w;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/mediatek/mom/w;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p4, p0, Lcom/mediatek/mom/w;->aA:Landroid/os/IUserManager;

    .line 109
    iput-object p5, p0, Lcom/mediatek/mom/w;->g:Landroid/content/pm/IPackageManager;

    .line 110
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReceiverRecordHelper("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private D()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-static {}, Lcom/mediatek/common/mom/BootReceiverPolicy;->getBootPolicy()Ljava/util/List;

    move-result-object v2

    .line 238
    const/4 v1, 0x1

    .line 241
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should NOT remove basic boot policy!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    const-string v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/mom/w;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/mom/w$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mom/w$1;-><init>(Lcom/mediatek/mom/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method

.method private F()V
    .locals 14

    .prologue
    .line 442
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeReceiverList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 444
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/mom/w;->aD:Z

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to write with identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    return-void

    .line 451
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 456
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 457
    invoke-direct {p0}, Lcom/mediatek/mom/w;->r()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 460
    :try_start_3
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 461
    const-string v0, "utf-8"

    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 463
    const/4 v0, 0x0

    const-string v1, "boot-receiver"

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 466
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    .line 467
    invoke-direct {p0, v9}, Lcom/mediatek/mom/w;->N(I)Ljava/util/List;

    move-result-object v10

    .line 468
    if-eqz v10, :cond_2

    .line 469
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 470
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 472
    iget-boolean v11, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 473
    const/4 v11, 0x0

    const-string v12, "pkg"

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const/4 v11, 0x0

    const-string v12, "u"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const/4 v11, 0x0

    const-string v12, "n"

    iget-object v13, v0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-interface {v8, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    const/4 v11, 0x0

    const-string v12, "e"

    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v11, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const/4 v0, 0x0

    const-string v11, "pkg"

    invoke-interface {v8, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 469
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    :try_start_4
    const-string v1, "ReceiverRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v3

    goto/16 :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 465
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 482
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    const-string v1, "boot-receiver"

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 484
    iget-object v0, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 489
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 485
    :catch_1
    move-exception v0

    .line 486
    :try_start_7
    const-string v1, "ReceiverRecordHelper"

    const-string v2, "Failed to write state, restoring backup."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    iget-object v0, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private G()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x2

    const/4 v11, 0x1

    .line 495
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readReceiverList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 507
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 508
    const/4 v0, 0x0

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 511
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v5, :cond_1

    if-ne v0, v11, :cond_0

    .line 515
    :cond_1
    if-eq v0, v5, :cond_2

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "no start tag found"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 553
    :catch_0
    move-exception v0

    .line 554
    :try_start_3
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 567
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 570
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 575
    :goto_0
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 576
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 577
    :goto_1
    return-void

    .line 501
    :catch_1
    move-exception v0

    .line 502
    :try_start_8
    const-string v0, "ReceiverRecordHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v1

    goto :goto_1

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 519
    :cond_2
    :try_start_a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 521
    :cond_3
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v11, :cond_8

    if-ne v0, v12, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_8

    .line 522
    :cond_4
    if-eq v0, v12, :cond_3

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    .line 525
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 526
    const-string v6, "pkg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    const/4 v0, 0x0

    const-string v6, "n"

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 528
    const/4 v0, 0x0

    const-string v7, "u"

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    const/4 v7, 0x0

    const-string v8, "e"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 530
    const-string v8, "ReceiverRecordHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at User("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v8, 0x0

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/mediatek/mom/w;->a(ILjava/lang/String;ZZ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 532
    const-string v7, "ReceiverRecordHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a pending settings for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v7, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    monitor-enter v7
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 535
    :try_start_b
    iget-object v8, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 536
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v9, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_5
    iget-object v8, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 540
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 541
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_6
    monitor-exit v7

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 555
    :catch_2
    move-exception v0

    .line 556
    :try_start_d
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 567
    :try_start_e
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 570
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_3
    move-exception v0

    .line 572
    :try_start_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 547
    :cond_7
    :try_start_12
    const-string v0, "ReceiverRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <boot-receiver>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto/16 :goto_2

    .line 557
    :catch_4
    move-exception v0

    .line 558
    :try_start_13
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 567
    :try_start_14
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 570
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_5
    move-exception v0

    .line 572
    :try_start_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 570
    :cond_8
    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_6
    move-exception v0

    .line 572
    :try_start_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :catch_7
    move-exception v0

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 559
    :catch_8
    move-exception v0

    .line 560
    :try_start_19
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 567
    :try_start_1a
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 570
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_9
    move-exception v0

    .line 572
    :try_start_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 561
    :catch_a
    move-exception v0

    .line 562
    :try_start_1d
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 567
    :try_start_1e
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 570
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_b
    move-exception v0

    .line 572
    :try_start_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 563
    :catch_c
    move-exception v0

    .line 564
    :try_start_21
    const-string v4, "ReceiverRecordHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 567
    :try_start_22
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 570
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    goto/16 :goto_0

    .line 571
    :catch_d
    move-exception v0

    .line 572
    :try_start_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :catchall_3
    move-exception v0

    .line 567
    iget-object v4, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 570
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 572
    :try_start_26
    throw v0

    .line 571
    :catch_e
    move-exception v0

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2
.end method

.method private K(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-static {}, Lcom/mediatek/common/mom/BootReceiverPolicy;->getBootPolicy()Ljava/util/List;

    move-result-object v5

    move v1, v2

    .line 210
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 211
    new-instance v3, Landroid/content/Intent;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->g:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/mediatek/mom/w;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-interface {v0, v3, v6, v7, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 216
    if-eqz v6, :cond_3

    move v3, v2

    .line 217
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 218
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 219
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 220
    :goto_2
    sget-boolean v7, Lcom/mediatek/mom/w;->aw:Z

    if-nez v7, :cond_2

    invoke-static {p1, v0}, Lcom/mediatek/mom/p;->b(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 223
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 224
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 228
    :catch_0
    move-exception v0

    .line 210
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_4
    return-object v4
.end method

.method private M(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    .line 280
    :goto_0
    return-object v0

    .line 279
    :cond_0
    monitor-exit v1

    .line 280
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private N(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v2

    .line 583
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->M(I)Ljava/util/Map;

    move-result-object v3

    .line 584
    if-eqz v3, :cond_0

    .line 585
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 586
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    new-instance v5, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-direct {v5, v0}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Lcom/mediatek/common/mom/ReceiverRecord;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    return-object v1
.end method

.method static synthetic a(Lcom/mediatek/mom/w;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/mom/w;->F()V

    return-void
.end method

.method private a(ILjava/lang/String;ZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 347
    const/4 v0, 0x0

    .line 349
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v2

    .line 350
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->M(I)Ljava/util/Map;

    move-result-object v3

    .line 351
    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 353
    iput-boolean p3, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    move v0, v1

    .line 356
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-ne v0, v1, :cond_1

    if-ne p4, v1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/mediatek/mom/w;->E()V

    .line 360
    :cond_1
    return v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(IZ)V
    .locals 8

    .prologue
    .line 150
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initReceiverCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->K(I)Ljava/util/List;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v4, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v4

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 158
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v5, Lcom/mediatek/common/mom/ReceiverRecord;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v5, "ReceiverRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initReceiverCache() packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_0
    if-eqz p2, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/mediatek/mom/w;->G()V

    .line 165
    :cond_1
    monitor-exit v4

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l(ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 409
    iget-object v1, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "ReceiverRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found a pending setting for pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    monitor-exit v1

    .line 419
    :goto_0
    return v0

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->az:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/w;->aA:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 599
    :catch_0
    move-exception v1

    .line 600
    const-string v2, "ReceiverRecordHelper"

    const-string v3, "getUsers() failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public C()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/mediatek/mom/w;->D()V

    .line 117
    invoke-direct {p0}, Lcom/mediatek/mom/w;->r()Ljava/util/List;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v3

    move v1, v0

    .line 119
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 120
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/mediatek/mom/w;->e(IZ)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mom/w;->G()V

    .line 124
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/w;->aC:Z

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public H(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/mediatek/mom/w;->aC:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->N(I)Ljava/util/List;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const-string v0, "ReceiverRecordHelper"

    const-string v1, "getBootReceiverList() not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I(I)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/w;->e(IZ)V

    .line 130
    return-void
.end method

.method public J(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "ReceiverRecordHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninitReceiverCache("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v4}, Lcom/mediatek/mom/x;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 139
    const-string v2, "ReceiverRecordHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninitReceiverCache("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v4}, Lcom/mediatek/mom/x;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") uninited"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/mediatek/mom/w;->ax:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/mom/w;->aD:Z

    .line 142
    monitor-exit v1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public L(I)V
    .locals 3

    .prologue
    .line 267
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeReceiverCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/mediatek/mom/w;->E()V

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(ILjava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/mediatek/mom/w;->aC:Z

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/w;->a(ILjava/lang/String;ZZ)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    .line 341
    :cond_0
    const-string v0, "ReceiverRecordHelper"

    const-string v1, "setReceiverDataEnabled() not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 373
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReceiverRecord("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->M(I)Ljava/util/Map;

    move-result-object v0

    .line 379
    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    iget-object v2, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_0
    new-instance v2, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-direct {v2, p2, p3}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(IZ)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReceiverCache("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v4}, Lcom/mediatek/mom/x;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") at User("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v6

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->N(I)Ljava/util/List;

    move-result-object v7

    .line 174
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->K(I)Ljava/util/List;

    move-result-object v8

    move v5, v3

    .line 176
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 179
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v4, v3

    .line 180
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 181
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 182
    if-eqz v1, :cond_0

    iget-object v9, v1, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    iget-boolean v1, v1, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    move v4, v1

    move v1, v2

    .line 188
    :goto_2
    if-ne v1, v2, :cond_1

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v4, v1}, Lcom/mediatek/mom/w;->a(ILjava/lang/String;ZZ)Z

    .line 176
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 180
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 191
    :cond_1
    if-eqz p2, :cond_3

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/w;->l(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/mom/w;->c(ILjava/lang/String;Z)V

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/w;->m(ILjava/lang/String;)V

    goto :goto_3

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/w;->j(ILjava/lang/String;)V

    goto :goto_3

    .line 199
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/w;->j(ILjava/lang/String;)V

    goto :goto_3

    .line 203
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    return-void

    :cond_5
    move v1, v3

    move v4, v2

    goto :goto_2
.end method

.method public g(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-boolean v0, p0, Lcom/mediatek/mom/w;->aC:Z

    if-eqz v0, :cond_3

    .line 323
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    .line 324
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 325
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    iget-object v3, v0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/mediatek/mom/w;->a(ILjava/lang/String;ZZ)Z

    .line 324
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/mom/w;->E()V

    .line 335
    :cond_2
    :goto_1
    return-void

    .line 333
    :cond_3
    const-string v0, "ReceiverRecordHelper"

    const-string v1, "setReceiverDataEnabledBatch() not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public g(ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 257
    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->K(I)Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 261
    const-string v1, "ReceiverRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchBootPolicy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v3}, Lcom/mediatek/mom/x;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v0
.end method

.method public h(ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/mediatek/mom/w;->aC:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->M(I)Ljava/util/Map;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    monitor-exit v1

    .line 318
    :goto_0
    return v0

    .line 313
    :cond_0
    monitor-exit v1

    .line 318
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_1
    const-string v0, "ReceiverRecordHelper"

    const-string v1, "getReceiverDataEnabled() not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/mom/w;->c(ILjava/lang/String;Z)V

    .line 365
    invoke-direct {p0}, Lcom/mediatek/mom/w;->E()V

    .line 366
    return-void
.end method

.method public j(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/mom/w;->c(ILjava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public k(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 388
    const-string v0, "ReceiverRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeReceiverRecordWrite("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/w;->aB:Lcom/mediatek/mom/x;

    invoke-virtual {v2}, Lcom/mediatek/mom/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    monitor-enter v1

    .line 392
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/w;->M(I)Ljava/util/Map;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_0

    .line 394
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 396
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Lcom/mediatek/mom/w;->E()V

    .line 400
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/mediatek/mom/w;->ay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    monitor-exit v1

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
