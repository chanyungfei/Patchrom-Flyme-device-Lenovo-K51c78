.class Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;
.super Ljava/lang/Object;
.source "ConfigUtil.java"

# interfaces
.implements Lcom/gsma/services/addon/ConfigUtil$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/addon/ConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigFileParser"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigFileParser"


# instance fields
.field private mKeyValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRules:Lcom/gsma/services/addon/ConfigUtil$IRules;


# direct methods
.method public constructor <init>(Lcom/gsma/services/addon/ConfigUtil$IRules;)V
    .locals 1
    .param p1, "rules"    # Lcom/gsma/services/addon/ConfigUtil$IRules;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mKeyValueMap:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mRules:Lcom/gsma/services/addon/ConfigUtil$IRules;

    .line 80
    return-void
.end method

.method private debugPrint(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "ConfigFileParser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mKeyValueMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 146
    .local v1, "key":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mKeyValueMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I[I)Z
    .locals 5
    .param p1, "keyId"    # I
    .param p2, "valueIdOut"    # [I

    .prologue
    const/4 v3, 0x0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mKeyValueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    .local v1, "out":I
    const/4 v2, 0x0

    aput v1, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v2, 0x1

    .end local v1    # "out":I
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 139
    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "line":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    if-nez v4, :cond_2

    .line 126
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    move-object v0, v1

    .line 131
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_3
    return v7

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot open file, path = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 89
    goto :goto_3

    .line 104
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_3

    .line 106
    const-string v8, "    --> it\'s a comment"

    invoke-direct {p0, v8}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 119
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 120
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "exception during parsing"

    invoke-direct {p0, v8}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "tokens":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 113
    const/4 v8, 0x0

    aget-object v3, v5, v8

    .line 114
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v6, v5, v8

    .line 115
    .local v6, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mRules:Lcom/gsma/services/addon/ConfigUtil$IRules;

    iget-object v9, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->mKeyValueMap:Ljava/util/Map;

    invoke-interface {v8, v3, v6, v9}, Lcom/gsma/services/addon/ConfigUtil$IRules;->search(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 116
    const-string v8, "invalid rule line"

    invoke-direct {p0, v8}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;->debugPrint(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 129
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "tokens":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_2
.end method
