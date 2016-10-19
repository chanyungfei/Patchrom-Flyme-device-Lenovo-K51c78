.class public Lcom/mediatek/recovery/RecoveryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field TAG:Ljava/lang/String;

.field public mModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/recovery/Module;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "RecoveryParser"

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "recovery.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->z:Ljava/io/File;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    if-eqz p2, :cond_3

    .line 110
    const-string v0, "."

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 119
    :cond_3
    return-object p2
.end method

.method private a(Lcom/mediatek/recovery/Module;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 169
    new-instance v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    invoke-direct {v0}, Lcom/mediatek/recovery/RegisteredRecoveryFile;-><init>()V

    .line 171
    const-string v1, "name"

    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    .line 172
    iget-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has a file tag without name attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p1, Lcom/mediatek/recovery/Module;->packageName:Ljava/lang/String;

    const-string v2, "class"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/recovery/RecoveryParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    .line 180
    const-string v1, "backup"

    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-nez v1, :cond_5

    .line 182
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    .line 196
    :cond_1
    :goto_1
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 198
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/BackupServant;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-static {v3, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 206
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    .line 209
    :cond_3
    const-string v1, "default"

    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    if-nez v1, :cond_9

    .line 211
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    if-eqz v1, :cond_8

    .line 212
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    .line 233
    :cond_4
    :goto_2
    iget-object v1, p1, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_5
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto :goto_1

    .line 187
    :cond_6
    const-string v2, "boot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    iget v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    .line 190
    :cond_7
    const-string v2, "demand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto :goto_1

    .line 214
    :cond_8
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_2

    .line 217
    :cond_9
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 218
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_2

    .line 219
    :cond_a
    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 220
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_2

    .line 221
    :cond_b
    const-string v2, "recover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    if-eqz v1, :cond_c

    .line 223
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_2

    .line 225
    :cond_c
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    .line 226
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register recovery file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without backup flag try use RESTORE action!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Change to default action NONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 127
    const-string v0, "name"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have name attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "package"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-nez v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have packageName attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    const-string v2, "exceptionParserClass"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-nez v2, :cond_2

    .line 144
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have exceptionParserClass attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    new-instance v3, Lcom/mediatek/recovery/Module;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/recovery/RecoveryParser;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/recovery/Module;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 155
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    if-ne v2, v5, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 156
    :cond_4
    if-eq v2, v5, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-direct {p0, v3, p1}, Lcom/mediatek/recovery/RecoveryParser;->a(Lcom/mediatek/recovery/Module;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public read()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 66
    .line 69
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryParser;->z:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 71
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    .line 77
    :cond_1
    if-eq v2, v3, :cond_2

    .line 78
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    const-string v2, "No start tag found in reocvery.xml, stop paring"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 82
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 84
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v5, :cond_5

    if-ne v3, v6, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 85
    :cond_4
    if-eq v3, v6, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 88
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v4, "module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryParser;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    const-string v1, "Recovery.xml doesn\'t exist!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing reocvery.xml, line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catch_2
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 103
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while reading reocvery.xml, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
