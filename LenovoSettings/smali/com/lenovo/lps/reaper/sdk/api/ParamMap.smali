.class public Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
.super Ljava/lang/Object;


# static fields
.field public static final PARAM_INDEX_1:I = 0x1

.field public static final PARAM_INDEX_2:I = 0x2

.field public static final PARAM_INDEX_3:I = 0x3

.field public static final PARAM_INDEX_4:I = 0x4

.field public static final PARAM_INDEX_5:I = 0x5

.field public static final SPECIAL_EXTRA_PARAM_CHANNEL:Ljava/lang/String; = "SPECIAL_CHANNEL"

.field public static final SPECIAL_EXTRA_PARAM_TOKEN:Ljava/lang/String; = "SPECIAL_TOKEN"

.field public static final SPECIAL_EXTRA_PARAM_VCODE:Ljava/lang/String; = "SPECIAL_V_CODE"

.field public static final SPECIAL_EXTRA_PARAM_VNAME:Ljava/lang/String; = "SPECIAL_V_NAME"

.field private static final TAG:Ljava/lang/String; = "ParamMap"


# instance fields
.field private extraParams:Ljava/util/Map;

.field private name:[Ljava/lang/String;

.field private value:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->extraParams:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildJSONArray(Lorg/json/JSONArray;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "arrs"    # Lorg/json/JSONArray;

    .prologue
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private buildParamtoString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;
    .locals 6
    .param p1, "paramMap"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x1

    :goto_0
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    :try_start_0
    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extra"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putString(Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putString(Lorg/json/JSONArray;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v4, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->buildJSONArray(Lorg/json/JSONArray;Ljava/util/Map$Entry;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ParamMap"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static buildStringtoParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-le v1, v0, :cond_3

    :cond_0
    const-string v0, "extra"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_4

    :cond_1
    :goto_3
    return-object v2

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v6, v7}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ParamMap"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private check(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lt p1, v1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    :cond_0
    const-string v2, "ParamMap"

    const-string v3, "index of custom parameter should greater than %s and less than %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    const-string v1, "ParamMap"

    const-string v2, "name of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    const-string v1, "ParamMap"

    const-string v2, "value of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private putString(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p1, "arrs"    # Lorg/json/JSONArray;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-void
.end method

.method private revise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    const-string v0, "ParamMap"

    const-string v1, "Each length of parameters value should less than 128 character, or will be CUT"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->extraParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public copy()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 5

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->extraParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public getExtraParams()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->check(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/16 v2, 0x80

    invoke-direct {p0, p2, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/16 v2, 0x1000

    invoke-direct {p0, p3, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ParamMap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParamMap.put Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-direct {p0, p2, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->extraParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putExtras(Ljava/util/Map;)V
    .locals 3

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->buildParamtoString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
