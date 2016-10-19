.class public Lcom/lenovo/datamining/avatar/api/LocalParamMap;
.super Ljava/lang/Object;
.source "LocalParamMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/datamining/avatar/api/LocalParamMap;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_NAME_LENGHT:I = 0x80

.field static final EXTRA_VALUE_LENGHT:I = 0x1000

.field static final PARAM_NAME_LENGHT:I = 0x80

.field static final PARAM_VALUE_LENGHT:I = 0x1000

.field static final TAG:Ljava/lang/String; = "LocalParamMap"


# instance fields
.field private mExtra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamName:[Ljava/lang/String;

.field private mParamValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap$1;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap$1;-><init>()V

    sput-object v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    .line 20
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    .line 20
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 30
    :cond_0
    return-void
.end method

.method private check(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "paramInt"    # I
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 157
    if-lez p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 158
    :cond_0
    const-string v1, "LocalParamMap"

    const-string v2, "index of custom parameter should greater than 5 or less than 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return v0

    .line 163
    :cond_1
    if-nez p2, :cond_2

    .line 164
    const-string v1, "LocalParamMap"

    const-string v2, "name of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    if-nez p3, :cond_3

    .line 169
    const-string v1, "LocalParamMap"

    const-string v2, "value of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private revise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I

    .prologue
    .line 176
    move-object v0, p1

    .line 179
    .local v0, "str1":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 180
    const-string v1, "LocalParamMap"

    const-string v2, "Each length of parameters value should less than 128 character, or will be CUT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 111
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    .line 112
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public clone()Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    .locals 7

    .prologue
    .line 37
    new-instance v3, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 38
    .local v3, "localParamMap":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v4, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 46
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->clone()Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 128
    if-lez p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 131
    const-string v0, ""

    .line 134
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 134
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 143
    if-lez p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 149
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_1
    return v1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public put(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "paramInt"    # I
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramInt2"    # I

    .prologue
    .line 57
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "paramString2":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public put(ILjava/lang/String;J)Z
    .locals 3
    .param p1, "paramInt"    # I
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramInt2"    # J

    .prologue
    .line 70
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "paramString2":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramString1"    # Ljava/lang/String;
    .param p3, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->check(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x80

    invoke-direct {p0, p2, v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    iget-object v1, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x1000

    invoke-direct {p0, p3, v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 98
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 99
    const/16 v0, 0x1000

    invoke-direct {p0, p2, v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 101
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putExtras(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mParamValue:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->mExtra:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 204
    :cond_0
    return-void
.end method
