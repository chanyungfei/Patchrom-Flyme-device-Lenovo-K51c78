.class public Lcom/lenovo/settings/provider/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# static fields
.field private static final SP_DEFAULT_HEAD_MAPPING_LOADED:Ljava/lang/String; = "default_header_mapping_loaded"

.field private static final SP_DEFAULT_PLUGIN_LOADED:Ljava/lang/String; = "plugin_item_loaded"

.field private static final TAG:Ljava/lang/String; = "DBUtils"

.field private static final TAG_HEAD_MAPPING:Ljava/lang/String; = "headers-mapping"

.field public static sIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/settings/provider/DBUtils;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPluginFromPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadSettingItemsFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 315
    .local v0, "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-static {p0, v0}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->bulkInsert(Landroid/content/Context;Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 218
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 222
    :cond_1
    if-eq v1, v3, :cond_2

    .line 223
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 228
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_3
    return-void
.end method

.method public static convertBundleToUri(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v3, "uri":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_b

    .line 236
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 238
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    const/16 v0, 0x53

    .line 250
    .local v0, "entryType":C
    :goto_1
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    .end local v0    # "entryType":C
    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    const/16 v0, 0x42

    goto :goto_1

    :cond_2
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_3

    const/16 v0, 0x62

    goto :goto_1

    :cond_3
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_4

    const/16 v0, 0x63

    goto :goto_1

    :cond_4
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_5

    const/16 v0, 0x64

    goto :goto_1

    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    const/16 v0, 0x66

    goto :goto_1

    :cond_6
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    const/16 v0, 0x69

    goto :goto_1

    :cond_7
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_8

    const/16 v0, 0x6c

    goto :goto_1

    :cond_8
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_9

    const/16 v0, 0x73

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a
    const-string v5, "end"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static convertUriToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    const/4 v0, 0x0

    .line 310
    :cond_0
    return-object v0

    .line 269
    :cond_1
    const/4 v2, 0x0

    .line 271
    .local v2, "i":I
    const/4 v0, 0x0

    .line 272
    .local v0, "b":Landroid/os/Bundle;
    :goto_0
    const-string v6, "end"

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    const/16 v6, 0x3d

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 274
    .local v1, "eq":I
    if-gez v1, :cond_2

    .line 275
    add-int/lit8 v1, v2, -0x1

    .line 277
    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 278
    .local v4, "semi":I
    if-ge v1, v4, :cond_4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 282
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v6, "S."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 286
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_2
    add-int/lit8 v2, v4, 0x1

    .line 309
    goto :goto_0

    .line 278
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 287
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    const-string v6, "B."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 288
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 289
    :cond_6
    const-string v6, "b."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 290
    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2

    .line 291
    :cond_7
    const-string v6, "c."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 292
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_2

    .line 293
    :cond_8
    const-string v6, "d."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 294
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 295
    :cond_9
    const-string v6, "f."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 296
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 297
    :cond_a
    const-string v6, "i."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 298
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 299
    :cond_b
    const-string v6, "l."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 300
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 301
    :cond_c
    const-string v6, "s."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 302
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_2

    .line 304
    :cond_d
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "unknown EXTRA type"

    invoke-direct {v6, p0, v7, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6
.end method

.method public static initAllItems(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/lenovo/settings/provider/DBUtils$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/provider/DBUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/settings/provider/DBUtils$1;->start()V

    .line 73
    return-void
.end method

.method protected static loadDefaultHeaderMappings(Landroid/content/Context;I)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origResourceId"    # I

    .prologue
    .line 122
    const/4 v10, 0x0

    .line 123
    .local v10, "result":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "headerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move/from16 v9, p1

    .line 126
    .local v9, "resId":I
    if-nez v9, :cond_0

    .line 127
    const v9, 0x7f06000f

    .line 130
    :cond_0
    const/4 v6, 0x0

    .line 132
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 133
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 134
    .local v1, "attrs":Landroid/util/AttributeSet;
    const-string v13, "headers-mapping"

    invoke-static {v6, v13}, Lcom/lenovo/settings/provider/DBUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 137
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 138
    .local v5, "outerDepth":I
    const/4 v7, 0x1

    .line 140
    .local v7, "pos":I
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_3

    const/4 v13, 0x3

    if-ne v11, v13, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_3

    .line 142
    :cond_2
    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    .line 146
    sget-object v13, Lcom/flyme/deviceoriginalsettings/R$styleable;->HeaderMapping:[I

    invoke-virtual {p0, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 148
    .local v4, "id":I
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "prefKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 154
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "_headerId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v13, "_prefKey"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v13, "_pos"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 163
    goto :goto_0

    .line 165
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "id":I
    .end local v8    # "prefKey":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-static {p0, v3}, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->bulkInsert(Landroid/content/Context;Ljava/util/List;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 173
    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 178
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "outerDepth":I
    .end local v7    # "pos":I
    .end local v11    # "type":I
    :cond_4
    :goto_1
    return v10

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v13, "DBUtils"

    const-string v14, "Got exception parsing headermapping."

    invoke-static {v13, v14, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 168
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v13, "DBUtils"

    const-string v14, "Got exception parsing headermapping."

    invoke-static {v13, v14, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v13, "DBUtils"

    const-string v14, "Got exception parsing headermapping."

    invoke-static {v13, v14, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 173
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_5

    .line 174
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v13
.end method

.method public static final loadDefaultHeaderMappingsIfNecessary(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origResourceId"    # I

    .prologue
    .line 102
    const-string v1, "default_header_mapping_loaded"

    invoke-static {p0, v1}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->getConfiguration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "headerMappingLoaded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 115
    :cond_1
    invoke-static {p0, p1}, Lcom/lenovo/settings/provider/DBUtils;->loadDefaultHeaderMappings(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    const-string v1, "default_header_mapping_loaded"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->saveConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method protected static loadPluginItems(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadAllSettingItems(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v1

    .line 207
    .local v1, "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-static {p0, v1}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->bulkInsert(Landroid/content/Context;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    .end local v1    # "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    :goto_0
    return v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DBUtils"

    const-string v3, "Got exception saving plugin infos."

    invoke-static {v2, v3, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final loadPluginItemsIfNecessary(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const-string v1, "plugin_item_loaded"

    invoke-static {p0, v1}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->getConfiguration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "pluginLoaded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->loadPluginItems(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->releaseHeaderPluginItems()V

    .line 197
    const-string v1, "plugin_item_loaded"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->saveConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static removePluginByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->removeByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updatePluginByPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 323
    invoke-static {p0, p1, p2}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->setItemsVisibleByPackage(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
