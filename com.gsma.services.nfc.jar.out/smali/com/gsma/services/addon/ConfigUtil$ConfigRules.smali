.class Lcom/gsma/services/addon/ConfigUtil$ConfigRules;
.super Ljava/lang/Object;
.source "ConfigUtil.java"

# interfaces
.implements Lcom/gsma/services/addon/ConfigUtil$IRules;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/addon/ConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigRules"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
    }
.end annotation


# instance fields
.field private mKeyValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 7
    .param p1, "rules"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules;->mKeyValueMap:Ljava/util/Map;

    .line 54
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 55
    .local v5, "rule":Ljava/lang/String;
    new-instance v3, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;

    invoke-direct {v3}, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;-><init>()V

    .line 56
    .local v3, "keyValue":Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
    invoke-virtual {v3, v5}, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules;->mKeyValueMap:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyValue":Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
    .end local v5    # "rule":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "keyValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/addon/ConfigUtil$ConfigRules;->mKeyValueMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;

    .line 64
    .local v1, "keyValue":Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
    invoke-virtual {v1}, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2}, Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;->get(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v2, 0x1

    .end local v1    # "keyValue":Lcom/gsma/services/addon/ConfigUtil$ConfigRules$KeyValue;
    :goto_0
    return v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method
