.class Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/addon/ConfigUtil$ConfigRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyValue"
.end annotation


# instance fields
.field private mKeyId:I

.field private mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->mValueMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->mValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method id()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->mKeyId:I

    return v0
.end method

.method init(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 32
    const/4 v3, -0x1

    .line 33
    .local v3, "keyId":I
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "tokens":[Ljava/lang/String;
    aget-object v8, v7, v11

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v11

    .line 35
    .local v2, "key":Ljava/lang/String;
    aget-object v8, v7, v11

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->mKeyId:I

    .line 36
    aget-object v8, v7, v12

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 37
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v6, v0, v1

    .line 38
    .local v6, "token":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "t":[Ljava/lang/String;
    iget-object v8, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->mValueMap:Ljava/util/Map;

    aget-object v9, v5, v11

    aget-object v10, v5, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v5    # "t":[Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
